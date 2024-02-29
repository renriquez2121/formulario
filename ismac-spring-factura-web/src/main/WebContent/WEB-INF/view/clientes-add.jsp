<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Clientes </h1>

<form action="add" method="POST">
idCliente
<input type="hidden" id="idCliente" name="idCliente"value="${cliente.idCliente }"/>
<br/><br>
Cedula
<input type="text" id="cedula" name="cedula"value="${cliente.cedula}"/>
<br/><br>
Nombre
<input type="text" id="nombre" name="nombre"value="${cliente.nombre }"/>
<br/><br>
Apellido
<input type="text" id="apellido" name="apellido"value="${cliente.apellido}"/>
<br/><br>
edad
<input type="number" id="edad" name="edad"value="${cliente.edad }"/>
<br/><br>
FechaNacimiento
<input type="date" id="fechaNacimiento" name="fechaNacimiento"value="${fn:substring(cliente.fechaNacimiento,0,10) }"/>
<br/><br>
Direccion
<input type="text" id="direccion" name="direccion"value="${cliente.direccion}"/>
<br/><br>
Telefono
<input type="text" id="telefono" name="telefono"value="${cliente.telefono }"/>
<br/><br>
Correo
<input type="email" id="correo" name="correo"value="${cliente.correo }"/>
<br/><br>

<button type="submit">Guardar</button>
<button type="button" onClick="window.location.href='/ismac-spring-factura-web/clientes/findAll'; return false">Cancelar</button>

</form>

</body>
</html>