package br.com.iagenda

import br.com.iagenda.enums.Sexo


class Cliente {

    String nomeCompleto
    Sexo sexo
    String cpf
    Endereco endereco

    static hasMany = [telefones:Telefone]
    static belongsTo = [secUser : SecUser]
    static constraints = {
        cpf cpf:true
        endereco nullable: true
    }
}
