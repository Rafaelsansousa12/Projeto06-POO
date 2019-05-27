
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../style.css">
        <title>Adicionar Aluno</title>
    </head>
    <body>
        
        <!-- MENU -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark nav-justify-content-center">

            <div class="collapse navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="home.jsp">Página Inicial</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="listar.jsp">Listar alunos</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="../fornecedor/listar.jsp">Listar Fornecedores</a>
                    </li>
                </ul>
            </div>
        </nav>
         
        <form action="alunos.jsp">        
            <div class="formulario">
                <h2 class="titulo">Novo Aluno</h2>
                    <div class="form-group row">
                        <div class="col-md-6">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" id="nome1" name="nome">
                        </div>
                        
                        <div class="col-md-3">
                            <label for="cpf">Endereço</label>
                            <input type="text" class="form-control" id="endereco1" name="endereco">
                        </div>

                        <div class="form-group col-md-3">
                            <label for="rg">Telefone</label>
                            <input type="text" class="form-control" id="telefone1" name="telefone">
                        </div>
                    </div>

                    <div class="form-group row">            
                        <div class="form-group col-md-5">
                            <label for="email">E-mail</label>
                            <input type="text" class="form-control" id="email1" name="email">
                        </div>
                        
                        <div class="form-group col-md-7">
                            <label for="endereco">CPF</label>
                            <input type="text" class="form-control" id="cpf1" name="cpf">
                        </div> 
                    </div>

                    
                        
                    </div>
                 
                    <hr/>
                    <h2 class="confirmacao">Deseja incluir um novo Cliente?</h2>
                    <input type="submit" name="adicionarAluno" value="Não" class="confirmacaoClienteNao btn btn-danger"/>
                    <input type="submit" name="adicionarAluno" value="Sim" class="confirmacaoClienteSim btn btn-primary"/>
                    <br><br>
            </div>
        </form>
    </body>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>


    
