package sv.edu.ues.igf115.dao;

import java.util.List;

import org.hibernate.*;

import sv.edu.ues.igf115.dominio.AsMetodo;
import sv.edu.ues.igf115.dominio.TbTipoMetodo;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;
import sv.edu.ues.igf115.dominio.AsMetodoPKDetalle;
public class AsMetodoDAO {
	private HibernateUtil hibernateUtil=new HibernateUtil();
	
	//Para llamarlo crear objeto AsMetodo considerando que se debe crear un AsMetodoPKDetalle antes y asignarselo
	public void crearMetodo(AsMetodo asMetodo){
		//1.Obetener la SessionFactory
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		//2.Obetener la Session
		Session session=sessionFactory.openSession();
		//3.Obtener la transacción
		Transaction tx=session.beginTransaction();
		//4.Guarda el objeto
		session.save(asMetodo);
		//5.Guarda los cambios
		tx.commit();
		session.flush();
		//6.Cerrar la sesión
		session.close();	
	}
	
	public AsMetodo obtenerAsMetodo(AsMetodoPKDetalle asMetodoPKDetalle){
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		
		//Definir NamedQuerie en AsMetodo del package de dominio
		Query query=session.getNamedQuery("daMetodoPorLlave");
		
		//Asigna a la query el valor recibido.
		query.setInteger("cClase", asMetodoPKDetalle.getcClase());
		query.setInteger("cMetodo", asMetodoPKDetalle.getcMetodo());
		
		//ejecutar la query
		AsMetodo resultado=(AsMetodo)query.uniqueResult();
		
		if(resultado!=null){
			return resultado;
		}
		else
			return null;
	}
	
	//Para llamarlo crear objeto AsMetodo considerando que se debe crear un AsMetodoPKDetalle antes y asignarselo
	public void borrarTipoMetodo(AsMetodo asMetodo) {
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(asMetodo);
		tx.commit();
		session.flush();
		session.close();	
	}
	
	public List<AsMetodo> daListaMetodos(){
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		Query query=session.getNamedQuery("daListaMetodos");
		List<AsMetodo> listaAsMetodos=query.list();
		session.close();
		return listaAsMetodos;
	}
}
