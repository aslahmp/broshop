const db = require('../model')
const Admin = db.admin;
const Op = db.Sequelize.Op;
class LoginController {
    async login(req,res){
        try {
            var user=await  Admin.findOne({
                where: {
                    email:req.body.email,
                },
            })
            if(user!= null) {
                if(user.password==req.body.password){
                    res.send({ data: user.email });
                }else{
                    res.status(500).send({
                        message:
                            'Invalid User'
                    });
                }

               
               }else{
                res.status(500).send({
                    message:
                        'Invalid User'
                });
               }

        } catch (error) {
            
        }
        
    }

}
module.exports = new LoginController();