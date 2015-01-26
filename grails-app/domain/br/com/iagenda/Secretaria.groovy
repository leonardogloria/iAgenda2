package br.com.iagenda

class Secretaria extends Cliente{

    Integer ctps

    static hasMany = [servGerenciados:Servico]

    static mapping = {
        tablePerHierarchy false
    }

    static constraints = {
    }
}
