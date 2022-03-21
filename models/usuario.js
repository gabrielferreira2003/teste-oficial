const conexaoDB = require('./conexaoDB')

const usuario = conexaoDB.sequelize.define('usuario', {
    cpf: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    nome: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    email: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    senha: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    endereco: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    }
})

//usuario.sync({force: true})

module.exports = usuario