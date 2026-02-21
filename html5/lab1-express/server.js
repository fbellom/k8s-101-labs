const express = require("express");
const os = require("os");

const app = express();
const port = process.env.PORT || 3000;

app.get("/", (_req, res) => {
  res
    .type("text/plain")
    .send(
      `Hello from Express!\n` +
        `Hostname: ${os.hostname()}\n` +
        `Time: ${new Date().toISOString()}\n`,
    );
});

app.get("/health", (_req, res) => {
  res.json({ status: "ok" });
});

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});
