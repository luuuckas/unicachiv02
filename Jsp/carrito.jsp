<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Modelo.*" %>
<%@page import="ModeloDAO.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <jsp:include page="navegacion.jsp"/>  
        <div class="container-fluid mt-2">
            <h5>Catálogo de Productos</h5>
            <hr />
            
            <div class="row">
                <%
                    ArrayList<Producto> lista = ProductoDAO.obtenerProducto();
                    for (Producto p : lista) {
                %>

                    <div class="col-sm-3 mt-1">
                        <form action="../CarritoControlador" method="get">
                        <div class="card">
                            <img src="../IMG/img/<%=p.getImagen()%>" width="100" alt="10">
                            <div class="card-body">
                                <p class="fw-bold"><%= p.getNombre()%></p>
                                <input type="hidden" name="accion" value="agregar">
                                <input type="hidden" name="codigoProducto" value="<%= p.getCodigoProducto()%>">
                                <div class="d-flex justify-content-between align-items-center">
                                    <button type="button" class="btn btn-sm btn-primary">
                                        <i class="fa fa-shopping-cart"></i> Agregar al Carrito
                                    </button>
                                    <small class="fw-bold">S/.<%= p.getPrecio()%><br> </small>
                                </div>
                            </div>
                        </div>
                                </form>
                    </div>
                <%
                    }
                %>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
