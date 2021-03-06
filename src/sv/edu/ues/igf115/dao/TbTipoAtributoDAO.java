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
	
	public void guarda(TbTipoAtributo tbTipoAtributo){
		try{
			iniciaOperacion();
			sesion.saveOrUpdate(tbTipoAtributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void actualiza(TbTipoAtributo tbTipoAtributo){
		try{
			iniciaOperacion();
			sesion.update(tbTipoAtributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	public void eliminar(TbTipoAtributo tbTipoAtributo){
		try{
			iniciaOperacion();
			sesion.delete(tbTipoAtributo);
			tx.commit();
			sesion.flush();
		}catch (HibernateException he){
			manejaExcepcion(he);
			throw he;
		}finally{
			sesion.close();
		}
	}
	
	
	public TbTipoAtributo daTbTipoAtributoById(String cTipoAtributo){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("daTbTipoAtributoById");
		
		query.setString("cTipoAtributo", cTipoAtributo);
		
		TbTipoAtributo resultado = (TbTipoAtributo) query.uniqueResult();
		
		sesion.close();
		
		if(resultado!=null){
			return resultado;
		}
		else
			return null;
	}
	
	public List<TbTipoAtributo> daTbTipoAtributos(){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbTipoAtributo.findAll");
		List<TbTipoAtributo> tbtipoatributo = query.list();
		sesion.close();
		return tbtipoatributo;
	}
	
	public TbTipoAtributo daTbTipoAtributoByFIngreso(Date fIngreso){
		sesion = sessionFactory.openSession();
		Query query = sesion.getNamedQuery("TbTipoAtributo.findByFIngreso");
		query.setParameter("fIngreso", fIngreso);
		TbTipoAtributo tbtipoatributo = (TbTipoAtributo) query.uniqueResult();
		sesion.close();
		return tbtipoatributo;
	}
}
