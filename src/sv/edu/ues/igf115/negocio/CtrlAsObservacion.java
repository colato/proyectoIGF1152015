package sv.edu.ues.igf115.negocio;

import java.util.Date;
import java.util.List;

import sv.edu.ues.igf115.dao.AsObservacionDAO;
import sv.edu.ues.igf115.dominio.AsAtributo;
import sv.edu.ues.igf115.dominio.AsClase;
import sv.edu.ues.igf115.dominio.AsMetodo;
import sv.edu.ues.igf115.dominio.AsObservacion;
import sv.edu.ues.igf115.dominio.AsParametro;


public class CtrlAsObservacion {
private AsObservacionDAO daoObservacion = new AsObservacionDAO() ; 
    
    public boolean crearObservacion(int cObservacion,String dObservacion, String cUsuario, Date fIngreso, int bActivo,AsMetodo asMetodo, AsAtributo asAtributo, AsParametro asParametro, AsClase asClase) {
    	if (daoObservacion.daAsObservacionByNombre(dObservacion) == null ) {
            if (asClase != null) {
            	AsObservacion asobservacion = new AsObservacion(cObservacion,dObservacion,cUsuario, fIngreso,bActivo,asMetodo,asAtributo,asParametro,asClase);
                daoObservacion.guardaActualiza(asobservacion);
                
                return true ; 
            }
            else
             return false ;
           }
           else
            return false ;
         }
    
	 public boolean borrarObservacion(String dObservacion) {
	        if (daoObservacion.daAsObservacionByNombre(dObservacion) != null ) {
	        	AsObservacion asObservacion = daoObservacion.daAsObservacionByNombre(dObservacion);
	        	daoObservacion.eliminar(asObservacion);
		         return true ;
		        }
		    else 
		     return false ;
		        
		    }

       /*   
      public boolean modificarAsClase(String nombreDepto, String ciudad) {
         if(daoDepto.daDepartamentoByNombre(nombreDepto) != null) {
         Departamento departamento = daoDepto.daDepartamentoByNombre(nombreDepto) ;
         departamento.setCiudad(ciudad) ;
         daoDepto.guardaActualiza(departamento) ;
       return true ;
            }
         else 
        return false ;
      }*/
      
      
      public List<AsObservacion> daObservaciones(){
         return daoObservacion.daAsObservaciones();
       }
      
      public AsObservacion daAsObservacionById(int cObservacion) {
          return daoObservacion.daAsObservacionById(cObservacion) ;
      }
      
      public AsObservacion daAsObservacionByNombre(String dObservacion) {
           return daoObservacion.daAsObservacionByNombre(dObservacion);
      }

}
