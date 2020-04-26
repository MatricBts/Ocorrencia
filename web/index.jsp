
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto" %>
<%@page import="dao.ProdutoDAO" %>
<link rel="stylesheet" type="text/css" href="css/meni.css">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP  Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post" >          
            <input type="text" name="descricao" placeholder="Pesquisar">  
            <button type="submit">Buscar</button>
        </form>
        <h1>Ocorrências</h1>
        <form action="inserir.jsp">
            <button> Criar </button>
        </form>
        <style>
  td{
       word-wrap:break-word;
    }
</style>
        <%
            try{
                out.print("<table border ='1' width=100% height=70% >");
                out.print("<tr>");
                out.print("<th>Cod</th><th >Ocorrência</th><th>Equipamento</th><th>Data</th><th>Profissional</th><th>Alterar</th><th>Excluir</th>");
                out.print("</tr>");
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("") == "" || request.getParameter("descricao") == null ){ // se for em branco aparecerá a tabela completa
                    ArrayList<Produto> lista = prd.listarTodos();
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getCodigo_ocorrencia()+"</td>");
                        out.print("<td >"+lista.get(num).getDescricao_ocorrencia()+"</td><style>td{word-wrap:break-word;}</style>");
                        out.print("<td>"+lista.get(num).getEquipamento_ocorrencia()+"</td>");
                        out.print("<td>"+lista.get(num).getData_ocorrencia()+"</td>");
                        out.print("<td>"+lista.get(num).getProfissional_ocorrencia()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_ocorrencia()+"&descricao="+lista.get(num).getDescricao_ocorrencia()+"&preco="+lista.get(num).getEquipamento_ocorrencia()+" '>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_ocorrencia()+"&descricao="+lista.get(num).getDescricao_ocorrencia()+" '>CLIQUE</a></td>");
                        out.print("<tr>");
                    }
                } else {
                    ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                    for(int num = 0; num < lista.size(); num++){
                    out.print("<tr>");
                    out.print("<td>"+lista.get(num).getCodigo_ocorrencia()+"</td>");
                    out.print("<td>"+lista.get(num).getDescricao_ocorrencia()+"</td>");
                    out.print("<td>"+lista.get(num).getEquipamento_ocorrencia()+"</td>");
                    out.print("<td>"+lista.get(num).getData_ocorrencia()+"</td>");
                    out.print("<td>"+lista.get(num).getProfissional_ocorrencia()+"</td>");
                    out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_ocorrencia()+"&descricao="+lista.get(num).getDescricao_ocorrencia()+"&preco="+lista.get(num).getEquipamento_ocorrencia()+" '>CLIQUE</a></td>");
                    out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_ocorrencia()+"&descricao="+lista.get(num).getDescricao_ocorrencia()+" '>CLIQUE</a></td>");
                    out.print("<tr>");
                    
                }
                }
                out.print("</table");
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " +erro);
            }
        
        %>
               
        
        
    </body>
</html>
