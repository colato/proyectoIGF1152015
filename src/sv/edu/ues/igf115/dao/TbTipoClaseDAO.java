	package sv.edu.ues.igf115.dao;

import java.util.List;

import org.hibernate.*;

import sv.edu.ues.igf115.dominio.TbTipoClase;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;

public class TbTipoClaseDAO {
	
	private HibernateUtil hibernateUtil = new HibernateUtil() ; 
	
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
	 
	 public void guardaOrUpdate(TbTipoClase tbTipoClase) {
	  
	          iniciaOperacion() ;
	          sesion.saveOrUpdate(tbTipoClase) ;
	          tx.commit() ;
	           sesion.flush() ;
	           sesion.close() ; 
	     
	   }
	 
	   public void eliminar(TbTipoClase tbTipoClase) {
	    try {
	       iniciaOperacion() ;
	          sesion.delete(tbTipoClase) ;
	          tx.commit() ;
	             sesion.flush() ;
	     } catch (HibernateException he) {
	       manejaExcepcion(he) ;  
	       throw he ;
	     } finally {
	      sesion.close() ; 
	     }
	    }
	 
	 public TbTipoClase daTbTipoClaseById(String cTipoClase){
	      sesion = sessionFactory.openSession() ;
	     Query query = sesion.getNamedQuery("daTipoClaseById");
	     query.setString("cTipoClase", cTipoClase);
	     TbTipoClase tbTipoClase = (TbTipoClase) query.uniqueResult();
	     sesion.close() ;
	     if(tbTipoClase!=null)
	    	 return tbTipoClase ;
	     else
	    	 return null;
	     
	      
	      
	 }
	 
	 public List<TbTipoClase> daTbTipoClases() {
	       sesion = sessionFactory.openSession() ;
	        Query query = sesion.getNamedQuery("TbTipoClase.findAll") ;
	        List<TbTipoClase> clases = query.list() ;
	        sesion.close() ;
	     return clases ;
	    }
	 
	 public TbTipoClase daTbTipoClaseByNombre(String dTipoClase) {
	  sesion = sessionFactory.openSession() ;
	  Query query =sesion.getNamedQuery("daTipoClaseNombre");
	  query.setString("dTipoClase", dTipoClase);
	  TbTipoClase tipoclase = (TbTipoClase) query.uniqueResult();
	  sesion.close() ;
	  if(tipoclase!=null)  
		  return tipoclase;
	  else
		  return null;
	    }

}
