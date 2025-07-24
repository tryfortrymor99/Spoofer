const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("📞 Call Spoofing Server is Running via Render!");
});

app.listen(PORT, () => {
  console.log(`✅ Server is live on port ${PORT}`);
});
