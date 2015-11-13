package sv.edu.ues.igf115.negocio;

import sv.edu.ues.igf115.dao.AsClaseInterfaceDAO;
import sv.edu.ues.igf115.dominio.*;

import java.util.*;


public class CtrlAsClaseInterface {
	AsClaseInterfaceDAO claseDao= new AsClaseInterfaceDAO();
	public boolean crearAsClaseInterface(int c_clase_interface, AsClase asclase, AsInterface asinterface){
	if(claseDao.obtener(c_clase_interface)==null){
		//se agrega el nuevo registro
		AsClaseInterface nuevo= new AsClaseInterface(c_clase_interface, asclase, asinterface);
		claseDao.crear(nuevo);
		return true;
	}else 
		return false;
    	
	}
	
	public boolean borrarAsClaseInterface(int c_clase_interface){
	AsClaseInterface asclase =claseDao.obtener(c_clase_interface);	
     if(asclase!=null){
    	 // se borrar el registro
    	 claseDao.borrar(c_clase_interface);
    	 return true;
     } else {
    	 // no existe registro
    	 return false;
     }
		
		
	}
	
	public AsClaseInterface verAsClaseInterface(int c_clase_interface){
	AsClaseInterface asclase =claseDao.obtener(c_clase_interface);	
	if(asclase!=null){
		// se retorna el registro 
		return asclase;
	}else // no existe registro
	   return null;
	}
	
	public List<AsClaseInterface> verTodasClaseInterface(){
	
	   return claseDao.VerTodas();
	
	
	}
	}
