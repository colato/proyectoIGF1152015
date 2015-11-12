package sv.edu.ues.igf115.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import sv.edu.ues.igf115.dominio.AsObservacion;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;

public class AsObservacionDAO {

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
	 
	 public void guardaActualiza(AsObservacion asObservacion) {
	  try {
	       iniciaOperacion() ;
	          sesion.saveOrUpdate(asObservacion) ;
	          tx.commit() ;
	             sesion.flush() ;
	     } catch (HibernateException he) {
	       manejaExcepcion(he) ;
	       throw he ;
	     } finally {
	      sesion.close() ; 
	     }
	   }
	 
	   public void eliminar(AsObservacion asObservacion) {
	    try {
	       iniciaOperacion() ;
	          sesion.delete(asObservacion) ;
	          tx.commit() ;
	             sesion.flush() ;
	     } catch (HibernateException he) {
	       manejaExcepcion(he) ;  
	       throw he ;
	     } finally {
	      sesion.close() ; 
	     }
	    }
	 
	 public AsObservacion daAsObservacionById(int cObservacion){
	      sesion = sessionFactory.openSession() ;
	      // Retorna la instancia persistente de la clase por medio del atributo identidad
	      AsObservacion ob = (AsObservacion) sesion.get(AsObservacion.class, cObservacion) ;
	      sesion.close() ;
	      return ob ;
	 }
	 
	 public List<AsObservacion> daAsObservaciones() {
	       sesion = sessionFactory.openSession() ;
	        Query query = sesion.getNamedQuery("AsObservacion.findAll") ;
	        List<AsObservacion> obser = query.list() ;
	        sesion.close() ;
	     return obser ;
	    }
	 
	 public AsObservacion daAsObservacionByNombre(String dObservacion) {
	  sesion = sessionFactory.openSession() ;
	  Query query =sesion.getNamedQuery("daObservacionNombre");
	  query.setParameter("dObservacion", dObservacion);
	  AsObservacion observacion = (AsObservacion) query.uniqueResult();
	     sesion.close() ;
	      return observacion ;
	    }
}
