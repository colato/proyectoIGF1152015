package sv.edu.ues.igf115.negocio;

import java.util.*;
import sv.edu.ues.igf115.negocio.*;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;

public class CtrlAsAtributo {
	private AsAtributoDAO daoAsAtributo = new AsAtributoDAO();
	
	public boolean crearAsAtributo(AsAtributoPKDetalle llaveCompuesta, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if (daoAsAtributo.daAsAtributoById(llaveCompuesta)== null){
			AsAtributo asAtributo = new AsAtributo(llaveCompuesta, cMetodo, dAtributo, dTipoDatoAtributo,
					cUsuario, fIngreso, cTipoAtributo, asClase, tbTipoAtributo, asMetodo);
			daoAsAtributo.guardaActualiza(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean eliminarAsAtributo(AsAtributoPKDetalle llaveCompuesta){
		if (daoAsAtributo.daAsAtributoById(llaveCompuesta) != null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(llaveCompuesta);
			daoAsAtributo.eliminar(asAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarAsAtributo(AsAtributoPKDetalle llaveCompuesta, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		if(daoAsAtributo.daAsAtributoById(llaveCompuesta)!= null){
			AsAtributo asAtributo = daoAsAtributo.daAsAtributoById(llaveCompuesta);
			asAtributo.setLlaveCompuesta(llaveCompuesta);
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
	
	public AsAtributo daAsAtributoById(AsAtributoPKDetalle llaveCompuesta){
		return daoAsAtributo.daAsAtributoById(llaveCompuesta);
	}
	
	public AsAtributo daAsAtributoByFIngreso(Date fIngreso){
		return daoAsAtributo.daAsAtributoByFIngreso(fIngreso);
	}
}
