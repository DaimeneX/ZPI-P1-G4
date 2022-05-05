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
        request.query("EXEC dbs_Parkingowy_MiejscaWolne", function(err, recordset) {
            if(err) console.log(err);
            res.end(JSON.stringify(recordset)); // Result in JSON format
        });
    });
})
