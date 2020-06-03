## Source - https://code.visualstudio.com/docs/setup/linux

# add the repository and key 

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'


# update the package cache and install the package

sudo apt-get install apt-transport-https -y
sudo apt-get update -y
sudo apt-get install code -y  # or code-insiders

# Fix error - "Visual Studio Code is unable to watch for file changes in this large workspace" (error ENOSPC)

echo 'fs.inotify.max_user_watches=524288' | sudo tee -a  /etc/sysctl.conf
sudo sysctl -p