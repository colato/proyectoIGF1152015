package sv.edu.ues.igf115.negocio;
import sv.edu.ues.igf115.dominio.AsClase;
import sv.edu.ues.igf115.dominio.TbAplicativo;
import sv.edu.ues.igf115.dominio.TbTipoClase;
import sv.edu.ues.igf115.dao.AsClaseDAO;
import java.util.Date;
import java.util.List;
public class CtrlAsClase {

    private AsClaseDAO daoClase = new AsClaseDAO() ; 
    
    public boolean crearOactualiza(int cClase,String dClase, String cUsuario,Date fIngreso,TbTipoClase tbTipoClase,TbAplicativo tbAplicativo,AsClase asClasep) {
     if (daoClase.daAsClaseById(cClase) == null) {
    	 AsClase asclase= new AsClase(cClase,dClase,cUsuario,fIngreso,tbTipoClase,tbAplicativo,asClasep);
    	 daoClase.guardaActualiza(asclase);
    	 return true ;
     } 
     else  
         return false ;
    }
            
    public boolean eliminarAsClase(int cClase) {
      if(daoClase.daAsClaseById(cClase)!= null){
    	  AsClase asclase = daoClase.daAsClaseById(cClase);
    	  daoClase.eliminar(asclase);
    	  return true;
      }
      else
    	  return false;
  
      }
        
      
      
      public List<AsClase> daClases(){
         return daoClase.daClases();
       }
      
      public AsClase daAsClaseById(int c_clase) {
          return daoClase.daAsClaseById(c_clase) ;
      }
      
      public AsClase daAsClaseByNombre(String dClase) {
           return daoClase.daAsClaseByNombre(dClase) ;
      }

}
