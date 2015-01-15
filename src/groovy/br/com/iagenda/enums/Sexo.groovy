package br.com.iagenda.enums

/**
 * Created by Leonardo on 15/01/2015.
 */
enum Sexo {
    MASCULINO(1,"Masculino"),FEMININO(2,"Feminino")
    Sexo(Long id,String desc){
        this.id= id
        this.descricao = desc
    }
    private final Long id
    private final String descricao

}
