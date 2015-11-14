package sv.edu.ues.igf115.negocio;

import java.util.Date;
import java.util.List;

import sv.edu.ues.igf115.dao.AsParametroDAO;
import sv.edu.ues.igf115.dominio.AsClase;
import sv.edu.ues.igf115.dominio.AsMetodo;
import sv.edu.ues.igf115.dominio.AsMetodoPKDetalle;
import sv.edu.ues.igf115.dominio.AsParametro;
import sv.edu.ues.igf115.dominio.AsParametroPKDetalle;
import sv.edu.ues.igf115.dominio.TbTipoMetodo;

public class CtrlAsParametro {
	AsParametroDAO asParametroDAO=new AsParametroDAO();
	
	public boolean crearAsParametro(AsParametroPKDetalle llaveCompuesta, String dParametro, String dTipoParametro,
			String cUsuario, Date fIngreso){
		
		if(asParametroDAO.obtenerAsParametro(llaveCompuesta)==null){
			//No existe registro con esa llave.
			AsParametro nuevoRegistro=new AsParametro(llaveCompuesta,dParametro,dTipoParametro,
					cUsuario,fIngreso);
			asParametroDAO.crearAsParametro(nuevoRegistro);
			return true;
		}
		else
			return false;
	}
	
	public boolean borrarAsParametro(AsParametroPKDetalle llaveCompuesta){
		AsParametro asParametro= asParametroDAO.obtenerAsParametro(llaveCompuesta);
		if(asParametro==null){
			//No existe registro por lo que no se puede borrar.
			return false;
		}
		else{
			//Se devuelve registro
			asParametroDAO.borrarAsParametro(asParametro);
			return true;
		}
	}
	
	public AsParametro verAsParametro(AsParametroPKDetalle llaveCompuesta){
		AsParametro asParametro= asParametroDAO.obtenerAsParametro(llaveCompuesta);
		if(asParametro==null){
			//No existe registro por lo que no se puede consultar.
			return null;
		}
		else{
			//Se retorna el objeto
			return asParametro;
		}
	}
	
	public List<AsParametro> daListaAsParametro(){
		return asParametroDAO.daListAsParametro();
	}
}
