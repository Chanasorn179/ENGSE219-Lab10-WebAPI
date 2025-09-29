const express = require("express");
const router = express.Router();
const db = require("../models/db");

// GET: สินค้าทั้งหมด
router.get("/", (req, res) => {
  db.query("SELECT * FROM products", (err, results) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(results);
  });
});

// GET: สินค้า 1 รายการ
router.get("/:id", (req, res) => {
  const { id } = req.params;
  db.query("SELECT * FROM products WHERE id=?", [id], (err, result) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json(result[0]);
  });
});

// POST: เพิ่มสินค้า
router.post("/", (req, res) => {
  const { name, category, price, stock, description, image } = req.body;
  db.query(
    "INSERT INTO products (name, category, price, stock, description, image) VALUES (?, ?, ?, ?, ?, ?)",
    [name, category, price, stock, description, image],
    (err, result) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "✅ Product added", id: result.insertId });
    }
  );
});

// PUT: อัปเดตสินค้า
router.put("/:id", (req, res) => {
  const { id } = req.params;
  const { name, category, price, stock, description, image } = req.body;
  db.query(
    "UPDATE products SET name=?, category=?, price=?, stock=?, description=?, image=? WHERE id=?",
    [name, category, price, stock, description, image, id],
    (err) => {
      if (err) return res.status(500).json({ error: err.message });
      res.json({ message: "✏️ Product updated" });
    }
  );
});

// DELETE: ลบสินค้า
router.delete("/:id", (req, res) => {
  const { id } = req.params;
  db.query("DELETE FROM products WHERE id=?", [id], (err) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json({ message: "🗑️ Product deleted" });
  });
});

module.exports = router;
