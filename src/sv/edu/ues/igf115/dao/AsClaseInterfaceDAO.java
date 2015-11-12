package sv.edu.ues.igf115.dao;


import org.hibernate.*;
import sv.edu.ues.igf115.dominio.AsClaseInterface;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import java.util.*;

public class AsClaseInterfaceDAO {
	 private HibernateUtil hibernateUtil= new HibernateUtil();
	   
	
	   public void crear(AsClaseInterface asclaseinterface){
	   //Obtener un fabrica de sesiones
	   @SuppressWarnings("static-access")
	   SessionFactory sesionF=hibernateUtil.getSessionFactory();    	   
	   //Obtengo una sesion
	   Session sesion= sesionF.openSession();	   
	   //Obtengo una transacción
	   Transaction transaction= sesion.beginTransaction();
	   //Guardo el registro
	   sesion.saveOrUpdate(asclaseinterface);
	   transaction.commit();
	   sesion.flush();
	   //Cierro la Sesion
	   sesion.close();
	   }
	   
	   public AsClaseInterface obtener(int c_clase_interface){
		 //Obtener un fabrica de sesiones
		   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
		   //Obtengo una sesion
		   Session sesion= sesionF.openSession();
		   //Obtengo el registro
		   Query query= sesion.getNamedQuery("as_clase_interface.findClaseInterface");
	       query.setParameter("c_clase_interface",c_clase_interface);
	       AsClaseInterface asclaseinterface=(AsClaseInterface) query.uniqueResult();
		   //Cierro la Sesion
		   sesion.close();
		   return asclaseinterface;
		   	   }
	    public void borrar(int c_clase_interface){
	   //Obtener un fabrica de sesiones
	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
	   //Obtengo una sesion
	   Session sesion= sesionF.openSession();
	   //Obtengo una transacción
	   Transaction transaction= sesion.beginTransaction();
	   //Guardo el registro
	   sesion.delete(c_clase_interface);
	   transaction.commit();
	   sesion.flush();
	   //Cierro la Sesion
	   sesion.close();
	    }
	   
	    public List<AsClaseInterface> VerTodas(){
	    	//Obtener un fabrica de sesiones
	 	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
	 	   //Obtengo una sesion
	 	   Session sesion= sesionF.openSession();
	 	   //Obtengo el registro
	 	   Query query= sesion.getNamedQuery("as_clase_interface.findAllClaseInterface");
	 	   List<AsClaseInterface> lista=query.list(); 
	 	   //Cierro la Sesion
	 	   sesion.close();
	 	   return lista;
	    }

}
