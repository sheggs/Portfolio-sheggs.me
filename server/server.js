const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();

const router = express.Router();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));

app.use('/',require('./routes/testingapi'));

app.listen(81, () =>{
    console.log("Server Started");
})
