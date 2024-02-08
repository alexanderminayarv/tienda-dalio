package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO extends Conexion {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public Cliente Validar(String email, String pass) {
        String sql = "select * from cliente where Email=? and Password=?";
        Cliente c = new Cliente();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setDireccion(rs.getString(4));
                c.setEmail(rs.getString(5));
                c.setPass(rs.getString(6));
                c.setRol(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return c;
    }

    public List listar() {
        List lista = new ArrayList();
        String sql = "SELECT idCliente, Dni, Nombres, Direccion, Email, Rol from `cliente` where Rol ='Usuario'";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente c = new Cliente();
                c.setId(rs.getInt(1));
                c.setDni(rs.getString(2));
                c.setNombres(rs.getString(3));
                c.setDireccion(rs.getString(4));
                c.setEmail(rs.getString(5));
                c.setRol(rs.getString(6));
                
                lista.add(c);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public int AgregarCliente(Cliente c) {
        String sql = "INSERT INTO cliente (Dni, Nombres, Direccion, Email, Password,Rol)values(?,?,?,?,?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getDni());
            ps.setString(2, c.getNombres());
            ps.setString(3, c.getDireccion());
            ps.setString(4, c.getEmail());
            ps.setString(5, c.getPass());
            ps.setString(6, c.getRol());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;
    }

    public int getCantidadCliente() {
        int cantidad = 0;
        String sql = "select count(*) from cliente where Rol='Usuario'";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                cantidad = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return cantidad;
    }

}
