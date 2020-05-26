## source - https://www.spotify.com/in/download/linux/

# You will first need to configure our debian repository:

curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Then you can install the Spotify client:

sudo apt-get update -y

sudo apt-get install spotify-client -y