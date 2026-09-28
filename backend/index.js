const express = require("express");

const app = express();

const PORT = 5000;

app.get("/", (req, res) => {
    res.send("TaskApp backend is running!");
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Backend running on port ${PORT}`);
});
