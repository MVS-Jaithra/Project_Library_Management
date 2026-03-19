# 📚 LibraVault — Library Management System

A full-stack Library Management System built with **Flask**, **MySQL**, and vanilla **HTML/CSS/JS**.

---

## 📁 Project Structure

```
library_management/
├── app.py                  # Flask backend (all routes & logic)
├── requirements.txt        # Python dependencies
├── schema.sql              # MySQL schema (optional manual setup)
└── templates/
    ├── base.html           # Shared layout & styles
    ├── login.html          # Login page (Student / Staff)
    ├── register.html       # Registration page
    ├── student_dashboard.html
    ├── staff_dashboard.html
    ├── books.html          # Book listing (shared, role-aware)
    └── add_book.html       # Add / Edit book form
```

---

## ⚙️ Setup Instructions

### 1. Prerequisites
- Python 3.8+
- MySQL Server running locally
- pip

---

### 2. Install Python Dependencies

```bash
cd library_management
pip install -r requirements.txt
```

---

### 3. Configure MySQL

Open `app.py` and update the `DB_CONFIG` block at the top:

```python
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': 'password',   # ← change this
    'database': 'library_db'
}
```

> The database and all tables are **created automatically** when you run `app.py` for the first time (`init_db()` is called on startup).

Alternatively, you can run `schema.sql` manually in MySQL Workbench or CLI:

```bash
mysql -u root -p < schema.sql
```

---

### 4. Run the Application

```bash
python app.py
```

The app will start at: **http://127.0.0.1:5000**

---

## 🚀 Using the App

### Register
1. Go to **http://127.0.0.1:5000**
2. Click **"Register here"**
3. Choose a role (Student or Staff), enter a username and password
4. Your account is saved to the database — login immediately

### Student Features
- View all books in the library
- Search by title or author
- See book details (title, author, quantity)

### Staff Features
- Add new books to the database
- View all books
- Edit book details (title, author, quantity)
- Delete books

---

## 🛡️ Security Notes
- Passwords are hashed with **SHA-256** before storage
- Sessions are used for authentication
- Role-based route protection (students can't access staff routes and vice-versa)

---

## 🗄️ Database Schema

| Table      | Columns                                      |
|------------|----------------------------------------------|
| `students` | student_id, username, password               |
| `staff`    | staff_id, username, password                 |
| `books`    | book_id, title, author, quantity             |

---

## 🧰 Tech Stack

| Layer    | Technology                  |
|----------|-----------------------------|
| Frontend | HTML, CSS, JavaScript       |
| Backend  | Python, Flask               |
| Database | MySQL + mysql-connector-python |
