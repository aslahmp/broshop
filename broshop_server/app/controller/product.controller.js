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
}
module.exports = new ProductController();