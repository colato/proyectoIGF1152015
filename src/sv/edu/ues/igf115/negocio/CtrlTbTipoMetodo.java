package sv.edu.ues.igf115.negocio;

import java.util.Date;

import sv.edu.ues.igf115.dao.TbTipoMetodoDAO;
import sv.edu.ues.igf115.dominio.TbTipoMetodo;

public class CtrlTbTipoMetodo {
	TbTipoMetodoDAO tbTipoMetodoDAO=new TbTipoMetodoDAO();
	public boolean crearTbTipoMetodo(String cTipoMetodo,String dTipoMetodo, Date fIngreso){
		
		if(tbTipoMetodoDAO.obtenerTbTipoMetodo(cTipoMetodo)==null){
			//No existe registro con esa llave.
			TbTipoMetodo nuevoRegistro=new TbTipoMetodo(cTipoMetodo,dTipoMetodo,fIngreso);
			tbTipoMetodoDAO.crearTipoMetodo(nuevoRegistro);
			return true;
		}
		else
			return false;
	}
	
	public boolean borrarTbTipoMetodo(String cTipoMetodo){
		TbTipoMetodo tbTipoMetodo= tbTipoMetodoDAO.obtenerTbTipoMetodo(cTipoMetodo);
		if(tbTipoMetodo==null){
			//No existe registro por lo que no se puede borrar.
			return false;
		}
		else{
			//Se devuelve registro
			tbTipoMetodoDAO.borrarTipoMetodo(tbTipoMetodo);
			return true;
		}
	}
	
	public TbTipoMetodo verTbTipoMetodo(String cTipoMetodo){
		TbTipoMetodo tbTipoMetodo= tbTipoMetodoDAO.obtenerTbTipoMetodo(cTipoMetodo);
		if(tbTipoMetodo==null){
			//No existe registro por lo que no se puede consultar.
			return null;
		}
		else{
			//Se retorna el objeto
			return tbTipoMetodo;
		}
	}
}
