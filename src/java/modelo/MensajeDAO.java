/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author minay
 */
public class MensajeDAO extends Conexion{

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List listar() {
        List lista = new ArrayList();
        String sql = "select idMensaje, Mensaje, Nombres from mensaje m INNER JOIN cliente c on c.idCliente=m.idCliente;";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Mensaje men = new Mensaje();
                men.setId(rs.getInt(1));
                men.setMensaje(rs.getString(2));
                men.setId_cliente(rs.getString(3));
                lista.add(men);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public int AgregarMensaje(Mensaje m) {
        String sql = "INSERT INTO mensaje (mensaje,idCliente)values(?,?)";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, m.getMensaje());
            ps.setString(2, m.getId_cliente());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 1;
    }
}
