
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/meni.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Efetua a Ocorrencia</h1>
        
        <form action="executa_inserir.jsp" method="post">
            <!--<label>Codigo:</label><br>
            <input type="text" name="codigo" /><br> -->
            
            <textarea rows="5" cols="20" name="descricao" placeholder="Ocorrencia" maxlength="100" ></textarea><br>
            
           
            <input type="text" name="equipamento" placeholder="Equipamentos" maxlength="20" /><br>
            
           
            <input type="text" name="data" placeholder="Data" maxlength="10"/><br>
            
            
            <input type="text" name="profissional" placeholder="Profissional" maxlength="18"/><br><br>
            
            <button type="submit">OK</button><br>
            <a href="index.jsp" style="text-decoration:none">voltar</a>
            
            
            
        </form> 
    </body>
</html>
