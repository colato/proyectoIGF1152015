package sv.edu.ues.igf115.dao;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import org.hibernate.*;
import java.util.*;

public class TbTipoAtributoDAO {
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
		throw new HibernateException("Ocurrio un error en la capa DAO", he);
	}
	
	public void guardaActualiza(TbTipoAtributo tbtipoatributo){
		try{
			iniciaOperacion();
			sesion.saveOrUpdate(tbtipoatributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void eliminar(TbTipoAtributo tbtipoatributo){
		try{
			iniciaOperacion();
			sesion.delete(tbtipoatributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	
	//Falta la clase por ID
	
	public List<TbTipoAtributo> daTbTipoAtributo(){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbTipoAtributo.findAll");
		List<TbTipoAtributo> tbtipoatributo = query.list();
		sesion.close();
		return tbtipoatributo;
	}
	
	public TbTipoAtributo daTbTipoAtributoByFIngreso(Date fIngreso){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbTipoAtributo.findByFIngreso");
		query.setParameter("f_ingreso", fIngreso);
		TbTipoAtributo tbtipoatributo = (TbTipoAtributo) query.uniqueResult();
		sesion.close();
		return tbtipoatributo;
	}
}
