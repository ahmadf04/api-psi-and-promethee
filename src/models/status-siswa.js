module.exports = (sequelize, Sequelize) => {
    const StatusSiswa = sequelize.define('status_siswas', {
        sub_kriteria: {
            type: Sequelize.STRING(45)
        },
        bobot: {
            type: Sequelize.INTEGER
        },
    })

    return StatusSiswa
}
