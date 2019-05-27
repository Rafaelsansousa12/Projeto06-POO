
<%@page import="br.com.fatecpg.idiomas.Alunos"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../style.css">
        <title>Listar Alunos</title>
    </head>
    
    <body>
        
        <!-- MENU -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark nav-justify-content-center">

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="../index.jsp">Página Inicial</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="listar.jsp">Listar Clientes</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="../fornecedor/listar.jsp">Listar Fornecedores</a>
                    </li>
                </ul>
            </div>
        </nav>
        
        <h1 class="titulo2">Lista - Clientes</h1>
        <button type="button" class="btn btn-success" id="buttonAddCliente"><a href="adicionar.jsp">Adicionar Cliente</a></button>
  
        <table class="table table-dark table-sm" border="1">
            <tr>
               
                <th>Matricula</th>
                <th>Nome</th>
                <th>Endereço</th>
                <th>Telefone</th>
                <th>E-mail</th>
                <th>CPF</th>
                
         
                <th>Comandos</th>
            </tr>
            
            
        </table>
        <hr/>
        
    </body>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>

<%
    if(request.getParameter("adicionarAluno")!=null){
        if(request.getParameter("adicionarAluno").equals("Sim")){
            Alunos aluno = new Aluno();
            aluno.setId(request.getParameter("idAluno"));
            aluno.setNome(request.getParameter("nomeAluno"));
            aluno.setEndereco(request.getParameter("enderecoAluno"));
            aluno.setTelefone(request.getParameter("emailAluno"));
            aluno.setEmail(request.getParameter("telefoneAluno"));
            aluno.setCpf(request.getParameter("cpfAluno"));
            Alunos.getAluno().add(aluno);
        }
        response.sendRedirect(request.getRequestURI());
    }
    
    if(request.getParameter("alterarAluno")!=null){
        if(request.getParameter("alterarAluno").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Alunos aluno = new Aluno();
            aluno.setNome(request.getParameter("nomeCliente"));
            aluno.setCpf(request.getParameter("cpfCliente"));
            aluno.setRg(request.getParameter("rgCliente"));
            aluno.setEndereco(request.getParameter("enderecoCliente"));
            aluno.setEmail(request.getParameter("emailCliente"));
            aluno.setTelefone(request.getParameter("telefoneCliente"));
            aluno.setCelular(request.getParameter("celularCliente"));   
            Alunos.getAluno().set(index, Aluno);
        }
        response.sendRedirect(request.getRequestURI());
    }    
    
    if(request.getParameter("excluirAluno")!=null){
        if(request.getParameter("excluirAluno").equals("Sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Alunos.getAluno().remove(index);
        }
        response.sendRedirect(request.getRequestURI());
    }
    %>
