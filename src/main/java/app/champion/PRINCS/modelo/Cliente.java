/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.champion.PRINCS.modelo;

/**
 *
 * @author Usuario
 */
public class Cliente {
    
    String idCliente;
    String NombreC;
    String correoC;
    String telefono;
    
    
    
        public Cliente(String idCliente, String NombreC,String correoC, String telefono) {
    this.idCliente = idCliente;
    this.NombreC = NombreC;
    this.correoC = correoC;
    this.telefono = telefono;
   
}
    
    
    public Cliente() {
    
}
       public String getIDCliente() {
        return idCliente;
    }
            public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

       
       public String getNombreC() {
           return NombreC;
       }
               public void setNombreC(String NombreC) {
        this.NombreC = NombreC;
    }
               public String getCorreoC() {
        return correoC;
    }
            public void setCorreoC(String correo) {
        this.correoC = correoC;
    }

       
       public String getTelefono() {
           return telefono;
       }
               public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
               
               
       @Override
    public String toString() {
        return "Cliente{" + "idCliente=" + idCliente + ", Nomre cliente=" + NombreC +", Correo= "+ correoC + ", telefono= "+ telefono + '}';
    }
    
    
    
}
