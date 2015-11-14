package sv.edu.ues.igf115.dao;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import org.hibernate.*;
import java.util.*;

public class TbAplicativoDAO {
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
	
	public void guardaActualiza(TbAplicativo tbAplicativo){
		try{
			iniciaOperacion();
			sesion.saveOrUpdate(tbAplicativo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void eliminar(TbAplicativo tbAplicativo){
		try{
			iniciaOperacion();
			sesion.delete(tbAplicativo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion (he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public TbAplicativo daTbAplicativoById(String cAplicativo){
		sesion = sessionFactory.openSession();
		
		Query query = sesion.getNamedQuery("daTbAplicativoById");
		query.setParameter("cAplicativo", cAplicativo);
		
		TbAplicativo resultado = (TbAplicativo) query.uniqueResult();
		
		sesion.close();
		
		if(resultado != null){
			return resultado;
		}
		else
			return null;
	}
	
	public List<TbAplicativo> datbAplicativos(){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbAplicativo.findAll");
		List<TbAplicativo> tbAplicativo = query.list();
		sesion.close();
		return tbAplicativo;
	}
	
	public TbAplicativo daTbAplicativoByFIngreso(Date fIngreso){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbAplicativo.findByFIngreso");
		query.setParameter("fIngreso", fIngreso);
		TbAplicativo tbAplicativo = (TbAplicativo) query.uniqueResult();
		sesion.close();
		return tbAplicativo;
	}
	
}
