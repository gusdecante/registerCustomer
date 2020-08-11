<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        div {
            background-color: #eeaa44;
            margin: 2em 10em;
            padding: 4em;
        }
        p {
            display: flex;
            flex-direction: column;
        }

        .row {
            flex-direction: row;
        }

        .row input {
            margin-left: .5em;  
        }

        .row input[id=street], input[id=district] {
            flex: 1;
        }

        input[type=submit] {
            margin-top: .5em;
            text-transform: uppercase;
            font-size: 1.5em;
            background-color: white;
            border-radius: 5px;
            font-weight: bold;
        }
        
        h1 {
            text-align: center;
            text-transform: uppercase;
        }
    </style>
</head>
<body>
    <div>
        <%
        int comp = Integer.parseInt(request.getParameter("customer-type"));
        if(comp == 1){
            out.println("<form method=POST action=registerSuccessful.jsp name=form_aluno>");
            out.println("<h1>Cadastrar Pessoa Física</h1>");
            out.println("<label for=name>Nome</label>");
            out.println("<input type=text id=name name=nameForm size=20 maxlength=20>");
            out.println("<label for=phone>Telefone(+55)</label>");
            out.println("<input type=text id=phone name=phoneForm size=20 maxlength=11>");
            out.println("<label for=cpf>CPF</label>");
            out.println("<input type=text id=cpf name=cpfForm size=20 maxlength=20>");
            out.println("<p class=row>");
            out.println("<label for=street>Rua</label>");
            out.println("<input type=text id=street name=streetForm size=40 maxlength=40>");
            out.println("<label for=number>Número</label>");
            out.println("<input type=text id=number name=numberForm size=5 maxlength=5>");
            out.println("</p>");   
            out.println("<p class=row>");  
            out.println("<label for=district>Bairro</label>");   
            out.println("<input type=text id=district name=districtForm size=20 maxlength=20>");   
            out.println("<label for=uf>UF</label>");  
            out.println("<input type=text id=uf name=ufForm size=5 maxlength=5>");
            out.println("</p>");
            out.println("<p>");
            out.println("<input type=submit name=btnSend id=btnSend value=Enviar>");
            out.println("</p>");
            out.println("</form>"); 
        }
        if(comp == 2){
            out.println("Cadastrar pessoa jurídica");
        }
        else {
            out.println("<h1>Selecione um valor</h2>")
            out.println("<a href=/index.jsp>Voltar a página principal</a>")
        }
        %>
    </div>
</body>
</html>
