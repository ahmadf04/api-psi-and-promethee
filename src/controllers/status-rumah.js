const db = require('../models/db')
const StatusRumah = db.status_rumah

const error_message = 'Error occurred'

exports.create = (req, res) => {
    if (!req.body) {
        res.status(400).send({
            message: 'Content can not be empty!'
        })
        return
    }

    const body = {
        sub_kriteria: req.body.sub_kriteria,
        bobot: req.body.bobot
    }

    StatusRumah.create(body)
        .then((data) => res.send(data))
        .catch((err) => {
            res.status(500).send({
                message: err.message || error_message
            })
        })
}

exports.findAll = (req, res) => {
    StatusRumah.findAll()
        .then((data) => res.send(data))
        .catch((err) => {
            res.status(500).send({
                message: err.message || error_message
            })
        })
}

exports.findOne = (req, res) => {
    const id = req.params.id

    StatusRumah.findByPk(id)
        .then((data) => res.send(data))
        .catch((err) => {
            res.status(500).send({
                message: `Error retrieving id=${id}`
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id

    StatusRumah.update(req.body, {
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({ message: 'Updated successfully.' })
            } else {
                res.send({
                    message: `Cannot update id=${id}`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error updating id=' + id
            })
        })
}

exports.delete = (req, res) => {
    const id = req.params.id

    StatusRumah.destroy({
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({ message: 'deleted successfully!' })
            } else {
                res.send({
                    message: `Cannot delete id=${id}`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: `Could not delete id=${id}`
            })
        })
}

exports.deleteAll = (req, res) => {
    StatusRumah.destroy({
        where: {},
        truncate: false
    })
        .then((nums) => {
            res.send({ message: `${nums} were deleted successfully!` })
        })
        .catch((err) => {
            res.status(500).send({
                message: err.message || error_message
            })
        })
}