const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

const router = express.Router();
app.use(function(req, res, next) {
    console.log("Reacherd")
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
  });
//   app.use(function(req, res, next){
//     res.status(404);
  
//     // respond with html page
//     if (req.accepts('html')) {
//       res.send("Access Denied");
//       return;
//     }
  
//     // respond with json
//     if (req.accepts('json')) {
//       res.send({ error: 'Not found' });
//       return;
//     }
  
//     // default to plain-text. send()
//     res.type('txt').send('Not found');
//   });
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));

app.use('/',require('./routes/testingapi'));

app.listen(81, () =>{
    console.log("Server Started");
})
