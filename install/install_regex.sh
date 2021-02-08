echo 'Beginning regex installation...'
cd ~ || exit
mkdir '.install_regex_temp'
cd '.install_regex_temp' || exit
curl -o regex.py localhost:3000/clitools/python/regex.py
curl -o regex.sh localhost:3000/clitools/bash/regex.sh
mkdir '../.cli_installs'
mkdir '../.cli_installs/python'
mv './regex.py' '../.cli_installs/python/regex.py'
mv './regex.sh' ~/bin/regex
chmod 777 ~/bin/regex
echo 'Cleaning up...'
cd '..'
rm -r './.install_regex_temp/'
echo 'Installation Complete...'
