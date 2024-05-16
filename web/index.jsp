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
 
       <form action="index.jsp" method="POST"> 
        <%!
        String id="", nom="",sex="";
        int edad=0;
        conectarHotel cnn;
        %>
        
        <%
         cnn=new conectarHotel();
            if(cnn.getCon()!= null){
                if(request.getParameter("txtId") != null){
                    if(request.getParameter("btnRegistrar")!= null){
                        if(request.getParameter("btnRegistrar").equals("Crear Huesped")){
                        cnn.crearHuesped(request.getParameter("txtId"),request.getParameter("txtNom"), request.getParameter("txtApe"),Integer.parseInt(request.getParameter("txtEdad")),request.getParameter("txtSex"));
                        out.println(cnn.getMensaje());
                        cnn.desconectar();
                        }
                    }
                }
            }
        %>
        
        <input type="submit" name="btnRegistrar" value="Crear Reserva" class="boton">
        <ul>
            <li>
                 <input type="text" name="txtId" placeholder="Cédula del Huesped" value="">
            </li>
             <li>
                 <input type="text" name="txtNom" placeholder="Nombre del Huesped" value="">
            </li>
             <li>
                 <input type="text" name="txtApe" placeholder="Nombre del Usuario" value="">
            </li>
             <li>
                 <input type="text" name="txtEdad" placeholder="Fecha de ingreso" value="">
            </li>
               <li>
                <select name="txtSex">
                    <option value="" selected> Sexo </option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
            </li>
         
            
            
            
            
        </ul>
        
    </form>
  
    
    
    
    
    <h2>Lista de Huespedes</h2>
     <table class="content-table">
        <thead>
            <tr>
                <th scope="col">Cedula</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Edad</th>
                <th scope =col>Genero</th>
            </tr>
        </thead>
        <tbody>
            <% 
            conectarHotel cnn = new conectarHotel();
            ResultSet rs = cnn.consultarHuesped();
            if (rs != null) {
                try {
                    while (rs.next()) {
                        String 	id_cli = rs.getString("Id_huesped");
                        String nom = rs.getString("Nombre_huesped");
                        String ape = rs.getString("Apellido_huesped");
                        int edad = rs.getInt("Edad");
                        String sex = rs.getString("Sexo");
            %>
                        <tr>
                            <td><%= id_cli %></td>
                            <td><%= nom %></td>
                            <td><%= ape %></td>
                            <td><%=edad %></td>
                            <td><%=sex %></td>
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
