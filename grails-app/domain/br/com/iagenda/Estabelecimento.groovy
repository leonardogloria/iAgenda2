package br.com.iagenda

class Estabelecimento {

    String razaoSocial
    String cnpj
    String email
    String homePage
    String pessoaContato

    //TODO Criar classe de Domonio de Telefone
    String telefone
    String telefoneContato

    //Todo Criar Classe de dominio de endereco
    String endereco

    TipoEstabelecimento tipoEstabelecimento

    static hasMany = [servicos:Servico]


    static constraints = {
    }
}
