package util;

import java.sql.Connection;
import java.sql.SQLException;
import com.mysql.cj.jdbc.MysqlDataSource;

public class ConexaoBanco {

    private Connection conexao = null;
    private final String BANCO = "ECOMMERCE";   //troque pelo nome do seu database
    private final String LOGIN = "root";   //use o usuário do banco (default: root)
    private final String SENHA = "";      //se estiver sem senha deixe vazio: ""
    private final String HOST = "localhost"; //se o mysql estiver rodando localmente, use "localhost"

    public Connection getConnection() {

        try {
            MysqlDataSource ds = new MysqlDataSource();
            ds.setServerName(HOST);
            ds.setDatabaseName(BANCO);
            ds.setUser(LOGIN);
            ds.setPassword(SENHA);

            ds.setConnectTimeout(2000);

            conexao = ds.getConnection();
            System.out.println("CONECTADO AO BANCO DE DADOS.");
        }
        catch (SQLException sqlerror) {
            System.out.println("FALHA NA CONEXÃO: " + sqlerror.getMessage());
        }       

        return conexao;
    }
    
}