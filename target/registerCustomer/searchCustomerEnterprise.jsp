<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.PessoaJuridicaDao"%>
<%@ page import="model.PessoaJuridica"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.GsonBuilder"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listagem Pessoas Jurídicas</title> 
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
                PessoaJuridicaDao dao = new PessoaJuridicaDao();
                List<PessoaJuridica> lstPessoaJuridica = dao.pesquisar();           
                out.println("<h1>Pessoa Física<h1>");

                for (PessoaJuridica c : lstPessoaJuridica) {
                    //out.println("<div>");
                    //out.println("<p>ID: " + c.getIdCustomer() + "</p>");
                    //out.println("<p>Nome: " + c.getName() + "</p>");
                    //out.println("<p>Telefone: " + c.getPhone() + "</p>");
                    //out.println("<p>CPF: " + c.getCnpj() + "</p>");
                    //out.println("<p>CPF: " + c.getRazaoSocial() + "</p>");
                    //out.println("<p>Rua: " + c.getStreet() + "</p>");
                    //out.println("<p>Número: " + c.getNumber() + "</p>");
                    //out.println("<p>Bairro: " + c.getDistrict() + "</p>");
                    //out.println("<p>UF: " + c.getUf() + "</p>");
                    //out.println("</div>");

                    Gson gson = null;

                    String pessoaJuridica = new Gson().toJson(c);
                    out.println("<span>");
                    out.println(pessoaJuridica);
                    out.println("</span>");
                }

            } catch (SQLException e) {
                out.println("<p>Erro " + e.getMessage() + "</p>");
                
            }          

        %> 
</body>
</html>
