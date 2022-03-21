const conexaoDB = require('./conexaoDB')

const produto = conexaoDB.sequelize.define('produto', { 
    imagem: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    nome: {
        type: conexaoDB.Sequelize.STRING,
        allowNull: false
    },
    descricao: {
        type: conexaoDB.Sequelize.TEXT,
        allowNull: false
    },
    preco: {
        type: conexaoDB.Sequelize.FLOAT,
        allowNull: false
    }
})

//produto.sync({force: true})

module.exports = produto