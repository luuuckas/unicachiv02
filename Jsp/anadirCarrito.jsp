<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="Modelo.*" %>
<!DOCTYPE html>
<%
    Producto p=ProductoDB.obtenerProducto(Integer.parseInt(request.getParameter("id")));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Carrito</title>
        <link href="../CSS/cssanadirCarro.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table border="0" width="1000" align="center">
            <tr bgcolor="yellow">
                <th><a href="../index.html">Inicio</a></th>
                <th><a href="categorias.jsp">Catálogo</a></th>
            </tr>
        </table>
        <h2 align="center">Añadir producto a Carrito</h2>
        <table border="0" width="500" align="center">
            <form method="post" action="ServletControlador">
                <tr>
                    <th rowspan="5"><img src="../IMG/img/<%=p.getImagen()%>" width="140" height="140"></th>
                    <th>Código</th>
                    <th><input type="text" name="txtCodigo" value="<%= p.getCodigoProducto()%>" readonly></th>
                </tr><tr>
                    <th>Nombre</th>
                    <th><input type="text" name="txtNombre" value="<%= p.getNombre()%>" readonly></th>
                </tr><tr>
                    <th>Precio</th>
                    <th><input type="text" name="txtPrecio" value="<%= p.getPrecio()%>" readonly></th>
                </tr><tr>
                    <th>Cantidad</th>
                    <th><input type="number" value="0" min="0" name="txtCantidad" value="0"></th>
                </tr><tr>
                    <th colspan="3"><input type="button" value="Añadir" name="btnAnadir"></th>
                </tr>
                <input type="hidden" name="action" value="anadirCarrito">
            </form>
        </table>
    </body>
</html>
