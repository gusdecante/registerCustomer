package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Customer;
import util.ConexaoBanco;

public class CustomerDao {
    private Connection con;

    public CustomerDao() {
        this.con = new ConexaoBanco().getConnection();
    }

    // Register customer
    public void register(Customer c) throws SQLException {
        String query;
        query = "INSERT INTO CUSTOMER (NAME, PHONE, CPF, STREET, NUMBER, DISTRICT, UF) VALUES (?, ?, ?, ?, ?, ?, ?);";

        PreparedStatement st = con.prepareStatement(query);
        st.setString(1, c.getName());
        st.setString(2, c.getPhone());
        st.setString(3, c.getCPF());
        st.setString(4, c.getStreet());
        st.setString(5, c.getNumber());
        st.setString(6, c.getDistrict());
        st.setString(7, c.getUf());

        st.execute();
        st.close();
        con.close();
    }


    public List<Customer> pesquisar() throws SQLException, Exception {
        
        List<Customer> lista = new ArrayList();
        String query = "SELECT * FROM CUSTOMER";
        
        PreparedStatement st = con.prepareStatement(query);
        
        ResultSet rs = st.executeQuery();
        
        while(rs.next()) {            
            Customer cus = new Customer();
            
            cus.setIdCustomer   ( rs.getInt("IDCOSTUMER")  );
            cus.setName   ( rs.getString("NAME")  );
            cus.setPhone   ( rs.getString("PHONE")  );
            cus.setCpf   ( rs.getString("CPF")  );
            cus.setStreet (rs.getString("STREET"));
            cus.setNumber   ( rs.getString("NUMBER")  );
            cus.setDistrict   ( rs.getString("DISTRICT")  );
            cus.setUf   ( rs.getString("UF")  );
            lista.add(cus);            
        }   
        return lista;
    }

}