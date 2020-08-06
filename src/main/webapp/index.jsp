<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<body>
<head>
    <title>Formulário</title>
    <style>
        body {
            background-color: darkgray;
        }
        .main {
            display: flex;
            flex-direction: row;
            align-items: stretch;
            justify-content: center;
            background-color: #eeaa44;
            min-width: 60vw;
            margin: 1em auto;
            padding: 2em;
            border-radius: 5px;
        }

        form {
            flex: 1;
            border: 2px solid black;
            padding: 1em;
            width: 50vw;
        }
        
        .formTwo div{
            display: flex;
            flex-direction: column;
        }

        input[type=submit] {
            margin-top: .5em;
            text-transform: uppercase;
            font-size: .8em;
            background-color: white;
            border-radius: 5px;
            font-weight: bold;
        }

        @media (max-width: 500px) {
            .main{
                flex-direction: column;
            }
        }
    </style>
</head>
<body>   
    <div class="main">
        <form class="formOne" method="POST" action="registerCustomer.jsp" name="register_Customer">
            <div>
                <input type="submit" name="btnRegister" id="btnRegiter" value="Cadastrar Cliente">
            </div>
        </form>
        <form class="formTwo" method="POST" action="searchCustomer.jsp" name="search_Customer">
            <div>
                <label for="name">Insira o nome do Cliente</label>
                <input type="text" id="name" name="nameForm" size="40" maxlength="40">
            </div>
            <div>
                <input type="submit" name="btnSearch" id="btnSearch" value="Buscar Cliente">
            </div>
        </form>
        <form class="formThree" method="POST" action="searchCustomer.jsp" name="list_Pessoas_Fisicas">
            <div>
                <input type="submit" name="btnList" id="btnList" value="Listar Pessoas Físicas">
            </div>
        </form>
        <form class="formFour" method="POST" action="searchCustomerEnterprise.jsp" name="list_Pessoas_Juridicas">
            <div>
                <input type="submit" name="btnListEnterprise" id="btnListEnterprise" value="Listar Pessoas Jurídicas">
            </div>
        </form>
    </div>   
</body>
</html>