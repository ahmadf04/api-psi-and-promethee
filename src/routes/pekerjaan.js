module.exports = (app) => {
    const pekerjaan = require('../controllers/pekerjaan')

    let router = require('express').Router()

    router.post('/', pekerjaan.create)
    router.get('/', pekerjaan.findAll)
    router.get('/:id', pekerjaan.findOne)
    router.put('/:id', pekerjaan.update)
    router.delete('/:id', pekerjaan.delete)
    router.delete('/', pekerjaan.deleteAll)

    app.use('/pekerjaan', router)
};
