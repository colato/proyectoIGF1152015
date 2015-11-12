package sv.edu.ues.igf115.dao;

import org.hibernate.SessionFactory;


import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import org.hibernate.*;
import java.util.*;
public class AsClaseDAO {
	
	 private HibernateUtil hibernateUtil = new HibernateUtil() ; 
	 @SuppressWarnings("static-access")
	private SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
	 private Session sesion; 
	 private Transaction tx; 
	 private void iniciaOperacion() throws HibernateException  { 
	  sesion = sessionFactory.openSession() ;
	  tx = sesion.beginTransaction() ;
	    }  

	 private void manejaExcepcion(HibernateException he) throws
	      HibernateException   {
	        tx.rollback(); 
	        throw new HibernateException("Ocurrió un error en la capa DAO", he); 
	    } 
	 
	 public void guardaActualiza(AsClase asClase) {
	  try {
	       iniciaOperacion() ;
	          sesion.saveOrUpdate(asClase) ;
	          tx.commit() ;
	             sesion.flush() ;
	     } catch (HibernateException he) {
	       manejaExcepcion(he) ;
	       throw he ;
	     } finally {
	      sesion.close() ; 
	     }
	   }
	 
	   public void eliminar(AsClase asClase) {
	    try {
	       iniciaOperacion() ;
	          sesion.delete(asClase) ;
	          tx.commit() ;
	             sesion.flush() ;
	     } catch (HibernateException he) {
	       manejaExcepcion(he) ;  
	       throw he ;
	     } finally {
	      sesion.close() ; 
	     }
	    }
	 
	 public AsClase daAsClaseById(int cClase){
	      sesion = sessionFactory.openSession() ;
	      Query query = sesion.getNamedQuery("daClaseById");
	      query.setParameter("cClase", cClase);
	      AsClase clase = (AsClase) query.uniqueResult();
	      sesion.close() ;
	      return clase ;
	 }
	 
	 public List<AsClase> daClases() {
	       sesion = sessionFactory.openSession() ;
	        Query query = sesion.getNamedQuery("AsClase.findAll") ;
	        List<AsClase> clases = query.list() ;
	        sesion.close() ;
	     return clases ;
	    }
	 
	 public AsClase daAsClaseByNombre(String dClase) {
	  sesion = sessionFactory.openSession() ;
	  Query query =
	sesion.getNamedQuery("daClaseNombre");
	  query.setParameter("dClase", dClase);
	  AsClase clase = (AsClase) query.uniqueResult();
	     sesion.close() ;
	      return clase ;
	    }
   

}
