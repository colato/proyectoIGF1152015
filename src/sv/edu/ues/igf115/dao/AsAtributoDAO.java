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
	
	public void guardaActualiza(AsAtributo asatributo){
		try{
			iniciaOperacion();
			sesion.saveOrUpdate(asatributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void eliminar(AsAtributo asatributo){
		try{
			iniciaOperacion();
			sesion.delete(asatributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally {
			sesion.close();
		}
	}
	
	//Falta la clase por ID
	
	public List<AsAtributo> daAsAtributo(){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("AsAtributo.findAll");
		List<AsAtributo> asatributo = query.list();
		sesion.close();
		return asatributo;
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("AsAtributo.findByFIngreso");
		query.setParameter("f_ingreso", fIngreso);
		AsAtributo asatributo = (AsAtributo) query.uniqueResult();
		sesion.close();
		return asatributo;
	}
}
