package sv.edu.ues.igf115.negocio;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.dao.*;
import java.util.*;




public class CtrlAsInterface {
	
    AsInterfaceDAO interfaceDao= new AsInterfaceDAO();
	public boolean crearAsInterface(int c_interface, String d_interface, String c_usuario, Date f_ingreso){
	if(interfaceDao.obtener(c_interface)==null){
		//se agrega el nuevo registro
		AsInterface nuevo= new AsInterface(c_interface, d_interface, c_usuario, f_ingreso);
		interfaceDao.crear(nuevo);
		return true;
	}else 
		return false;
    	
	}
	
	public boolean borrarAsInterface(int c_interface){
	AsInterface asinterface =interfaceDao.obtener(c_interface);	
     if(asinterface!=null){
    	 // se borrar el registro
    	 interfaceDao.borrar(c_interface);
    	 return true;
     } else {
    	 // no existe registro
    	 return false;
     }
		
		
	}
	
	public AsInterface verAsInterface(int c_interface){
	AsInterface asinterface =interfaceDao.obtener(c_interface);	
	if(asinterface!=null){
		// se retorna el registro 
		return asinterface;
	}else // no existe registro
	   return null;
	}
	
	public List <AsInterface> verTodasInterface(){
	
	   return interfaceDao.VerTodas();
	
	
   }
}
