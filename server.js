const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(bodyParser.json());

// Routes
const productRoutes = require("./routes/products");
app.use("/api/products", productRoutes);

app.listen(3000, () => {
  console.log("🚀 API running at http://localhost:3000/api/products");
});
