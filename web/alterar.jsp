<%-- 
    Document   : alterar
    Created on : 27/03/2020, 21:16:50
    Author     : Bastos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/meni.css">
    </head>
    <body>
        <form action="executa_alterar.jsp" method="post">
            <label>Codigo:</label><br>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br>
            
            <label>Descrição:</label><br>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br>
            
            <label>Preço:</label><br>
            <input type="text" name="preco" value="<%=request.getParameter("preco")%>" /><br>
            
            <button type="submit">OK</button>
            <a href="index.jsp"> Voltar </a>
            
            
            
        </form> 
    </body>
</html>
