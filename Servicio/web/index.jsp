<%-- 
    Document   : index
    Created on : 21 feb. 2024, 22:43:15
    Author     : sepy1
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Consulta de Edificios</title>
</head>
<body>
    <h2>Consulta de Edificios</h2>
    <table border="1">
        <tr>
            <th>Id Edificio</th>
            <th>Descripción</th>
            <th>Dirección</th>
            <th>Teléfono 1</th>
            <th>Email</th>
            <th>Sitio Web</th>
            <th>Área de Personas</th>
            <th>Estado</th>
            <th>Teléfono 2</th>
            <th>Fecha de Modificación</th>
            <th>Usuario de Modificación</th>
            <th>Fecha de Registro</th>
            <th>Ubigeo</th>
            <th>Id País</th>
        </tr>

        <% 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://mysql5044.site4now.net/db_a06750_mysql", "a06750_mysql", "Luciana2024");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM edificio");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("Id_Edificio") + "</td>");
                out.println("<td>" + rs.getString("vc_Descripcio") + "</td>");
                out.println("<td>" + rs.getString("vc_Direccion") + "</td>");
                out.println("<td>" + rs.getString("nu_Telefono1") + "</td>");
                out.println("<td>" + rs.getString("vc_email") + "</td>");
                out.println("<td>" + rs.getString("vc_WebSite") + "</td>");
                out.println("<td>" + rs.getString("nu_AreaPersonas") + "</td>");
                out.println("<td>" + rs.getString("ch_Estado") + "</td>");
                out.println("<td>" + rs.getString("nu_Telefono2") + "</td>");
                out.println("<td>" + rs.getString("dt_FechaModificacion") + "</td>");
                out.println("<td>" + rs.getString("UserId_Mod") + "</td>");
                out.println("<td>" + rs.getString("dt_FechaRegistro") + "</td>");
                out.println("<td>" + rs.getString("ch_ubigeo") + "</td>");
                out.println("<td>" + rs.getString("Id_Pais") + "</td>");
                out.println("</tr>");
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
        %>
    </table>
</body>
</html>
