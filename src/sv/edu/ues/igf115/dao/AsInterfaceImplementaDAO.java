package sv.edu.ues.igf115.dao;
import org.hibernate.*;


import sv.edu.ues.igf115.dominio.AsInterfaceImplementa;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import java.util.*;

public class AsInterfaceImplementaDAO {
	private HibernateUtil hibernateUtil= new HibernateUtil();
	   
	
	   public void crear(AsInterfaceImplementa asinterfaceimp){
	   //Obtener un fabrica de sesiones
	   @SuppressWarnings("static-access")
	   SessionFactory sesionF=hibernateUtil.getSessionFactory();    	   
	   //Obtengo una sesion
	   Session sesion= sesionF.openSession();
	   //Obtengo una transacción
	   Transaction transaction= sesion.beginTransaction();
	   //Guardo el registro
	   sesion.saveOrUpdate(asinterfaceimp);
	   transaction.commit();
	   sesion.flush();
	   //Cierro la Sesion
	   sesion.close();
	   }
	   
	   public AsInterfaceImplementa obtener(int c_interface_implementa){
		 //Obtener un fabrica de sesiones
		   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
		   //Obtengo una sesion
		   Session sesion= sesionF.openSession();
		   //Obtengo el registro
		   Query query= sesion.getNamedQuery("AS_interface_implementa.findInterfaceImplementa");
	       query.setParameter("c_interface_implementa",c_interface_implementa);
	       AsInterfaceImplementa asinterfaceimp=(AsInterfaceImplementa) query.uniqueResult();
		   //Cierro la Sesion
		   sesion.close();	   
		   return asinterfaceimp;
	   }
	    public void borrar(int c_interface_implementa){
	   //Obtener un fabrica de sesiones
	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
	   //Obtengo una sesion
	   Session sesion= sesionF.openSession();
	   //Obtengo una transacción
	   Transaction transaction= sesion.beginTransaction();
	   //Guardo el registro
	   sesion.delete(c_interface_implementa);
	   transaction.commit();
	   sesion.flush();
	   //Cierro la Sesion
	   sesion.close();
	    }
	   
	    public List<AsInterfaceImplementa> VerTodas(){
	    	//Obtener un fabrica de sesiones
	 	   SessionFactory sesionF = hibernateUtil.getSessionFactory();    	   
	 	   //Obtengo una sesion
	 	   Session sesion= sesionF.openSession();
	 	   //Obtengo el registro
	 	   Query query= sesion.getNamedQuery("as_interface_implementa.findAllInterfaceImplementa");
	 	   List<AsInterfaceImplementa> lista=query.list(); 
	 	   //Cierro la Sesion
	 	   sesion.close();
	 	   return lista;
	    }
	
	
	
}
