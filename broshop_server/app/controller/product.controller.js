const db = require('../model')
const Product = db.product;
const Op = db.Sequelize.Op;
class ProductController {
    async add(req, res) {
        console.log(req.body);
        const body=req.body;
        const product = {
            name:body.name,
            strapColor:body.strapColor,
            highlight:body.highlight,
            image:body.image,
            price:body.price,
            status:body.status
        }
        Product.create(product)
            .then(data => {
                res.send({ id: data.id });
            })
            .catch(err => {
                console.log(err.message);
                res.status(500).send({
                    message:
                        err.message || 'Some error occurred while creating the Tutorial.'
                });
            });
    }
    async update(req, res) {
        console.log(req.body);
        const body=req.body;
        const product = {
            name:body.name,
            strapColor:body.strapColor,
            highlight:body.highlight,
            image:body.image,
            price:body.price,
            status:body.status
        }
        Product.update(product,{
            where:{

                id:body.id
            }
        })
            .then(data => {
                res.send({ id: data.id });
            })
            .catch(err => {
                console.log(err.message);
                res.status(500).send({
                    message:
                        err.message || 'Some error occurred while creating the Tutorial.'
                });
            });
    }

        async get(req, res) {
            Product.findAll({
                attributes: {exclude: ['createdAt','updatedAt']},
            }).then().then(data => {
                res.send({ 'data': data });
            }).catch(err => {
                console.log(err.message);
                res.status(500).send({
                    message:
                        err.message || "Some error occurred while creating the Tutorial."
                });
            });
        }
        async delete(req, res) {
            Product.destroy({
                where: {
                    id:req.params.id,
                }
            }).then().then(data => {
                res.send({ 'data': data });
            }).catch(err => {
                console.log(err.message);
                res.status(500).send({
                    message:
                        err.message || "Some error occurred while creating the Tutorial."
                });
            });
        }
    
}
module.exports = new ProductController();