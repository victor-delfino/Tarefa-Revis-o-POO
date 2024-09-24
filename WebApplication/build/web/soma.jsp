<%-- 
    Document   : soma
    Created on : 24 de set de 2024, 13:49:17
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
         <h1>Soma do 1 até o número Passado</h1>

    <form action="soma.jsp" method="post">
        <label for="soma">Número para Soma:</label>
        <input type="text" id="soma" name="soma" required> <br>
        <input type="submit" value="Enviar">
    </form>
         
        <%
        String somaParam = request.getParameter("soma");
        if (somaParam != null) {
            try {
                int somar = Integer.parseInt(somaParam); 
                int resultadoSoma = 0; 
                out.println("<h2>Soma dos números de 1 até " + somar + " :</h2>");
                out.print("<p>");
                
                for (int i = 1; i <= somar; i++) {
                    resultadoSoma += i;
                   
                }
                
                out.print("</p>");
                out.print(resultadoSoma);
            } catch (NumberFormatException e) {
                out.println("<p>Por favor, insira um número válido.</p>");
            }
        }
    %>
    
    </body>
</html>
