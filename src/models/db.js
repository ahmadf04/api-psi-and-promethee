const dbConfig = require('../config')

const Sequileze = require('sequelize')
const sequelize = new Sequileze(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,
    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        idle: dbConfig.pool.idle,
        acquire: dbConfig.pool.acquire
    }
})

const db = {}

db.Sequileze = Sequileze
db.sequelize = sequelize

db.pekerjaan = require('./pekerjaan')(sequelize, Sequileze)
db.pengajuan = require('./pengajuan')(sequelize, Sequileze)
db.penghasilan = require('./penghasilan')(sequelize, Sequileze)
db.preferensi = require('./preferensi')(sequelize, Sequileze)
db.status_rumah = require('./status-rumah')(sequelize, Sequileze)
db.status_siswa = require('./status-siswa')(sequelize, Sequileze)
db.jurusan = require('./jurusan')(sequelize, Sequileze)
db.program_bantuan = require('./program-bantuan')(sequelize, Sequileze)

module.exports = db