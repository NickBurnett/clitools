echo 'Beginning rgb installation...'
cd ~ || exit
mkdir '.install_rgb_temp'
cd '.install_rgb_temp' || exit
curl -o 'rgb.py' 192.168.1.92:3000/clitools/python/rgb.py
curl -o 'rgb.sh' 192.168.1.92:3000/clitools/bash/rgb.sh
mkdir '../.cli_installs'
mkdir '../.cli_installs/python'
mv './rgb.py' '../.cli_installs/python/rgb.py'
mv './rgb.sh' ~/bin/rgb
chmod 777 ~/bin/rgb
echo 'Cleaning up...'
cd '..'
rm -r './.install_rgb_temp/'
echo 'Installation Complete...'
