package sv.edu.ues.igf115.dao;

import org.hibernate.*;

import sv.edu.ues.igf115.dominio.TbTipoMetodo;
import sv.edu.ues.igf115.utilidades.datos.HibernateUtil;

public class TbTipoMetodoDAO {
	private HibernateUtil hibernateUtil=new HibernateUtil();
	
	public void crearTipoMetodo(TbTipoMetodo tbTipoMetodo){
		//1.Obetener la SessionFactory
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		//2.Obetener la Session
		Session session=sessionFactory.openSession();
		//3.Obtener la transacción
		Transaction tx=session.beginTransaction();
		//4.Guarda el objeto
		session.save(tbTipoMetodo);
		//5.Guarda los cambios
		tx.commit();
		session.flush();
		//6.Cerrar la sesión
		session.close();	
	}
	
	public TbTipoMetodo obtenerTbTipoMetodo(String cTipoMetodo){
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		//Definir NamedQuerie en TbTipoMetodo del package de dominio
		Query query=session.getNamedQuery("daTipoMetodoPorLlave");
		//TbTipoMetodo resultado=(TbTipoMetodo)session.createQuery("from TbTipoMetodo t where t.cTipoMetodo='"+cTipoMetodo+"'").uniqueResult();
		//Asigna a la query el valor recibido.
		query.setString("cTipoMetodo", cTipoMetodo);
		
		//ejecutar la query
		TbTipoMetodo resultado=(TbTipoMetodo)query.uniqueResult();
		
		if(resultado!=null){
			return resultado;
		}
		else
			return null;
	}

	public void borrarTipoMetodo(TbTipoMetodo tbTipoMetodo) {
		@SuppressWarnings("static-access")
		SessionFactory sessionFactory=hibernateUtil.getSessionFactory();
		Session session= sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(tbTipoMetodo);
		tx.commit();
		session.flush();
		session.close();	
	}
}
