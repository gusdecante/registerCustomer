<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ page import="model.Customer"%>
<%@ page import="dao.CustomerDao"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            background-color: gray;
        }
        h1{
            margin: 1em auto;
        }
        div {
            margin: 2em 10em;
            padding: 4em;
            align-items: center;
            background-color: white;
        }
        .main{
            display: flex;
            flex-direction: row;
        }
        .photo {
            width: 100%;
            height: 100%;
            background-color: lightgray;
        }
    </style>
</head>
<body>
    <%
        PessoFisica cus = new PessoFisica();
        cus.setName((String)request.getParameter("nameForm"));
        cus.setPhone((String)request.getParameter("phoneForm"));
        cus.setCpf((String)request.getParameter("cpfForm"));
        cus.setStreet((String)request.getParameter("streetForm"));
        cus.setNumber((String)request.getParameter("numberForm"));
        cus.setDistrict((String)request.getParameter("districtForm"));
        cus.setUf((String)request.getParameter("ufForm"));

        PessoFisicaDao dao = new PessoFisicaDao();
        dao.register();
    %>
    <div class="main">
        <div>
            <h1>Nome: <%= cus.getName()%></h1> 
            <h1>Telefone: <%= cus.getPhone()%></h1>
            <h1>Rua: <%= cus.getStreet()%></h1>
            <h1>CPF: <%= cus.getCPF()%></h1>
            <h1>Número: <%= cus.getNumber()%></h1>
            <h1>Bairro: <%= cus.getDistrict()%></h1>
            <h1>UF: <%= cus.getUf()%></h1>    
        </div>
    </div>
</body>
</html>