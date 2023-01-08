const express = require('express')
const app = express()
const port = 3000
bodyParser = require("body-parser")
var cors = require('cors')
app.use(cors());
app.use(bodyParser.json())
const db = require("./app/model/index.js")

db.sequelize.sync({
    // force: true
})
    .then(() => {
        console.log("Synced db.");
    })
    .catch((err) => {
        console.log("Failed to sync db: " + err.message);
    });
const userController = require('./app/controller/user.controller')
app.post('/loanRepayment', function (req, res) {
    loanRepaymentController.add(req, res)
})


app.get('/', (req, res) => res.send('Hello World!'))
app.get('/user/:id', function (req, res) {
   userController.get(req,res)
    }   )
app.post('/user', function (req, res) {
    userController.add(req, res)
})
app.listen(port, () => console.log(`Example app listening on port ${port}!`)) 
