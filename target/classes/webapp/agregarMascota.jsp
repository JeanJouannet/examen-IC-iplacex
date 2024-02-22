<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado</title>
</head>
<body>
    <h2>Resultado</h2>
    <%!
        static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        static final String DB_URL = "jdbc:mysql://localhost:3306/iplacex";
        static final String USER = "root";
        static final String PASS = "admin";
    %>
    <%
        Connection conn = null;
        Statement stmt = null;
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            
            String nombreMascota = request.getParameter("nombreMascota");
            String nombreDueno = request.getParameter("nombreDueno");
            String hora = request.getParameter("hora");
            
            String sql = "INSERT INTO tabla_mascotas (nombreMascota, nombreDueno, hora) VALUES ('" + nombreMascota + "', '" + nombreDueno + "', '" + hora + "')";
            stmt.executeUpdate(sql);
            
            out.println("Mascota agregada correctamente.");
        } catch (SQLException se) {
            out.println("Error al conectar a la base de datos: " + se.getMessage());
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                out.println("Error al cerrar la conexión: " + se.getMessage());
            }
        }
    %>
</body>
</html>
