package br.com.iagenda

import br.com.iagenda.enums.Sexo


class Cliente {

    String nome
    String sobrenome
    Sexo sexo
    String cpf
    Endereco endereco
    String email
    static hasMany = [telefones:Telefone]
    static constraints = {
        cpf cpf:true
    }
}
