<%-- 
    Document   : alunos
    Created on : 26/05/2019, 20:14:49
    Author     : Rafael Sousa
--%>

<%@page import="br.com.fatecpg.idiomas.Alunos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       
        <title>JavaDB - Escola de Idiomas</title>
        
        <style>
            body {
	background-color: #BDBDBD;	
}

        </style>
        
    </head>
    
    <body background= "#BDBDBD";>
       
        <nav class="navbar bg-dark text-white navbar-expand-md navbar-bg">
    <div class="container">
        <!-- Brand -->
        <h2>JAVADB - Escola de Idiomas</h2>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"> JavaDB </span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto"> 
                
                
                <li class="nav-item">
                    <a class="btn btn-outline-success ml-2 my-2 my-sm-0" href=".jsp">Alunos</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-outline-success ml-2 my-2 my-sm-0" href=".jsp">Cursos</a>
                </li>
                
            </ul>
        </div> 
    </div>
</nav>
        
        
        <%try{%>
        <% ArrayList<Alunos> list = Alunos.getList(); %>
            <div class="container">
                <div class="row">
                    <div class="col">ID</div>
                    <div class="col">NOME</div>
                    <div class="col">ENDERECO</div>
                    <div class="col">TELEFONE</div>
                    <div class="col">EMAIL</div>
                    <div class="col">CPF</div>
                </div>
                <% for(Alunos a: list){ %>
                <div class="row">
                    <div class="col"><%= a.getId()%></div>
                    <div class="col"><%= a.getNome()%></div>
                    <div class="col"><%= a.getEndereco()%></div>
                    <div class="col"><%= a.getTelefone()%></div>
                    <div class="col"><%= a.getEmail()%></div>
                     <div class="col"><%= a.getCpf()%></div>
                    
                </div>
                <%}%>
            </div>
            <!--
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>EMAIL</th>
                    <th>DETALHES</th>
                </tr>
                <% for(Alunos a: list){ %>
                <tr>
                    <td><%= a.getId()%></td>
                    <td><%= a.getNome()%></td>
                    <td><%= a.getEmail()%></td>
                    <td><a href="details_customers.jsp?id=<%= a.getId()%>">Ver Detalhes</a></td>
                </tr>
                <%}%>
            </table>
            -->
            
        <%} catch(Exception e){%>
            <h3 style="color: red"><%= e.getMessage()%></h3>
        <%}%>
        <hr/><hr/>
        <h3><a href="home.jsp">Voltar a Página Principal</a></h3>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>    
</html>