<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Modelo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="../CSS/cssCat.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table border="0" width="1000" align="center">
            <tr bgcolor="yellow">
                <th><a href="../index.html">Inicio</a></th>
                <th><a href="categorias.jsp">Catálogo</a></th>
                <th>
                <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dropdown
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                  </li>
            </ul>
</th>
        </table>
        <h2 align="center">Catálogo de Productos</h2>
        <table border="0" width="1000" align="center">
            <!-- traer lista de bd productos -->
            <%
                ArrayList<Producto> lista = ProductoDAO.obtenerProducto();
                int salto = 0;
                for (Producto p : lista) {

            %>
            <th><img src="../IMG/img/<%=p.getImagen()%>" width="140" height="140"><p>
                    <%= p.getNombre()%><br>
                <%= p.getPrecio()%><p>
                    <a href="anadirCarrito.jsp?id=<%= p.getCodigoProducto()%>">Añadir</a>
            </th>
            <%
                salto++;
                if (salto==4) {
                        
                    
            %>
            <tr>
            <%
                salto=0;
                }}
            %>

        </table>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
