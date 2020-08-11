<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.PessoaFisicaDao"%>
<%@ page import="model.PessoaFisica"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.GsonBuilder"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem Pessoas Físicas</title> 
    <style>
        div {
            border: 2px solid black;
            margin-top: .5em;
        }
    </style>
</head>
<body>
    <%
            try {
                PessoaFisicaDao dao = new PessoaFisicaDao();
                List<PessoaFisica> lstPessoaFisica = dao.pesquisar();
                out.println("<h1>Pessoa Física<h1>");

                for (PessoaFisica c : lstPessoaFisica) {
                    //out.println("ID= " + c.getIdCustomer() + "\n");
                    //out.println("Nome= " + c.getName() + "\n");
                    //out.println("Telefone= " + c.getPhone() + "\n");
                    //out.println("CPF= " + c.getCPF() + "\n");
                    //out.println("Rua= " + c.getStreet() + "\n");
                    //out.println("Número= " + c.getNumber() + "\n");
                    //out.println("Bairro= " + c.getDistrict() + "\n");
                    //out.println("UF= " + c.getUf() + "\n");
                    Gson gson = null;

                    String pessoaFisica = new Gson().toJson(c);
                    out.println("<span>");
                    out.println(pessoaFisica);
                    out.println("</span>");
                }

            } catch (SQLException e) {
                out.println("<p>Erro " + e.getMessage() + "</p>");                
            }          

        %> 
</body>
</html>
