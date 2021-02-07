var express = require('express');
var server = express();
server.use(express.static('./'));
const opt = { root: __dirname };
server.get('/', (req, res) => {
    res.send("Please specify a file to observer...");
});
server.get("/README.md", (req, res) => {
    res.sendFile("./README.md", opt);
});
server.get("/install/install_pypass.sh", (req, res) => {
    res.sendFile("./install/install_pypass.sh", opt);
})
server.listen(3000, () => {
    console.log("Listening on port 3000...");
});

