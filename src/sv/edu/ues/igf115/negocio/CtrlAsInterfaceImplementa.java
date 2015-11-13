package sv.edu.ues.igf115.negocio;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.dao.*;
import java.util.*;



public class CtrlAsInterfaceImplementa {
	
   AsInterfaceImplementaDAO implementaDao= new AsInterfaceImplementaDAO();
   public boolean crearAsInterfaceImplementa(int c_interface_implementa, AsInterface c_interface_hijo, AsInterface c_interface_padre){
		if(implementaDao.obtener(c_interface_implementa)==null){
			//se agrega el nuevo registro
			AsInterfaceImplementa nuevo= new AsInterfaceImplementa(c_interface_implementa, c_interface_hijo, c_interface_padre);
			implementaDao.crear(nuevo);
			return true;
		}else 
			return false;
	    	
		}
		

		public boolean borrarAsInterfaceImplementa(int c_interface_implementa){
		AsInterfaceImplementa asimplementa =implementaDao.obtener(c_interface_implementa);	
	     if(asimplementa!=null){
	    	 // se borrar el registro
	    	 implementaDao.borrar(c_interface_implementa);
	    	 return true;
	     } else {
	    	 // no existe registro
	    	 return false;
	     }
			
			
		}
		
		public AsInterfaceImplementa verAsInterfaceImplementa(int c_interface_implementa){
		AsInterfaceImplementa asimplementa =implementaDao.obtener(c_interface_implementa);	
		if(asimplementa!=null){
			// se retorna el registro 
			return asimplementa;
		}else // no existe registro
		   return null;
		}
		
		public List<AsInterfaceImplementa> verTodasInterfaceImplementa(){
		
	    return implementaDao.VerTodas();
		}
		
		}
