<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.PessoaFisicaDao"%>
<%@ page import="model.PessoaFisica"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title> 
</head>
<body>
    <%
            out.println("Consulta ao banco");

            try {
                PessoaFisicaDao dao = new PessoaFisicaDao();
                List<PessoaFisica> lstPessoaFisica = dao.pesquisar();
                out.println("ok");                

                for (PessoaFisica c : lstPessoaFisica) {
                    out.println("<p>ID: " + c.getIdCustomer() + "</p>");
                    out.println("<p>Nome: " + c.getName() + "</p>");
                    out.println("<p>Telefone: " + c.getPhone() + "</p>");
                    out.println("<p>CPF: " + c.getCPF() + "</p>");
                    out.println("<p>Rua: " + c.getStreet() + "</p>");
                    out.println("<p>Número: " + c.getNumber() + "</p>");
                    out.println("<p>Bairro: " + c.getDistrict() + "</p>");
                    out.println("<p>UF: " + c.getUf() + "</p>");
                }

            } catch (SQLException e) {
                out.println("<p>Erro " + e.getMessage() + "</p>");
                
            }          

        %> 
</body>
</html>
