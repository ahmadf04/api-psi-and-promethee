module.exports = (sequelize, Sequelize) => {
    const Jurusan = sequelize.define('jurusans', {
        nama: {
            type: Sequelize.STRING(100)
        },
        alias: {
            type: Sequelize.STRING(45)
        },
    })

    return Jurusan
}
