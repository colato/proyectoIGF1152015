package sv.edu.ues.igf115.dao;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.negocio.*;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import org.hibernate.*;

import java.util.*;


public class AsInterfaceDAO {
   private HibernateUtil hibernateUtil= new HibernateUtil();
   
   
   
   public void crear(AsInterface asinterface){
   //Obtener un fabrica de sesiones
   @SuppressWarnings("static-access")
   SessionFactory sesionF=hibernateUtil.getSessionFactory();    	   
   //Obtengo una sesion
   Session sesion= sesionF.openSession();
   //Obtengo una transacción
   Transaction transaction= sesion.beginTransaction();
   //Guardo el registro
   sesion.saveOrUpdate(asinterface);
   transaction.commit();
   sesion.flush();
   //Cierro la Sesion
   sesion.close();
   }
   
   public AsInterface obtener(int c_interface){
	 //Obtener un fabrica de sesiones
	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
	   //Obtengo una sesion
	   Session sesion= sesionF.openSession();
	   //Obtengo el registro
	   Query query= sesion.getNamedQuery("asinterface.findInterface");
       query.setParameter("c_interface",c_interface);
       AsInterface asinterface=(AsInterface) query.uniqueResult();
	   //Cierro la Sesion
	   sesion.close();	
	   return asinterface;
   }
    public void borrar(int c_interface){
   //Obtener un fabrica de sesiones
   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
   //Obtengo una sesion
   Session sesion= sesionF.openSession();
   //Obtengo una transacción
   Transaction transaction= sesion.beginTransaction();
   //Guardo el registro
   sesion.delete(c_interface);
   transaction.commit();
   sesion.flush();
   //Cierro la Sesion
   sesion.close();
    }
   
    public List<AsInterface> VerTodas(){
    	//Obtener un fabrica de sesiones
 	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
 	   //Obtengo una sesion
 	   Session sesion= sesionF.openSession();
 	   //Obtengo el registro
 	   Query query= sesion.getNamedQuery("asinterface.findAllInterface");
 	   List<AsInterface> lista=query.list(); 
 	   //Cierro la Sesion
 	   sesion.close();
 	   return lista;
    }
	
}
