import express from "express";
import cors from "cors";
import pg from "pg";

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

// connect to bookstore database
const db = new pg.Client({
    host: "localhost",
    database: "online_bookstore",
    port: 5432,
});

db.connect();

// check backend is running
app.get("/", (req, res) => {
    res.send("Online Bookstore backend is running!");
});

// get every book from database
app.get("/books", async (req, res) => {
    try {
        const result = await db.query("SELECT * FROM books ORDER BY id");
        res.json(result.rows);
    } catch (error) {
        console.log(error);
        res.status(500).send("Error getting books");
    }
});

// get one book from database
app.get("/books/:id", async (req, res) => {
    try {
        const result = await db.query("SELECT * FROM books WHERE id = $1", [req.params.id]);

        if (result.rows.length === 0) {
            res.status(404).send("Book not found");
        } else {
            res.json(result.rows[0]);
        }
    } catch (error) {
        console.log(error);
        res.status(500).send("Error getting book");
    }
});

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
