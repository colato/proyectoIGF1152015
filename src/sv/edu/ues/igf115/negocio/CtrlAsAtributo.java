package sv.edu.ues.igf115.negocio;

import java.util.*;
import sv.edu.ues.igf115.negocio.*;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;

public class CtrlAsAtributo {
	private AsAtributoDAO daoAsAtributo = new AsAtributoDAO();
	
	public boolean crearAsAtributo(Integer cClase, Integer cAtributo, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if (daoAsAtributo.daAsAtributoById(cAtributo)== null){
			AsAtributo asAtributo = new AsAtributo(cClase, cAtributo, cMetodo, dAtributo, dTipoDatoAtributo,
					cUsuario, fIngreso, cTipoAtributo, asClase, tbTipoAtributo, asMetodo);
			daoAsAtributo.guardaActualiza(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean eliminarAsAtributo(Integer cAtributo){
		if (daoAsAtributo.daAsAtributoById(cAtributo) != null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(cAtributo);
			daoAsAtributo.eliminar(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarAsAtributo(Integer cClase, Integer cAtributo, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if(daoAsAtributo.daAsAtributoById(cAtributo)!= null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(cAtributo);
			asAtributo.setcAtributo(cAtributo);
			asAtributo.setAsMetodo(asMetodo);
			asAtributo.setcMetodo(cMetodo);
			asAtributo.setcTipoAtributo(cTipoAtributo);
			asAtributo.setcUsuario(cUsuario);
			asAtributo.setdAtributo(dAtributo);
			asAtributo.setdTipoDatoAtributo(dTipoDatoAtributo);
			asAtributo.setfIngreso(fIngreso);
			asAtributo.setTbTipoAtributo(tbTipoAtributo);
			daoAsAtributo.guardaActualiza(asAtributo);
			return true;
		}else
			return false;
	}
	
	public List<AsAtributo> daAsAtributos(){
		return daoAsAtributo.daAsAtributos();
	}
	
	public AsAtributo daAsAtributoById(Integer cAtributo){
		return daoAsAtributo.daAsAtributoById(cAtributo);
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		return daoAsAtributo.daAsAtributoByFIngreso(fIngreso);
	}
}
