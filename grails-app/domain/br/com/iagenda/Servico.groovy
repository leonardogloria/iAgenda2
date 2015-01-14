package br.com.iagenda

class Servico {

    String nome
    Long tempoMedio


    static constraints = {
        nome blank: false,nullable: false
        tempoMedio nullable: false

    }
}
