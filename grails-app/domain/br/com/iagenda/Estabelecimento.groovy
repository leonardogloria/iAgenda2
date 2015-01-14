package br.com.iagenda

class Estabelecimento {

    String nome
    String cnpj
    TipoEstabelecimento tipoEstabelecimento

    static hasMany = [servicos:Servico]


    static constraints = {
    }
}
