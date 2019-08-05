const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const routes = require('express').Router();


routes.get('/',(req,res) =>{
    res.send();
})
module.exports = routes;