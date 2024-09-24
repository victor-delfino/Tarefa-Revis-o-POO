<%-- 
    Document   : fibonacci
    Created on : 24 de set de 2024, 13:48:58
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sequência de Fibonacci</title>
</head>
<body>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
    
    <h1>Gerar Sequência de Fibonacci</h1>

    <form action="fibonacci.jsp" method="post">
        <label for="fibo">Número de termos:</label>
        <input type="text" id="fibo" name="fibo" required> <br>
        <input type="submit" value="Enviar">
    </form>

    <%
        String fiboParam = request.getParameter("fibo");
        if (fiboParam != null) {
            try {
                int n = Integer.parseInt(fiboParam); 
                int a = 0; 
                int b = 1;
                out.println("<h2>Sequência de Fibonacci até " + n + " termos:</h2>");
                out.print("<p>");
                
                for (int i = 1; i <= n; i++) {
                    out.print(a + " ");
                    int temp = a;
                    a = b;
                    b = temp + b; 
                }
                
                out.print("</p>");
            } catch (NumberFormatException e) {
                out.println("<p>Por favor, insira um número válido.</p>");
            }
        }
    %>
</body>
</html>
