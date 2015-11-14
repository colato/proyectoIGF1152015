package sv.edu.ues.igf115.negocio;

import java.util.Date;
import java.util.List;

import sv.edu.ues.igf115.dao.AsMetodoDAO;
import sv.edu.ues.igf115.dominio.AsClase;
import sv.edu.ues.igf115.dominio.AsMetodo;
import sv.edu.ues.igf115.dominio.AsMetodoPKDetalle;
import sv.edu.ues.igf115.dominio.TbTipoMetodo;


public class CtrlAsMetodo {
	AsMetodoDAO asMetodoDAO=new AsMetodoDAO();
	
	
	public boolean crearAsMetodo(AsMetodoPKDetalle llaveCompuesta, String dMetodo, String dTipoRetorno,
			String cUsuario, Date fIngreso, int bActivo, int nParametros,String cTipoMetodo){
		
		if(asMetodoDAO.obtenerAsMetodo(llaveCompuesta)==null){
			//No existe registro con esa llave.
			AsMetodo nuevoRegistro=new AsMetodo(llaveCompuesta,dMetodo,
					dTipoRetorno,cUsuario,fIngreso,bActivo,nParametros,cTipoMetodo);
			asMetodoDAO.crearMetodo(nuevoRegistro);
			return true;
		}
		else
			return false;
	}
	
	public boolean borrarAsMetodo(AsMetodoPKDetalle llaveCompuesta){
		AsMetodo asMetodo= asMetodoDAO.obtenerAsMetodo(llaveCompuesta);
		if(asMetodo==null){
			//No existe registro por lo que no se puede borrar.
			return false;
		}
		else{
			//Se devuelve registro
			asMetodoDAO.borrarTipoMetodo(asMetodo);
			return true;
		}
	}
	
	public AsMetodo verAsMetodo(AsMetodoPKDetalle llaveCompuesta){
		AsMetodo asMetodo= asMetodoDAO.obtenerAsMetodo(llaveCompuesta);
		if(asMetodo==null){
			//No existe registro por lo que no se puede consultar.
			return null;
		}
		else{
			//Se retorna el objeto
			return asMetodo;
		}
	}
	
	public List<AsMetodo> daListaAsMetodos(){
		return asMetodoDAO.daListaMetodos();
	}
	
	public boolean actualizarAsMetodo(AsMetodoPKDetalle llaveCompuesta, String dMetodo, String dTipoRetorno,
	String cUsuario, Date fIngreso, int bActivo, int nParametros,String cTipoMetodo){
		AsMetodo nuevoRegistro=new AsMetodo(llaveCompuesta,dMetodo,
		dTipoRetorno,cUsuario,fIngreso,bActivo,nParametros,cTipoMetodo);
		asMetodoDAO.crearMetodo(nuevoRegistro);
		return true;
	}
}
