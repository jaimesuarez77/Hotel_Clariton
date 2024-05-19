<%-- 
    Document   : reserva
    Created on : 15/05/2024, 12:22:39 p. m.
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
    <a href="index.jsp" >Inicio</a>
    <a href="reserva.jsp" class="active">Hacer Reserva</a>
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
 
       <form action="reserva.jsp" method="POST"> 
        <%!
        String id="", nom="",sex="";
        int edad=0;
        conectarHotel cnn;
        %>
        
        <%
         cnn=new conectarHotel();
            if(cnn.getCon()!= null){
                if(request.getParameter("res") != null){
                    if(request.getParameter("btnRegistrar")!= null){
                        if(request.getParameter("btnRegistrar").equals("Hacer Reserva")){
                        String res = request.getParameter("res");
                        String ing = request.getParameter("ing");
                        String sal = request.getParameter("sal");
                        String emp = request.getParameter("emp");
                        String huesp = request.getParameter("huesp");
                        
                        
                        cnn.crearReserva(res,ing,sal,emp,huesp,"Activa");
                        out.println(cnn.getMensaje());
                        cnn.desconectar();
                        }
                    }
                }
            }
        %>
        
        <input type="submit" name="btnRegistrar" value="Hacer Reserva" class="boton">
        <ul>
            <li>
                 <input type="text" name="res" placeholder="Fecha Reserva" value="">
            </li>
             <li>
                 <input type="text" name="ing" placeholder="Fecha de Ingreso" value="">
            </li>
             <li>
                 <input type="text" name="sal" placeholder="Fecha de Salida" value="">
            </li>
             <li>
                 <input type="text" name="emp" placeholder="Cédula Empleado" value="">
            </li>
            <li>
                 <input type="text" name="huesp" placeholder="Codigo Huesped" value="">
            </li>          
            
        </ul>
        
    </form>
  
     <h2>Reservas Activas</h2>
     <table class="content-table">
        <thead>
            <tr>
                <th scope="col">Codigo Reserva</th>
                <th scope="col">Fecha reserva</th>
                <th scope="col">Fecha de ingreso</th>
                <th scope="col">Fecha de salida</th>
                <th scope =col>Cedula Huesped</th>
                <th scope =col>Cedula Empleado</th>
                <th scope =col>Estado</th>
            </tr>
        </thead>
        <tbody>
            <% 
            conectarHotel cnn = new conectarHotel();
            ResultSet rs = cnn.consultarReserva();
            if (rs != null) {
                try {
                    while (rs.next()) {
                        int Co_res = rs.getInt("Codigo_reserva");
                        String res = rs.getString("Fecha_reserva");
                        String ing = rs.getString("Fecha_ingreso");
                        String sal = rs.getString("Fecha_salida");
                        String huesp = rs.getString("Id_huesped");
                        String emp = rs.getString("Id_empleado");
                        String est = rs.getString("Estado");
            %>
                        <tr>
                            <td><%=Co_res %></td>
                            <td><%=res%></td>
                            <td><%=ing %></td>
                            <td><%=sal %></td>
                            <td><%=huesp %></td>
                            <td><%=emp %></td>
                            <td><%=est %></td>
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
