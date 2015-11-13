package sv.edu.ues.igf115.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import sv.edu.ues.igf115.dominio.AsParametro;
import sv.edu.ues.igf115.dominio.AsParametroPKDetalle;
import sv.edu.ues.igf115.dominio.TbTipoMetodo;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;

public class AsParametroDAO {
	private HibernateUtil hibernateUtil=new HibernateUtil();
	
	//Para llamarlo crear objeto AsPArametro considerando que se debe crear un AsParametroPKDetalle antes y asignarselo
	public void crearAsParametro(AsParametro asParametro){
		//1.Obetener la SessionFactory
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		//2.Obetener la Session
		Session session=sessionFactory.openSession();
		//3.Obtener la transacción
		Transaction tx=session.beginTransaction();
		//4.Guarda el objeto
		session.save(asParametro);
		//5.Guarda los cambios
		tx.commit();
		session.flush();
		//6.Cerrar la sesión
		session.close();	
	}
	
	public AsParametro obtenerAsParametro(AsParametroPKDetalle asParametroPKDetalle){
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		
		//Definir NamedQuerie en AsMetodo del package de dominio
		Query query=session.getNamedQuery("daParametroPorLlave");
		
		//Asigna a la query el valor recibido.
		query.setInteger("cClase", asParametroPKDetalle.getcClase());
		query.setInteger("cMetodo", asParametroPKDetalle.getcMetodo());
		query.setInteger("cParametro", asParametroPKDetalle.getcParametro());
		
		//ejecutar la query
		AsParametro resultado=(AsParametro)query.uniqueResult();
		
		if(resultado!=null){
			return resultado;
		}
		else
			return null;
	}
	
	//Para llamarlo crear objeto AsParametro considerando que se debe crear un AsParametroPKDetalle antes y asignarselo
	public void borrarAsParametro(AsParametro asParametro) {
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(asParametro);
		tx.commit();
		session.flush();
		session.close();	
	}
	public List<AsParametro> daListAsParametro(){
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		Query query=session.getNamedQuery("daListaParametros");
		List<AsParametro> listaAsParametro=query.list();
		session.close();
		return listaAsParametro;
	}
}
