
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
        <table border="5" cellspacing="5" width="500">
            <tr align="center">
                <td><h3>SEGUNDO PARCIAL TEM-742</h3>
                <h4>Nombre:Lisbeth Nayely Tola Ticona</h4>
                <h4>Carnet:13408824 LP</h4>
                
                </td>
            </tr>
        </table>
        </div>
        <h1 align="center">Gestión de productos</h1>
        <a href="Inicio?action=add">Nuevo producto</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>descripcion</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th colspan="2"></th>

            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('¿Esta seguro de eliminar el registro?'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
