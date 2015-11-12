package sv.edu.ues.igf115.negocio;

import java.util.Date;
import java.util.List;

import sv.edu.ues.igf115.dao.TbTipoClaseDAO;
import sv.edu.ues.igf115.dominio.TbTipoClase;


public class CtrlTbTipoClase {
	
	 private  TbTipoClaseDAO daoTbTipoClase = new TbTipoClaseDAO() ; 
	    
	    public boolean crearTipoClase(String cTipoClase,String dTipoClase,Date fIngreso) {
	    	//Verifica si exite el registro en la tabla
	       if(daoTbTipoClase.daTbTipoClaseById(cTipoClase)==null){
	    	 TbTipoClase tbtipoclase = new TbTipoClase(cTipoClase,dTipoClase,fIngreso);
	    	 daoTbTipoClase.guardaOrUpdate(tbtipoclase);
	    	 return true;
	     }
	     else  
	         return false ;
		
	    }
	            
	    public boolean eliminarTbTipoClase(String dTipoClase) {
	      if(daoTbTipoClase.daTbTipoClaseByNombre(dTipoClase)!= null){
	    	  TbTipoClase tbtipoclase = daoTbTipoClase.daTbTipoClaseByNombre(dTipoClase);
	    	  daoTbTipoClase.eliminar(tbtipoclase);
	    	  return true;
	      }
	      else
	    	  return false;
	  
	      }
	       
	      public boolean modificarTipoClase(String cTipoClase,String dTipoClase, Date fIngreso) {
	         if(daoTbTipoClase.daTbTipoClaseById(cTipoClase)!= null) {
	         TbTipoClase tbtipoclase = daoTbTipoClase.daTbTipoClaseById(cTipoClase);
	         tbtipoclase.setcTipoClase(cTipoClase);
	         tbtipoclase.setdTipoClase(dTipoClase);
	         tbtipoclase.setfIngreso(fIngreso);
	         daoTbTipoClase.guardaOrUpdate(tbtipoclase);
	         
	       return true ;
	            }
	         else 
	        return false ;
	      }
	      
	      
	      public List<TbTipoClase> daTbTipoClases(){
	         return daoTbTipoClase.daTbTipoClases();
	       }
	      
	      public TbTipoClase daAsTipoClaseById(String cTipoClase) {
	          return daoTbTipoClase.daTbTipoClaseById(cTipoClase) ;
	      }
	      
	      public TbTipoClase daTipoClaseByNombre(String dTipoClase) {
	           TbTipoClase tbTipoClase = daoTbTipoClase.daTbTipoClaseByNombre(dTipoClase);
	           if(tbTipoClase==null)
	        	   return null;
	           else
	        	   return tbTipoClase;
	      }


}
