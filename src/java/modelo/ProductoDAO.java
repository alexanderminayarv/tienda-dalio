package modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class ProductoDAO extends Conexion {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;

    public Producto buscar(int id) {
        Producto p = new Producto();
        String sql = "select * from producto where idProducto= " + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return p;
    }

    //actualizar stock
    public int actualizarstock(int id, int stock) {
        String sql = "update producto set Stock=? where idProducto=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, stock);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    //Listar los productos que se agregan en el carrito
    public Producto listarId(int id) {
        Producto p = new Producto();
        String sql = "select * from producto where idProducto=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
            }
        } catch (Exception e) {
        }
        return p;
    }
    //Listar los productos 

    public List listar() {
        List lista = new ArrayList();
        String sql = "select idProducto, Nombres, Foto, Descripcion, Precio, Stock, Nombre from producto"
                + " p INNER JOIN categoria c on c.idCategoria=p.Categoria";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
                lista.add(p);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public List listar_producto() {
        List lista = new ArrayList();
        String sql = "SELECT p.idProducto, Nombres, SUM(PrecioCompra*Cantidad) as Total FROM detalle_compras dc "
                + "INNER JOIN producto p on p.idProducto=dc.idProducto "
                + "GROUP BY p.idProducto order by 1;";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setId(rs.getInt(1));
                pr.setNombres(rs.getString(2));
                pr.setPrecio(rs.getDouble(3));
                

                lista.add(pr);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    //Mostrar productos segun la categoria motos electricas
    public List listar_motos_electricas() {
        List lista = new ArrayList();
        String sql = "select * from producto where Categoria=1";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
                lista.add(p);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    //Mostrar productos segun la categoria accesorios
    public List listar_accesorios() {
        List lista = new ArrayList();
        String sql = "select * from producto where Categoria=2";
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
                lista.add(p);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    //Mostrar los campos del producto que se seleccionó (product-details)
    public List listarxid(int id) {
        List lista = new ArrayList();
        String sql = "select * from producto where IdProducto=" + id;
        try {
            ps = getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
                p.setId(rs.getInt(1));
                p.setNombres(rs.getString(2));
                p.setFoto(rs.getString(3));
                p.setDescripcion(rs.getString(4));
                p.setPrecio(rs.getDouble(5));
                p.setStock(rs.getInt(6));
                p.setCategoria(rs.getString(7));
                lista.add(p);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public void listarImg(int id, HttpServletResponse response) {
        String sql = "select * from producto where idProducto=" + id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream = response.getOutputStream();
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("Foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }
            //bufferedInputStream.close();
            //bufferedOutputStream.close();
        } catch (Exception e) {
        }
    }

    public int AgregarNuevoProducto(Producto p) {
        String sql = "insert into producto(Nombres,Foto,Descripcion,Precio,Stock,Categoria)values(?,?,?,?,?,?)";
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setString(1, p.getNombres());
            ps.setString(2, p.getFoto());
            ps.setString(3, p.getDescripcion());
            ps.setDouble(4, p.getPrecio());
            ps.setInt(5, p.getStock());
            ps.setString(6, p.getCategoria());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public int EliminarProducto(int id) {
        String sql = "delete from producto where idProducto=" + id;
        try {
            ps = getConnection().prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }

    public int verStock(int id) {
        int cantidad = 0;
        String sql = "select stock from producto where idProducto=" + id;
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

    public int ActualizarProducto(Producto p) {
        String sql = "update producto set Nombres=?,Descripcion=?,Precio=?,Stock=?,"
                + "Categoria=? where idProducto=?";
        try {
            ps = getConnection().prepareStatement(sql);
            ps.setString(1, p.getNombres());
            ps.setString(2, p.getDescripcion());
            ps.setDouble(3, p.getPrecio());
            ps.setInt(4, p.getStock());
            ps.setString(5, p.getCategoria());
            ps.setInt(6, p.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }

        return r;
    }

    public int getCantidadProducto() {
        int cantidad = 0;
        String sql = "select count(*) from producto";
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
