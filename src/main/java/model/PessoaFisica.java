package model;

public class PessoaFisica extends Customer {

    private String cpf;

    public String getCPF(){
        return this.cpf;
    }

    public void setCpf(String cpf){
        this.cpf = cpf;
    }
}