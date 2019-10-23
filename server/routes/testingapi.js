const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const routes = require('express').Router();
const database = require('../js/sql_connector');

routes.get('/api', async (req,res) =>{
    console.log("ping")

    let response = (await database.getProjects());
    res.json(response);
})
routes.get('/api/query/:data', async (req,res) =>{
    let search_data = req.params.data;
    jsonObject = (await database.Query(search_data))
    res.json(jsonObject)
})
module.exports = routes;