const conexaoDB = require('./conexaoDB')
const usuario = require('./usuario')
const produto = require('./produto')

const compra = conexaoDB.sequelize.define('compra', {
    quantProd: {
        type: conexaoDB.Sequelize.INTEGER,
        allowNull: false
    }
})

compra.belongsTo(usuario, {
    constrraint: true,
    foreignKey: 'idUsuario'
})
compra.belongsTo(produto, {
    constrraint: true,
    foreignKey: 'idProduto'
})

usuario.hasMany(compra, {
    foreignKey: 'idcompra'
})

produto.hasMany(compra, {
    foreignKey: 'idcompra'
})

//compra.sync({force: true})

module.exports = compra