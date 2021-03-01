exports.connectToDatabase = function () {
  
    
var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Ali1_4maR",
    database: "oxu_dost",
    port: "3306"
});

con.connect(function(err) {
    console.log('Connected!')
    if (err) throw err;
});

 return con; 
}