module.exports = (sequelize, Sequelize) => {
    const StatusRumah = sequelize.define('status_rumah', {
        sub_kriteria: {
            type: Sequelize.STRING(45)
        },
        bobot: {
            type: Sequelize.INTEGER
        },
    })

    return StatusRumah
}
