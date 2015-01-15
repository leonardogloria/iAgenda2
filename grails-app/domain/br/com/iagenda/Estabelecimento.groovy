package br.com.iagenda


class Estabelecimento {

    String razaoSocial
    String cnpj
    String email
    String homePage
    String nomePessoaContato
    TipoEstabelecimento tipoEstabelecimento
    Endereco endereco
    //static hasOne = [endereco:Endereco]
    static hasMany = [servicos:Servico,telefones:Telefone]

    static constraints = {
    }
}
