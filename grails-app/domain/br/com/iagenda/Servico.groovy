package br.com.iagenda

class Servico {

    String nome
    Long tempoMedio
    Float preco


    static constraints = {
        nome blank: false,nullable: false
        tempoMedio nullable: false
        preco nullable: true, blank:true

    }
}
