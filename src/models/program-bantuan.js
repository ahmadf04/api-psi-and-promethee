module.exports = (sequelize, Sequelize) => {
    const Jurusan = sequelize.define('program_bantuans', {
        sub_kriteria: {
            type: Sequelize.STRING(100)
        },
        bobot: {
            type: Sequelize.INTEGER
        },
    })

    return Jurusan
}
