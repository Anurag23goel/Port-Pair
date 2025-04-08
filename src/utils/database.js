import mysql from "mysql2/promise";
import fs from "fs";
import path from "path";

export const pool = mysql.createPool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT) || 3306, // Ensure port is a number
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  connectTimeout: 30000, // 30 seconds timeout
  ssl: {
    ca: fs.readFileSync(path.join(process.cwd(), "certificates/ca.pem")), // Correct path from root
    rejectUnauthorized: true,
  },
});

export const connectPool = async () => {
  try {
    const connection = await pool.getConnection();
    console.log("Database connected successfully");
    connection.release();
  } catch (err) {
    console.error("Database connection failed:", err);
    throw err; // Throw to handle in the calling function
  }
};

export default connectPool;