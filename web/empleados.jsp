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
    
    <form action=" empleados.jsp" method="POST">
        
        <%!
        String id="", nom="",cargo="";  
        conectarHotel cnn;
        %>
        
        <%
         cnn=new conectarHotel();
            if(cnn.getCon()!= null){
                if(request.getParameter("txtId") != null){
                    if(request.getParameter("btnRegistrar")!= null){
                        if(request.getParameter("btnRegistrar").equals("Crear Empleado")){
                        cnn.crearEmpleado(request.getParameter("txtId"),request.getParameter("txtNom"), request.getParameter("txtCargo"));
                        out.println(cnn.getMensaje());
                        cnn.desconectar();
                        }
                    }
                }
            }
        %>
        
        <input type="submit" name="btnRegistrar" value="Crear Empleado" class="boton">
        <ul>
            <li>
                 <input type="text" name="txtId" placeholder="Cédula del Empleado" value="">
            </li>
             <li>
                 <input type="text" name="txtNom" placeholder="Nombre del Empleado" value="">
            </li>
             <li>
                 <select type="text" name="txtCargo">
                       <option selected="...">Rol</option>
                                 <option>Administrador</option>
                                <option>Encargado</option>
                                <option>Operario</option>
                 </select>
                 
            </li>
           <!-- <input type="text" name="txtCargo" placeholder="Cargo del Usuario" value="<%if (cnn!= null){out.println(cargo);} %>">-->
            
            
            
            
        </ul>
        
    </form>
    
    
    
    
    <h2>Lista de Usuarios</h2>
     <table class="content-table">
        <thead>
            <tr>
                <th scope="col">Cédula</th>
                <th scope="col">Nombre Usuario</th>
                <th scope="col">Cargo</th>
               
            </tr>
        </thead>
        <tbody>
            <% 
            conectarHotel cnn = new conectarHotel();
            ResultSet rs = cnn.consultarEmpleado();
            if (rs != null) {
                try {
                    while (rs.next()) {
                        String 	id = rs.getString("Id_empleado");
                        String nombre = rs.getString("Nombre_empleado");
                        String cargo = rs.getString("Cargo");
                       
            %>
                        <tr>
                            <td><%= id %></td>
                            <td><%= nombre %></td>
                            <td><%= cargo %></td>
                          
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

