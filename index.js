const express = require('express')
const app = express()
const { engine } = require ('express-handlebars')
const bodyParser = require('body-parser')
const Produto = require('./models/produto')
const Usuario = require('./models/usuario')
const Compra  = require('./models/compra')

// Config
    // Template Engine
    app.engine('handlebars', engine())
    app.set('view engine', 'handlebars')
    app.set('views', `${__dirname}/views`)
    // Body Parser
    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())

// Especificar arquivos estáticos
app.use(express.static(`${__dirname}/publico`))

app.get('/', function(req, res){
    Produto.findAll().then(function(posts){
        res.render('home', {posts: posts})
    })
})

app.get('/cadastro', function(req, res){
    res.render('cadastro')
})

app.post('/cadastrar', function(req,res){
    const nome = req.body.nome
    const cpf = req.body.cpf
    const email = req.body.email
    const senha1 = req.body.senha1
    const senha2 = req.body.senha2
    const rua = req.body.rua
    const cidade = req.body.cidade
    const estado = req.body.estado
    const cep = req.body.cep
    if ((nome != '') && (cpf != '') && (email != '') && (rua != '') && (cidade != '') && (estado != '') && (cep != '') && (senha1 != '') && (senha2 != '')){
        if (senha1 === senha2) {
            Usuario.create({
                cpf: cpf,
                nome: nome,
                email: email,
                senha: senha1,
                endereco: `${rua}, ${cidade}, ${estado}, ${cep}`
            }).then(function(){
                res.redirect('/login')
            }).catch(function(erro){
                res.send(`Houve um erro1: ${erro}`)
            })
        } else {
            console.log('Senhas diferentes')
            res.redirect('cadastro')
        }
    } else {
        console.log('Todos os dados devem ser preenchidos!')
        res.redirect('cadastro')
    }
})

app.get('/login', function(req, res){
    res.render('login')
})

app.post('/logar', function(req, res){
    const emailDb = req.body.email
    const senhaDb = req.body.senha
    const emailLog = Usuario.findOne({ where: { email: emailDb} })
    const senhaLog = Usuario.findOne({ where: { senha: senhaDb} })
    if ((emailDb == emailLog) && (senhaDb == senhaLog)) {
        console.log('deu bom!')
        res.render('login')
    } else {
        console.log('deu ruim!')
        res.render('login')
    }
})

app.get('/checkout', function(req, res){
    res.render('checkout')
})

app.post('/compra', function(req,res){
    const novoUsuario = Usuario.create({
        cpf: req.body.cpf,
        nome: req.body.nome,
        email: req.body.email,
        endereco: `${req.body.rua}, ${req.body.cidade}, ${req.body.estado}, ${req.body.cep}`
    }).then(function(){
        Compra.create({
            quantProd: req.body.quantProd,
            idUsuario: novoUsuario.id,
            //idProduto: novoUsuario.id,
        }).then(function(){
            res.redirect('/')
        }).catch(function(erro){
            res.send(`Houve um erro2: ${erro}`)
        })
    }).catch(function(erro){
        res.send(`Houve um erro1: ${erro}`)
    })
    
})

app.get('/produto', function(req, res){
    res.render('produto')
})

app.listen(8082, function(){
    console.log('Servidor rodando!')
}) 