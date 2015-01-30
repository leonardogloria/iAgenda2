package br.com.iagenda

import br.com.iagenda.enums.Sexo

class Usuario extends SecUser {

    String nomeCompleto
    Sexo sexo
    String cpf
    Endereco endereco

    static hasMany = [telefones:Telefone]

    static mapping = {
        tablePerHierarchy false
    }

    static constraints = {
        cpf cpf:true
        endereco nullable: true
    }
}
