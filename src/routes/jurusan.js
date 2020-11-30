module.exports = (app) => {
    const jurusan = require('../controllers/jurusan')

    let router = require('express').Router()

    router.post('/', jurusan.create)
    router.get('/', jurusan.findAll)
    router.get('/:id', jurusan.findOne)
    router.put('/:id', jurusan.update)
    router.delete('/:id', jurusan.delete)
    router.delete('/', jurusan.deleteAll)

    app.use('/jurusan', router)
}
