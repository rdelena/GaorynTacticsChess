const express = require("express");
const app = express();
const port = process.env.PORT || 4001;
const routes = require("./routes");

app.use(express.json());
app.use(routes);

app.get("/", (req, res) => {
  res.send("Welcome to our server!");
});

app.listen(port, () => console.log(`Listening on port ${port}`));
