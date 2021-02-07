echo 'Beginning pypass installation...'
cd ~
mkdir '.install_pypass_temp'
cd '.install_pypass_temp'
curl -o passgen.py localhost:3000/clitools/python/passgen.py
mkdir '../.cli_installs'
mkdir '../.cli_installs/python'
mv './passgen.py' '../.cli_installs/python/passgen.py'
echo 'Cleaning up...'
cd '..'
rm -r './.install_pypass_temp/'
echo 'Installation Complete...'
rm './install_pypass.sh'
