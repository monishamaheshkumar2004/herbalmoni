const mongoose = require('mongoose');


const connection = mongoose.createConnection('mongodb+srv://monisha:Monisha%402004@herbalhub.mk6ge.mongodb.net/HerbalHub').on('open',()=>{
    console.log('connected to database');
}).on('error',()=>{
    console.log("Error in connection");
});

module.exports = connection;