## Ubuntu - 18.04


## install gitlab-runner

sudo apt-get update -y
sudo apt-get install gitlab-runner -y
gitlab-runner --version
sudo systemctl enable gitlab-runner
sudo service gitlab-runner enable

## 'gitlab-runner' user created by default

## add 'gitlab-runner' to sudo doers

sudo echo 'gitlab-runner ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

## add 'gitlab-runner' to docker group

sudo usermod -aG docker gitlab-runner

echo 'gitlab-runner is now setup. pl run `gitlab-runner register` to register your project'
