const express = require('express');
const server = express();
server.use(express.static('./bash/'));
server.use(express.static('./install/'))
const opt = { root: __dirname };
const file_list = [
    "/README.md",
    "/install/install_profile.sh",
    "/install/install_passgen.sh",
    "/clitools/python/passgen.py",
    "/clitools/python/regex.py",
    "/clitools/python/rgb.py",
    "/clitools/bash/passgen.sh",
    "/clitools/bash/regex.sh",
    "/clitools/bash/rgb.sh"
];
for (let file in file_list) {
    server.get(file, (req, res) => {
        res.sendFile(file, opt);
    });
}
server.listen(3000, () => {
    console.log("Listening on port 3000...");
});

