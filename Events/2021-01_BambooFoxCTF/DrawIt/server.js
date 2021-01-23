var express = require("express");
const http = require("http");
var cookieParser = require("cookie-parser");

var app = express();
app.use(cookieParser("flag{secret}"));

app.get("/", function (req, res) {
  const { url } = req.query;

  console.log("Query url: ", url);
  console.log("  ", url.length);
  console.log("  ", new Set(url).size);
  console.log("");

  if (!url || typeof url !== "string") return res.send("not string");

  // no duplicate characters in `url`
  if (url.length !== new Set(url).size) return res.send("count not good");

  try {
    http
      .get(url, (resp) => {
        resp.setEncoding("utf-8");
        resp.statusCode === 200
          ? resp.on("data", (data) => res.send(data))
          : res.send(":(");
      })
      .on("error", (err) => res.send(`error in get? ${err}`));
  } catch (error) {
    res.send(`WTF? ${error}`);
  }
});
app.get("/ab", function (req, res) {
  res.send("found");
});

app.listen(8080);
