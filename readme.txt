Estrutura do banco
Obs: Banco desenvolvido para fim didática apenas, sem me ater a modelagem de dados

-Pessoa Física:
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| ID_CUSTOMER | int(11)     | NO   | PRI | NULL    | auto_increment |
| NAME        | varchar(50) | NO   |     | NULL    |                |
| PHONE       | varchar(9)  | NO   |     | NULL    |                |
| CPF         | varchar(11) | NO   |     | NULL    |                |
| STREET      | varchar(50) | NO   |     | NULL    |                |
| NUMBER      | varchar(5)  | NO   |     | NULL    |                |
| DISTRICT    | varchar(50) | NO   |     | NULL    |                |
| UF          | varchar(4)  | NO   |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+


-Pessoa Jurídica:
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| ID_CUSTOMER_JUR | int(11)     | NO   | PRI | NULL    | auto_increment |
| NAME            | varchar(30) | NO   |     | NULL    |                |
| PHONE           | varchar(11) | NO   |     | NULL    |                |
| CNPJ            | varchar(20) | NO   |     | NULL    |                |
| RAZAOSOCIAL     | varchar(50) | NO   |     | NULL    |                |
| STREET          | varchar(50) | NO   |     | NULL    |                |
| NUMBER          | varchar(6)  | NO   |     | NULL    |                |
| DISTRICT        | varchar(40) | NO   |     | NULL    |                |
| UF              | varchar(4)  | NO   |     | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+
