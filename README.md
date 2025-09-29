# ENGSE219-Lab10-WebAPI  Lab10 - Web API (Node.js + MySQL + XAMPP)

## 👨‍💻 รายละเอียดงาน
โปรเจ็กต์นี้เป็น Web API สินค้า ทำด้วย **Node.js + MySQL (XAMPP)**  
มีการทำงาน CRUD (Create, Read, Update, Delete) ข้อมูลสินค้า 

---

## ⚙️ การติดตั้งและใช้งาน
1. เปิด **XAMPP Control Panel** → Start MySQL  
2. Import ฐานข้อมูลจากไฟล์ `products.sql`  
3. ติดตั้ง dependencies
   ```bash
   npm install
   ```
4. รัน server
   ```bash
   node server.js
   ```
5. เข้าใช้งาน API ที่:
   ```bash
   http://localhost:3000/api/products
   ```
---
## 🔗 API Endpoints
```bash
GET /api/products → ดูสินค้าทั้งหมด 
GET /api/products/:id → ดูสินค้าเฉพาะ ID 
POST /api/products → เพิ่มสินค้าใหม่ 
PUT /api/products/:id → แก้ไขสินค้า 
DELETE /api/products/:id → ลบสินค้า 
```
---
##  📂 โครงสร้างไฟล์
   ```bash
#ENGSE219-LAB10-WEBAPI/
├── models/
│   └── db.js            # เชื่อมต่อ MySQL
├── routes/
│   └── products.js      # CRUD API
├── server.js            # main server
├── package.json
├── package-lock.json
├── products.sql         # ฐานข้อมูล (export)
└── README.md 
   ```
