const express = require("express");
const path = require("path");

const server = express();
server.set("port", process.env.PORT || 3000);

//Static Files
server.use(express.static(path.join(__dirname, "/public")));

server.listen(server.get("port"), function () {
  console.log(
    "Static Server started" + Date() + " at port : " + server.get("port")
  );
});
