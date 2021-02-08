echo 'Beginning profile installation...'
cd ~ || exit
mkdir './.install_profile_temp/'
cd './.install_profile_temp/'
curl -o 'profile.txt' localhost:3000/clitools/bash/profile
cat 'profile.txt' >> ~/.bash_profile
echo 'Cleaning Up...'
cd '..'
rm -r './.install_profile_temp/'
echo 'Installation Complete...'
