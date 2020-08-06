package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.ConexaoBanco;


import model.PessoaJuridica;

public class PessoaJuridicaDao {
    private Connection con;

    public PessoaJuridicaDao() {
        this.con = new ConexaoBanco().getConnection();
    }

    // Register customer - Pessoa Jurídica
    public void register(PessoaJuridica c) throws SQLException {
        String query;
        query = "INSERT INTO PESSOA_JURIDICA (NAME_JUR, PHONE, CNPJ, RAZAOSOCIAL, STREET, NUMBER, DISTRICT, UF) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        
        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, c.getName());
        st.setString(2, c.getPhone());
        st.setString(3, c.getCnpj());
        st.setString(4, c.getRazaoSocial());
        st.setString(5, c.getStreet());
        st.setString(6, c.getNumber());
        st.setString(7, c.getDistrict());
        st.setString(8, c.getUf());

        st.execute();
        st.close();
        con.close();
    }

    public List<PessoaJuridica> pesquisar() throws SQLException, Exception {
        List<PessoaJuridica> lista = new ArrayList();
        String query = "SELECT * FROM PESSOA_JURIDICA";

        PreparedStatement st = con.prepareStatement(query);
        
        ResultSet rs = st.executeQuery();

        while(rs.next()) {            
            PessoaJuridica cus = new PessoaJuridica();
            
            cus.setIdCustomer   ( rs.getInt("IDCOSTUMER_JUR")  );
            cus.setName   ( rs.getString("NAME_JUR")  );
            cus.setPhone   ( rs.getString("PHONE")  );
            cus.setCnpj (rs.getString("CNPJ"));
            cus.setRazaoSocial(rs.getString("RAZAOSOCIAL"));
            cus.setStreet (rs.getString("STREET"));
            cus.setNumber   ( rs.getString("NUMBER")  );
            cus.setDistrict   ( rs.getString("DISTRICT")  );
            cus.setUf   ( rs.getString("UF")  );
            lista.add(cus);            
        }   
        return lista;

    }
}