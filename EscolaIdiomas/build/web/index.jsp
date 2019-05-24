
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="icon" href="img/logo.png" type="image/icon type">
        <title>Escola de Idiomas</title>
        
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="img/cover.jpg" alt="First slide">
                <div class="carousel-caption d-none d-md-block" id="caption">
                    <h2>ESCOLA DE IDIOMAS</h2>
                    <p>Na ESCOLA DE IDIOMAS é assim, quanto mais você aprende mais quer ir além.
                        Com um método leve, dinâmico e envolvente toda aula se transforma numa experiência enriquecedora. 
                        Aqui você entra com a vontade de aprender e sai com a vida cheia de possibilidades pela frente.</p>
                    
                    <a href="matricula.jsp"><button class="btn btn-warning btn-lg ml-4 mt-3 matricula">Pré-Matrícula</button></a>
                </div>
              </div>            
            </div>
        </div>
        
        <a href="cursos.jsp"><button class="btn btn-danger btn-lg cursos">Conheça nossos cursos</button></a>
        
        <img src="img/cover2.jpg">
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
        
    </body>
</html>
