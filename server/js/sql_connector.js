const mysql = require('mysql');
const pool = mysql.createPool({
    connectionLimit:10,
    password:'',
    user:'root',
    database:'sheggsme',
    host:'localhost',
    port:'3306'
})

let database = {};
database.getProjects = () =>{
    return new Promise((resolve,reject) => {
        pool.query("SELECT * FROM projects",(err,res)=>{
            if(err){
                return reject(err);
            }
            return resolve(res);
        });
    });
};
database.Query =(query) =>{
    return new Promise ((res,rej) => {
        pool.query("SELECT * FROM projects WHERE project_name LIKE \"%" + query + "%\"",(err,resp) =>{
            if(err){
                return rej(err);
            }
            return res(resp);
        })
    });
};
module.exports = database;
