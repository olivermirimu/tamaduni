const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");
const morgan = require("morgan");
const path = require("path");

const app = express();
const port = process.env.PORT || 2500;
const MONGODB_URI = process.env.MONGODB_URI || "mongodb://localhost/tamaduni";

app.use(cors());

// configure db
const db = mongoose.connect(MONGODB_URI, (_err) =>
  _err ? console.log(_err) : console.log("DB Connected succesfully")
);
mongoose.connection;

app.use(morgan("tiny"));
app.use(express.json());

// making static files available
app.use(express.static(path.join(__dirname, "/static")));

// configure routes
app.use(require("./routes"));

app.listen(port, () => console.log("App listening on port " + port));
