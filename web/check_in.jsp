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
<%@page import ="java.text.SimpleDateFormat"%>
<%@page import=" java.util.Date"%>

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
  
      <form action="check_in.jsp" method="POST"> 
          <%!
              String txtId_huesp = "";
              String txtId_usu = "";
              String txtId_reserva = "";
              String fecha_ingreso_str = "";
              String hora_ingreso = "";
              String fecha_salida_str = "";
              String txtEqui = "";
              int txtN_Ad = 0;
              int txtN_Ni = 0;
              String txtEst = "";
              int chec = 0;
              conectarHotel cnn;
          %>
        
        <%
         cnn = new conectarHotel();

// Verifica si la conexión a la base de datos es exitosa
if (cnn.getCon() != null) {
    // Verifica si se han enviado los parámetros necesarios
    if (request.getParameter("txtId_huesp") != null) {
        int id_cheCont =+ 1;  
        // Verifica si se ha hecho clic en el botón "Hacer Check-in"
        if (request.getParameter("btnRegistrar") != null && request.getParameter("btnRegistrar").equals("Hacer Check-in")) {
            // Obtiene los parámetros de la solicitud
            String txtId_huesp = request.getParameter("txtId_huesp");
            String txtId_usu = request.getParameter("txtId_usu");
            String txtId_reserva = request.getParameter("txtId_reserva");
            String fecha_ingreso = request.getParameter("fecha_ingreso");
            String hora_ingreso = request.getParameter("hora_ingreso");
            String fecha_salida = request.getParameter("fecha_salida");
            String txtEqui = request.getParameter("txtEqui");
            int txtN_Ad = Integer.parseInt(request.getParameter("txtN_Ad"));
            int txtN_Ni = Integer.parseInt(request.getParameter("txtN_Ni"));
            String txtEst = request.getParameter("txtEst");

         

            // Llamar a la función hacerCheck_in con los datos convertidos
            cnn.hacerCheck_in(txtId_huesp, txtId_usu, txtId_reserva, fecha_ingreso, hora_ingreso, fecha_salida, txtEqui, txtN_Ad, txtN_Ni, "activo");
            
            // Imprime el mensaje resultante
            out.println(cnn.getMensaje());
            
            // Desconectar la base de datos
            cnn.desconectar();
        }
    }
    
       if(request.getParameter("btnBuscar")!= null){
                        if(request.getParameter("btnBuscar").equals("Buscar Check-in")){
                        cnn.consultarID_Check();
                        out.println(cnn.getMensaje());
                        chec=cnn.getId_check();
                        cnn.desconectar();
                        
                    }
                }
    
    
    
    
}
        %>
        
        <input type="submit" name="btnRegistrar" value="Hacer Check-in" class="boton">
        <table>
            <td width="600px">
        <ul>
            <li>
                 <input type="text" name="txtId_huesp" placeholder="Cédula del Huesped" value="">
            </li>
            <li>
                 <input type="text" name="txtId_usu" placeholder="Cédula del Empleado" value="">
            </li>
             <li>
                 <input type="text" name="txtId_reserva" placeholder="Codigo de la Reserva" value="">
            </li>
          
             <li>
                 <select type="text" name="txtEqui">
                       <option selected="...">LLeva Equipaje</option>
                                 <option>Si</option>
                                <option>No</option>  
                 </select>
            <li>
                 <input type="number" name="txtN_Ad" placeholder="Número de Adultos" value="">
            </li>
             <li>
                 <input type="number" name="txtN_Ni" placeholder="Número de Niños" value="">
            </li>
               
        </ul> 
                </td>
            
            <td>
        <ul>
              <li>
                <label>Fecha Ingreso</label>
                 <input type="date" name="fecha_ingreso" >
            </li>
             <li>
                  <label>Hora Ingreso</label>
                 <input type="time" name="hora_ingreso" >
            </li>
             <li>
                <label>Fecha Salida</label>
                 <input type="date" name="fecha_salida" >
            </li>
            
            
        </ul>
                </td>
            </table>
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

