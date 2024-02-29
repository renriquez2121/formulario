<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>clientes</h1>

 <button>
 <a href="${pageContext.request.contextPath}/clientes/findOne?opcion=1">Agregar</a>
 </button>

<table>
 <thead>
 <tr>
     <th>idCliente</th>
     <th>cedula</th>
     <th>nombre</th>
     <th>apellido</th>
     <th>edad</th>
     <th>fechaNacimiento</th>
     <th>direccion</th>
     <th>telefono</th>
     <th>correo</th>
     <th>Acciones</th>
     </tr>
     
  <thead>
  <tbody>
  <c:forEach var="item" items="${clientes}">
     <tr>
	     <td> ${item.idCliente}</td>
	     <td>${item.cedula}</td>
	     <td>${item.nombre}</td>
	     <td>${item.apellido}</td>
	     <td>${item.edad}</td>
	     <td>${item.fechaNacimiento}</td>
	     <td>${item.direccion}</td>
	     <td>${item.telefono}</td>
	     <td>${item.correo}</td>	     
	     <td>
		    <button><a href="${pageContext.request.contextPath}/clientes/findOne?idCliente=${item.idCliente}&opcion=1">Actualizar</a></button>
		    <button><a href="${pageContext.request.contextPath}/clientes/findOne?idCliente=${item.idCliente}&opcion=2">Eliminar</a></button>
	     </td>
	    
     </tr>
     </c:forEach>
</tbody>
</table>

</body>
</html>