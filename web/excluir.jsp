<%-- 
    Document   : excluir
    Created on : 27/03/2020, 21:16:59
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
        
        <form action="executa_excluir.jsp" method="post">
            <label>Codigo:</label><br>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>" /><br>
            
            <label>Ocorrencia:</label><br>
            <input type="text" name="descricao" value="<%=request.getParameter("descricao")%>"/><br>
            
            <label>Equipamento:</label><br>
            <input type="text" name="equipamento" value="<%=request.getParameter("equipamento")%>"/><br>
            
            <button type="submit">OK</button>
            <a href="index.jsp"> Voltar </a>
            
        </form>   
    </body>
</html>
