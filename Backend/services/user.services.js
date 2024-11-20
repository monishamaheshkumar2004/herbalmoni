const UserModel = require("../model/user.model");

class userService{
    static async registerUser(email,password){
            
            // register user
            try{
                const createUser = new UserModel({email,password});
                return await createUser.save();
            }catch(err){
                    throw(err);
            }
    }
}
module.exports = userService;