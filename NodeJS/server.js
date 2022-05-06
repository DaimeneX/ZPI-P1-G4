var express = require('express');
var app = express();
var sql = require('mssql');

// Connection string parameters.
var sqlConfig = require('./sqlconfig.js');
var server = app.listen(8081, function () {
    var host = server.address().address
    var port = server.address().port
    console.log("Aplikacja nasłuchuje na: http://localhost:%s", port)
});

app.get('/GetMiejsca', function (req, res) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.execute('dbs_Parkingowy_MiejscaWolne', function(err, recordset) {
            if (err) console.log(err);

            res.end(JSON.stringify(recordset.recordset));
        });
    });
})

app.get('/Rejestracja/:username/:nazwisko/:password/:email', function (req, res) {
    let buff = new Buffer.from(req.params.password, 'base64');
    let password = buff.toString('ascii');

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserName', req.params.username)
        request.input('UserNazwisko', req.params.nazwisko)
        request.input('Password', password)
        request.input('Email', req.params.email)
        request.execute('dbs_Parkingowy_CreateUser', function(err) {
            if (err) console.log(err);

            res.end(JSON.stringify({Status: 200}));
        });
    });
})

app.get('/ZapiszKoordynaty/:KordX/:KordY/:UserID', function (req, res) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserKoordynatyX', req.params.KordX)
        request.input('UserKoordynatyY', req.params.KordY)
        request.input('UserId', req.params.UserID)
        request.execute('dbs_Parkingowy_Klient_ZapiszKoordAuta', function(err) {
            if (err) console.log(err);

            res.end(JSON.stringify({Status: 200}));
        })
    })
})

app.get('/Wjazd/:UserId', function (req, res) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', req.params.UserId)
        request.execute('dbs_Parkingowy_Klient_Wjazd', function(err) {
            if (err) console.log(err);

            res.end(JSON.stringify({Status: 200}));
        })
    })
})
app.get('/Odjazd/:UserId', function (req, res) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', req.params.UserId)
        request.execute('dbs_Parkingowy_Klient_Odjazd', function(err) {
            if (err) console.log(err);

            res.end(JSON.stringify({Status: 200}));
        })
    })
})