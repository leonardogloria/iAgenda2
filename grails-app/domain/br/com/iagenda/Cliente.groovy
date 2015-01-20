package br.com.iagenda

import br.com.iagenda.enums.Sexo

/**
 *Cliente normal do site que faz solicita'coes de consultas.
 */
class Cliente extends SecUser {

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
