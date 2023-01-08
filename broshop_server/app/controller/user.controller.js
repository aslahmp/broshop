const db = require('../model')
const Users = db.user;
const Op = db.Sequelize.Op;
class UserController {
    async add(req, res) {
        console.log(req.body);
        var body=req.body;
        const user = {
            name:body.name,
            email:body.email,
            imageUrl:body.imageUrl
        }
      var count=await  Users.findOne({
            where: {
                email:body.email,
            }
        })
  
        if (count != null) {

         res.send({ id: count.id });
        }else{
        Users.create(user)
            .then(data => {
                res.send({ id: data.id });
            })
            .catch(err => {
                console.log(err.message);
                res.status(500).send({
                    message:
                        err.message || 'Some error occurred while creating the Tutorial.'
                });
            });}
    }
    async get(req,res){
        var user=await  Users.findOne({
            where: {
                id:req.params.id,
            },attributes: {exclude: ['createdAt','updatedAt']},
        })
        if(user!= null) {

            res.send({ data: user });
           }else{
            res.status(500).send({
                message:
                    'Some error occurred'
            });
           }

    }
}
module.exports = new UserController();