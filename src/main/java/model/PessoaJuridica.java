package model;

public class PessoaJuridica extends Customer{
    private String cnpj;
    private String razaoSocial;

    //cnpj
    public String getCnpj() {
        return this.cnpj;
    }
    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    //razao_social
    public String getRazaoSocial() {
        return this.razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }
}