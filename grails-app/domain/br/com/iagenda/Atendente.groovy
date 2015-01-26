package br.com.iagenda

import br.com.iagenda.Secretaria
import br.com.iagenda.Servico

class Atendente extends Secretaria { //ou deve extender apenas cliente...

    static hasMany = [servicos:Servico]

    static constraints = {
    }
}
