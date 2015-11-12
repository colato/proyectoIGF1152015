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
			AsAtributo asatributo = new AsAtributo(cClase, cAtributo, cMetodo, dAtributo, dTipoDatoAtributo,
					cUsuario, fIngreso, cTipoAtributo, asClase, tbTipoAtributo, asMetodo);
			
			daoAsAtributo.guardaActualiza(asatributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean eliminarAsAtributo(int cClase){
		if (daoAsAtributo.daAsAtributoById(cClase) != null){
			AsAtributo asatributo = daoAsAtributo.daAsAtributoById(cClase);
			daoAsAtributo.eliminar(asatributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarAsAtributo(int cClase, int cAtributo, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if(daoAsAtributo.daAsAtributoById(cClase)!= null){
			AsAtributo asatributo = daoAsAtributo.daAsAtributoById(cClase);
			asatributo.setAsClase(asClase);
			asatributo.setAsMetodo(asMetodo);
			asatributo.setcAtributo(cAtributo);
			asatributo.setcMetodo(cMetodo);
			asatributo.setcTipoAtributo(cTipoAtributo);
			asatributo.setcUsuario(cUsuario);
			asatributo.setdAtributo(dAtributo);
			asatributo.setdTipoDatoAtributo(dTipoDatoAtributo);
			asatributo.setfIngreso(fIngreso);
			asatributo.setTbTipoAtributo(tbTipoAtributo);
			daoAsAtributo.guardaActualiza(asatributo);
			return true;
		}else
			return false;
	}
	
	public List<AsAtributo> daAsAtributo(){
		return daoAsAtributo.daAsAtributo();
	}
	
	public AsAtributo daAsAtributoById(int cClase){
		return daoAsAtributo.daAsAtributoById(cClase);
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		return daoAsAtributo.daAsAtributoByFIngreso(fIngreso);
	}
}
