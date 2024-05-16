package conexion;

import java.sql.*;
import com.mysql.jdbc.Connection;
public class conectarHotel {
     Connection con=null;
    private String db="hotel_final";//Nombre de la base de datos
    private String url="jdbc:mysql://localhost:3306/"+db;
    private String user="root"; // usuario de la base de datos
    private String pass="";//clave de la base de datos
    private String SQL;
    private String mensaje;
    //Variables de la tabla usuario
    private String id;
    private String nom;
    private String cargo;
   //variable par el id del Check-in
    private int id_check;

    public int getId_check() {
        return id_check;
    }

    public void setId_check(int id_check) {
        this.id_check = id_check;
    }
    

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }

    public String getDb() {
        return db;
    }

    public void setDb(String db) {
        this.db = db;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getSQL() {
        return SQL;
    }

    public void setSQL(String SQL) {
        this.SQL = SQL;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

   

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
    

    public conectarHotel() {
         try{
        Class.forName("com.mysql.jdbc.Driver");
        con=(Connection)DriverManager.getConnection(url,user,pass);
        mensaje="Conectado";
        }catch(SQLException | ClassNotFoundException ex){
        mensaje=ex.getMessage();} 
    }
    
    
       public ResultSet consultarHabitaciones() {
    ResultSet rs = null;
    try {
        String SQL = "SELECT * FROM `habitacion`";
        PreparedStatement ps = con.prepareStatement(SQL);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        mensaje = ex.getMessage();
    }
    return rs;
} 
           public ResultSet consultarServicios() {
    ResultSet rs = null;
    try {
        String SQL = "SELECT * FROM `servicio`";
        PreparedStatement ps = con.prepareStatement(SQL);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        mensaje = ex.getMessage();
    }
    return rs;
} 
            public ResultSet consultarEmpleado() {
    ResultSet rs = null;
    try {
        String SQL = "SELECT * FROM `empleado`";
        PreparedStatement ps = con.prepareStatement(SQL);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        mensaje = ex.getMessage();
    }
    return rs;
} 
            
         public void crearEmpleado(String id,String nom,String cargo){
         
        try{
            SQL="insert into empleado values (?,?,?)";
            //crear sentencia preparada
            PreparedStatement ps=con.prepareStatement(SQL);
            ps.setString(1, id);
            ps.setString(2, nom);
            ps.setString(3, cargo);
            ps.executeUpdate();
            mensaje="Trasacción exitosa";
            ps.close();
            //crear un juego de resultados
         
        }catch(SQLException ex){
        mensaje=ex.getMessage();
        }
           } 
        
          public void crearHuesped(String id,String nom,String ape,int edad,String sex){
         
        try{
            SQL="insert into huesped values (?,?,?,?,?)";
            //crear sentencia preparada
            PreparedStatement ps=con.prepareStatement(SQL);
            ps.setString(1, id);
            ps.setString(2, nom);
            ps.setString(3, ape);
            ps.setInt(4,edad);
            ps.setString(5,sex);
            ps.executeUpdate();
            mensaje="Trasacción exitosa";
            ps.close();
            //crear un juego de resultados
         
        }catch(SQLException ex){
        mensaje=ex.getMessage();
        }
           } 
              public void crearReserva(String res,String ing,String sal,String emp,String huesp, String est){
         
        try{
            SQL="insert into reserva (Fecha_reserva,Fecha_ingreso,Fecha_salida,Id_empleado,Id_huesped,Estado) values (?,?,?,?,?,?)";
            //crear sentencia preparada
            PreparedStatement ps=con.prepareStatement(SQL);
            ps.setString(1, res);
            ps.setString(2, ing);
            ps.setString(3, sal);
            ps.setString(4,emp);
            ps.setString(5,huesp);
            ps.setString(6,est);          
            ps.executeUpdate();
            mensaje="Trasacción exitosa";
            ps.close();
            //crear un juego de resultados
         
        }catch(SQLException ex){
        mensaje=ex.getMessage();
        }
           }
          
           public void hacerCheck_in(String id_cli, String id_emp, String cod_res, String fechaI, String hora, String equi , String fechaS, int adul, int nin, String est){
         
        try{
            SQL="insert into `check-in` (Id_huesped,Id_empleado,Codigo_reserva,Fecha_ingreso,Hora_ingreso,Equipaje,Fecha_salida,Numero_adultos,Numero_ninos,Estado) values (?,?,?,?,?,?,?,?,?,?)";
            //crear sentencia preparada
            PreparedStatement ps=con.prepareStatement(SQL);
            ps.setString(1, id_cli);
            ps.setString(2, id_emp);
            ps.setString(3, cod_res);
            ps.setString(4,fechaI);
            ps.setString(5,hora);
            ps.setString(6,equi);
            ps.setString(7,fechaS);
            ps.setInt(8,adul);
            ps.setInt(9,nin);
            ps.setString(10,est);
            ps.executeUpdate();
            mensaje="Trasacción exitosa";
            ps.close();
            //crear un juego de resultados
         
        }catch(SQLException ex){
        mensaje=ex.getMessage();
        }
           } 
           
           
           
                     public ResultSet consultarID_Check() {
    ResultSet rs = null;
    try {
        String SQL = "SELECT `Codigo_check-in` FROM `check-in` ORDER BY `Codigo_check-in` DESC LIMIT 1  ";
        PreparedStatement ps = con.prepareStatement(SQL);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        mensaje = ex.getMessage();
    }
    return rs;
}        
         
                 public ResultSet consultarHuesped() {
    ResultSet rs = null;
    try {
        String SQL = "SELECT * FROM `huesped`";
        PreparedStatement ps = con.prepareStatement(SQL);
        rs = ps.executeQuery();
    } catch (SQLException ex) {
        mensaje = ex.getMessage();
    }
    return rs;
} 
    
    //Metodo para desconectar
    public void desconectar(){
        try{
        con.close();//cierra la conexion
        }catch(SQLException ex){
        mensaje=ex.getMessage();}
    }//cierre del metodo
    
    
    
    
}//cierre conectarHotel
