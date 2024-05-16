<%-- 
    Document   : index
    Created on : 9/05/2024, 8:35:33 p. m.
    Author     : jaime
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conectarHotel"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hotel Clariton</title>
<link rel="shortcut icon" href="images/Hotel_logo.png" tipe="image/x-icon" />
<link rel="stylesheet" href="Styles/style.css">
</head>
<body>

<div id="menu">
    <center><img src="images/logo1.png" width="120px"/></center>
    <h2>Hotel Clariton</h2>
    <a href="index.jsp" class="active">Inicio</a>
    <a href="reserva.jsp">Hacer Reserva</a>
    <a href="check_in.jsp">Check-in</a>
    <a href="check_out.jsp">Check-out</a>
    <a href="huesped.jsp">Crear Huesped</a>
    <a href="habitaciones.jsp">Habitaciones</a>
    <a href="servicios.jsp">Servicios</a>
     <a href="empleados.jsp">Empleados</a>
</div>

<div id="contenido">
 
     <div id="logo">
    <a href="index.jsp">
        <center><img src="images/Hotel_logo.png" width="120px" alt="Logo Hotel Clariton"></center>
    </a>
</div>  
    <h2>Servicios</h2>
    

    
    
    
    <h2>Lista de Servicios</h2>
     <table class="content-table">
        <thead>
            <tr>
                <th scope="col">Codigo</th>
                <th scope="col">Descripción</th>
                <th scope =col>Precio</th>
            </tr>
        </thead>
        <tbody>
            <% 
            conectarHotel cnn = new conectarHotel();
            ResultSet rs = cnn.consultarServicios();
            if (rs != null) {
                try {
                    while (rs.next()) {
                        String 	Codigo_habitacion = rs.getString("Codigo_servicio");
                        String Descripcion = rs.getString("Nombre_servicio");
                        int Precio = rs.getInt("valor_servicio");
            %>
                        <tr>
                            <td><%= Codigo_habitacion %></td>
                            <td><%= Descripcion %></td>
                            <td><%=Precio %></td>
                        </tr>
            <% 
                    }
                    rs.close();
                } catch (SQLException ex) {
                    out.println(ex.getMessage());
                } finally {
                    cnn.desconectar();
                }
            }
            %>
        </tbody>
    </table>      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</div>

</body>
</html>

