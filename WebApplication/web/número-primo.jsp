<%-- 
    Document   : número-primo
    Created on : 24 de set de 2024, 13:51:18
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Número Primo</title>
</head>
<body>
    <%@include file="WEB-INF/jspf/menu.jspf" %>

    <h1>Verificar se o Número é Primo</h1>

    <form action="número-primo.jsp" method="post">
        <label for="numprimo">Verificar número</label>
        <input type="text" id="numprimo" name="numprimo" required> <br>
        <input type="submit" value="enviar">
    </form>

    <%
        String numParam = request.getParameter("numprimo");
        if (numParam != null) {
            try {
                int numero = Integer.parseInt(numParam);
                int contador = 0; 
                Set<Integer> divisores = new HashSet<>(); 

                
                for (int i = 1; i <= numero; i++) {
                    if (numero % i == 0) {
                        contador++;
                        divisores.add(i); 
                    }
                }

               
                if (contador == 2) { 
                    out.println("<p>O número " + numero + " é primo.</p>");
                } else {
                    out.print("<p>O número " + numero + " não é primo. Seus divisores são: ");
                    for (int d : divisores) {
                        out.print(d + " "); 
                    }
                    out.println("</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Por favor, insira um número válido.</p>");
            }
        }
    %>
</body>
</html>
