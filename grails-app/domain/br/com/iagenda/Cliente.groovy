package br.com.iagenda

class Cliente {

    String nome
    String sobrenome
    String sexo //Todo criar enum para sexo
    String cpf //Todo criar constraint para cpf
    String telefone //Todo criar classe para telefone
    String email

    static constraints = {
    }
}
