package sv.edu.ues.igf115.dao;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import org.hibernate.*;
import java.util.*;

public class AsAtributoDAO {
	private HibernateUtil hibernateutil = new HibernateUtil();
	private SessionFactory sessionFactory = hibernateutil.getSessionFactory();
	private Session sesion;
	private Transaction tx;
	
	private void iniciaOperacion() throws HibernateException{
		sesion = sessionFactory.openSession();
		tx = sesion.beginTransaction();
	}
	
	private void manejaExcepcion(HibernateException he) throws HibernateException{
		tx.rollback();
		throw new HibernateException("Ocurrio un error en la capa DAO",he);
	}
	
	public void guardaActualiza(AsAtributo asAtributo){
		try{
			iniciaOperacion();
			sesion.saveOrUpdate(asAtributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void eliminar(AsAtributo asAtributo){
		try{
			iniciaOperacion();
			sesion.delete(asAtributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally {
			sesion.close();
		}
	}
	
	public AsAtributo daAsAtributoById(AsAtributoPKDetalle asAtributoPKDetalle){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("daAsAtributoByID");
		
		query.setInteger("cClase", asAtributoPKDetalle.getcClase());
		query.setInteger("cAtributo", asAtributoPKDetalle.getcAtributo());
		
		AsAtributo resultado = (AsAtributo) query.uniqueResult();
		
		if(resultado!=null){
			return resultado;
		}
		else
			return null;
	}
	
	public List<AsAtributo> daAsAtributos(){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("AsAtributo.findAll");
		List<AsAtributo> asAtributo = query.list();
		sesion.close();
		return asAtributo;
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("AsAtributo.findByFIngreso");
		query.setParameter("fIngreso", fIngreso);
		AsAtributo asAtributo = (AsAtributo) query.uniqueResult();
		sesion.close();
		return asAtributo;
	}
}
