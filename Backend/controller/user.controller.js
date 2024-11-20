const userService = require("../services/user.services");

exports.register = async(req,res,next)=>{
    try{

        const {name,email,password} = req.body;
        const userSuccess = await userService.registerUser(name,email,password);
        

        res.json({status:true,success:"User Registered Successfully"});
    }catch(err){
        throw err;
    }
};