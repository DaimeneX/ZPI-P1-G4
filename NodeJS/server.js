const express = require('express');
const app = express();
const sql = require('mssql');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
app.use(bodyParser.json());
var accessTokenSecret = ""

function GenerateSecret() {
    var NewSecret = ((Math.random() + 16).toString(36).substring(7)+(Math.random() + 16).toString(36).substring(7)+(Math.random() + 16).toString(36).substring(7))
    accessTokenSecret = NewSecret
    module.exports = accessTokenSecret;
}
setInterval(GenerateSecret, 120000);
GenerateSecret()
console.log(accessTokenSecret)

var sqlConfig = require('./sqlconfig.js');
var server = app.listen(8081, function () {
    var port = server.address().port
    console.log("Aplikacja nasłuchuje na: http://localhost:%s", port)
});

const authenticateJWT = (req, res, next) => {
    const authHeader = req.headers.authorization;

    if (authHeader) {
        const token = authHeader.split(' ')[1];

        jwt.verify(token, accessTokenSecret, (err, user) => {
            if (err) {
                return res.end('Forbidden');
            }

            req.user = user;
            next();
        });
    } else {
        res.end('Unauthorized');
    }
};


app.post('/Rejestracja', function (req, res) {
    const { username, nazwisko, password, email} = req.body
    let buff = new Buffer.from(password, 'base64');
    let passwordDecoded = buff.toString('ascii');

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserName', username)
        request.input('UserNazwisko', nazwisko)
        request.input('Password', passwordDecoded)
        request.input('Email', email)
        request.execute('dbs_Parkingowy_Klient_Create', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        });
    });
})

app.post('/Login', function (req,res ) {
    const { email, password } = req.body;
    let buff = new Buffer.from(password, 'base64');
    let passwordDecoded = buff.toString('ascii');

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('Email', email)
        request.input('Password', passwordDecoded)
        request.execute('dbs_Parkingowy_Klient_Login', function(err, recordset) {
            if (err) console.log(err);

            var StatusLogowania = (JSON.stringify(recordset.recordset[0].StatusLogowania))
            var UserId = (recordset.recordset[0].UserId)
            if (StatusLogowania = "200") {
            const accessToken = jwt.sign({ UserId }, accessTokenSecret);

            res.send(JSON.stringify({Token: accessToken}));
        }
            else {
                res.send(JSON.stringify({Status: "400"}));
            }

        });
    });
})

app.get('/GetMiejsca', authenticateJWT, function (req, res) {
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.execute('dbs_Parkingowy_MiejscaWolne', function(err, recordset) {
            if (err) console.log(err);

            res.send(JSON.stringify(recordset.recordset));
        });
    });
})

app.post('/ZapiszKoordynaty', function (req, res) {
    const {KordX, KordY, UserId} = req.body
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserKoordynatyX', KordX)
        request.input('UserKoordynatyY', KordY)
        request.input('UserId', UserID)
        request.execute('dbs_Parkingowy_Klient_ZapiszKoordAuta', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})

app.post('/Wjazd', function (req, res) {
    const UserId = req.body
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', UserId)
        request.execute('dbs_Parkingowy_Klient_Wjazd', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})

app.post('/Odjazd', function (req, res) {
    const UserId = req.body
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', UserId)
        request.execute('dbs_Parkingowy_Klient_Odjazd', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})