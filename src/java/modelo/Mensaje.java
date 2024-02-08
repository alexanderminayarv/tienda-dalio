/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author minay
 */
public class Mensaje {
    int id;
    String mensaje;
    String id_cliente;

    public Mensaje() {
    }

    public Mensaje(int id, String mensaje, String id_cliente) {
        this.id = id;
        this.mensaje = mensaje;
        this.id_cliente = id_cliente;
    }

    
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(String id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    
}
