const express = require('express');
const router = express.Router();
const connection = require('./connection');


router.get('/', (req, res, next) => {

    
   connection.connectToDatabase().query("SELECT * FROM teachers ", function (err, result) {
       

        if (err) throw err;


        res.status(200).json({

            message: 'Teachers were fetched',
           
        });
        res.send(result);

    });
});

router.post('/', (req, res, next) => {
    const teacher = {

        name: req.body.name,
        lastname: req.body.lastname,
        school: req.body.school,
        email: req.body.email
    }

    var con=connection.connectToDatabase();

    var sql= `INSERT INTO teachers (firstname, lastname, school, password, email) VALUES 
    (${req.body.name},'"+req.body.lastname','req.body.school','000', 'req.body.email')`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        console.log("1 record inserted");
      });


    res.status(201).json({
        message: 'Teacher was created',
        teacher: teacher
    });
});

router.get('/:teacherId', (req, res, next) => {
    connection.connectToDatabase();
    const id = req.params.teacherId;
    req.status(200).json({
        message: 'Teacher details',
        teacherId: req.params.teacherId
    });

});


router.patch('/:teacherId', (req, res, next) => {
    connection.connectToDatabase();
    res.status(200).json({
        message: 'Updated teacher details!'
    });
});

router.delete('/:teacherId', (req, res, next) => {
    connection.connectToDatabase();
    res.status(200).json({
        message: 'Deleted teacher!'
    });
});


module.exports = router;

