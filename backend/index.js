const express = require("express")
const os = require('os')
const cors = require("cors")

const app = express()
const PORT = 4000

app.use(cors())

app.get('/',(req,res) =>{
    res.status(200).json("hello ismail")
})


app.listen(PORT,() =>{
    console.log(`Port is running ${PORT}`)
})
