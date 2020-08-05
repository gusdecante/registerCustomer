package model;

public class Customer {
    private int idCustomer;
    private String name;
    private String phone;
    private String cpf;
    private String street; //rua
    private String number; //number could be 66B
    private String district; //bairro
    private String uf;

    //id
    public int getIdCustomer() {
        return this.idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    //name
    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    //phone
    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone){
        this.phone = phone;
    }

    //cpf
    public String getCPF() {
        return this.cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    //street
    public String getStreet() {
        return this.street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    //number
    public String getNumber() {
        return this.number;
    }

    public void setNumber(String number){
        this.number = number;
    }

    //district
    public String getDistrict() {
        return this.district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    //uf
    public String getUf() {
        return this.uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }
}