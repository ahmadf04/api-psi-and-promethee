module.exports = (app) => {
    const programBantuan = require('../controllers/program-bantuan')

    let router = require('express').Router()

    router.post('/', programBantuan.create)
    router.get('/', programBantuan.findAll)
    router.get('/:id', programBantuan.findOne)
    router.put('/:id', programBantuan.update)
    router.delete('/:id', programBantuan.delete)
    router.delete('/', programBantuan.deleteAll)

    app.use('/program-bantuan', router)
}
