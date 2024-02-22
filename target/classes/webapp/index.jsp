<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Mascota</title>
</head>
<body>
    <h2>Agregar Mascota</h2>
    <form action="agregarMascota.jsp" method="post">
        <label for="nombreMascota">Nombre de la Mascota:</label>
        <input type="text" id="nombreMascota" name="nombreMascota" required><br><br>
        
        <label for="nombreDueno">Nombre del Dueño:</label>
        <input type="text" id="nombreDueno" name="nombreDueno" required><br><br>

        <label for="hora">Hora:</label>
        <input type="time" id="hora" name="hora" required><br><br>

        <input type="submit" value="Agregar Mascota">
    </form>
</body>
</html>