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
setInterval(GenerateSecret, 300000);
GenerateSecret()

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
                return res.end(JSON.stringify({Status: "401", Text: "Twój status autoryzacji jest niepoprawny lub wygasł."}));
            }

            req.user = user;
            next();
        });
    } else {
        res.end(JSON.stringify({Status: "403", Text: "Zakaz wstepu"}));
    }
};


app.post('/Rejestracja', function (req, res) {
    const { username, imie, nazwisko, password, email} = req.body
    let buff = new Buffer.from(password, 'base64');
    let passwordDecoded = buff.toString('ascii');

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserName', username)
        request.input('UserImie', imie)
        request.input('UserNazwisko', nazwisko)
        request.input('Password', passwordDecoded)
        request.input('Email', email)
        request.execute('dbs_Parkingowy_Klient_Create', function(err, recordset) {
            if (err) console.log(err);

            console.log(recordset.recordset)
            res.send(JSON.stringify(recordset.recordset));
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
            var StatusLogowania = (recordset.recordset[0].Status)
            const UserStat = (recordset.recordset[0].UserStatus)
            if (StatusLogowania === "200") {
                var UserId = (recordset.recordset[0].UserId)
            const accessToken = jwt.sign({ UserId }, accessTokenSecret);

            res.send(JSON.stringify({Status: "200", UserStatus: UserStat, Token: accessToken}));
        }
            else {
                res.send(JSON.stringify({Status: "400", Text: "Zły login lub hasło"}));
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

app.post('/ZapiszKoordynaty', authenticateJWT, function (req, res) {
    var UserId_Header = req.headers.authorization
    var UserId_Base64 = UserId_Header.split('.')[1]
    var buff = new Buffer.from(UserId_Base64, 'base64')
    var UserId_Decoded = buff.toString('ascii')
    var UserId_JSON = JSON.parse(UserId_Decoded)

    const {UserKoordynatyX, UserKoordynatyY} = req.body
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserKoordynatyX', UserKoordynatyX)
        request.input('UserKoordynatyY', UserKoordynatyY)
        request.input('UserId', UserId_JSON.UserId)
        request.execute('dbs_Parkingowy_Klient_ZapiszKoordAuta', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})

app.post('/OdczytajKoordynaty', authenticateJWT, function (req, res) {
    
    var UserId_Header = req.headers.authorization
    var UserId_Base64 = UserId_Header.split('.')[1]
    var buff = new Buffer.from(UserId_Base64, 'base64')
    var UserId_Decoded = buff.toString('ascii')
    var UserId_JSON = JSON.parse(UserId_Decoded)

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', UserId_JSON.UserId)
        request.execute('dbs_Parkingowy_Klient_OdczytajKoordAuta', function(err, recordset) {
            if (err) console.log(err);

            res.send(recordset.recordset);
        })
    })
})

app.get('/Wjazd', authenticateJWT, function (req, res) {
    var UserId_Header = req.headers.authorization
    var UserId_Base64 = UserId_Header.split('.')[1]
    var buff = new Buffer.from(UserId_Base64, 'base64')
    var UserId_Decoded = buff.toString('ascii')
    var UserId_JSON = JSON.parse(UserId_Decoded)

    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', UserId_JSON.UserId)
        request.execute('dbs_Parkingowy_Klient_Wjazd', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})

app.get('/Odjazd', authenticateJWT, function (req, res) {
    var UserId_Header = req.headers.authorization
    var UserId_Base64 = UserId_Header.split('.')[1]
    var buff = new Buffer.from(UserId_Base64, 'base64')
    var UserId_Decoded = buff.toString('ascii')
    var UserId_JSON = JSON.parse(UserId_Decoded)
    sql.connect(sqlConfig, function() {
        var request = new sql.Request();
        request.input('UserId', UserId_JSON.UserId)
        request.execute('dbs_Parkingowy_Klient_Odjazd', function(err) {
            if (err) console.log(err);

            res.send(JSON.stringify({Status: 200}));
        })
    })
})