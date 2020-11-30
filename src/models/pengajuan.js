module.exports = (sequelize, Sequelize) => {
    const Pengajuan = sequelize.define('pengajuans', {
        nisn: {
            type: Sequelize.STRING(45)
        },
        kelas: {
            type: Sequelize.STRING(45)
        },
        alternatif: {
            type: Sequelize.STRING(45)
        },
        jurusan: {
            type: Sequelize.STRING(100)
        },
        pekerjaan: {
            type: Sequelize.STRING(45)
        },
        penghasilan: {
            type: Sequelize.STRING(45)
        },
        status_siswa: {
            type: Sequelize.STRING(45)
        },
        jenis_bantuan: {
            type: Sequelize.STRING(100)
        },
    })

    return Pengajuan
}
