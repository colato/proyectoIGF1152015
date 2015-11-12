package sv.edu.ues.igf115.negocio;

import java.util.*;
import sv.edu.ues.igf115.negocio.*;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;

public class CtrlAsAtributo {
	private AsAtributoDAO daoAsAtributo = new AsAtributoDAO();
	
	public boolean crearAsAtributo(int cClase, int cAtributo, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if (daoAsAtributo.daAsAtributoById(cClase)== null){
			AsAtributo asAtributo = new AsAtributo(cClase, cAtributo, cMetodo, dAtributo, dTipoDatoAtributo,
					cUsuario, fIngreso, cTipoAtributo, asClase, tbTipoAtributo, asMetodo);
			
			daoAsAtributo.guardaActualiza(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean eliminarAsAtributo(int cClase){
		if (daoAsAtributo.daAsAtributoById(cClase) != null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(cClase);
			daoAsAtributo.eliminar(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarAsAtributo(int cClase, int cAtributo, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if(daoAsAtributo.daAsAtributoById(cClase)!= null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(cClase);
			asAtributo.setAsClase(asClase);
			asAtributo.setAsMetodo(asMetodo);
			asAtributo.setcAtributo(cAtributo);
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
	
	public AsAtributo daAsAtributoById(int cClase){
		return daoAsAtributo.daAsAtributoById(cClase);
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		return daoAsAtributo.daAsAtributoByFIngreso(fIngreso);
	}
}
