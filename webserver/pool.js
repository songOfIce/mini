const mysql = require("mysql");

var pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "xm",
    connectionLimit: 15
});
module.exports = pool;