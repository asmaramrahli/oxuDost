const express = require('express');
const router = express.Router();

router.get('/', (req, res, next) => {
    res.status(200).json({
        message: 'Handling GET requrest to /books'
    });
});

router.post('/', (req, res, next) => {
    const book = {
        name: req.body.name,
        author: req.body.author
    };
    res.status(201).json({
        message: 'Handling POST requrest to /books',    
        createdBook: book
    });
});

router.get('/:bookId', (req, res, next) => {
    const id =req.params.bookId;
    var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "oxu_dost",
  database: "oxu_dost"
});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT Content FROM BookContent", function (err, result, fields) {
    if (err) throw err;
    console.log(result[id], );
  });
});

var ieEDGE = navigator.userAgent.match(/Edge/g);
var ie = navigator.userAgent.match(/.NET/g); // IE 11+
var oldIE = navigator.userAgent.match(/MSIE/g); 
var bytes = new Uint8Array(res); //use this if data is raw bytes else directly pass resData
var blob = new window.Blob([bytes], { type: 'application/pdf' });

if (ie || oldIE || ieEDGE) {
   window.navigator.msSaveBlob(blob, result[id]);
}
else {
   var fileURL = URL.createObjectURL(blob);
   var win = window.open();
   win.document.write('<iframe src="' + fileURL + '" frameborder="0" style="border:0; top:0px; left:0px; bottom:0px; right:0px; width:100%; height:100%;" allowfullscreen></iframe>')

}

    if (id === 'sprecial') {
        res.status(200).json({
            message: 'you discovered the special ID',
            id: id
        });
    } else {
        req.status(200).json({
            message:'handled'
        });
    }
});


router.patch('/:bookId', (req, res, next) => {
    res.status(200).json({
        message: 'Updated book!'
    });
}) ;

router.delete('/:bookId', (req, res, next) => {
    res.status(200).json({
        message: 'Deleted book!'
    });
}) ;


module.exports = router;

