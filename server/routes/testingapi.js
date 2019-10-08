const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const routes = require('express').Router();
const database = require('../js/sql_connector');

routes.get('/', async (req,res) =>{
    let res2 = await database.getProjects();
    console.log(res2);
    console.log("_______________-")
    console.log(await database.Query("S"))
    res.send(res2);
})
routes.get('/api/:data', async (req,res) =>{
    let search_data = req.params.data;
    res.send(await database.Query(search_data))
})
module.exports = routes;