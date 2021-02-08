echo 'Beginning pypass installation...'
cd ~ || exit
mkdir '.install_passgen_temp'
cd '.install_passgen_temp' || exit
curl -o passgen.py localhost:3000/clitools/python/passgen.py
curl -o passgen.sh localhost:3000/clitools/bash/passgen.sh
mkdir '../.cli_installs'
mkdir '../.cli_installs/python'
mv './passgen.py' '../.cli_installs/python/passgen.py'
mv './passgen.sh' ~/bin/passgen
chmod 777 ~/bin/passgen
echo 'Cleaning up...'
cd '..'
rm -r './.install_passgen_temp/'
echo 'Installation Complete...'
