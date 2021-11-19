const router = require("express").Router();

router.get("/", (req, res) => {
  res.send("Server is up");
});

// 404 error responses on all routes
router.route("/*", (req, res) => {
  res.send("<h1>404 Error</h1>");
});

module.export = router;
