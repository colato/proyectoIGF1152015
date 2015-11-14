package sv.edu.ues.igf115.negocio;

import java.util.*;

import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.negocio.*;

public class CtrlTbTipoAtributo {
	private TbTipoAtributoDAO daoTbTipoAtributo = new TbTipoAtributoDAO();
	
	public boolean crearTbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso){
		if(daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo)==null){
			TbTipoAtributo tbTipoAtributo = new TbTipoAtributo(cTipoAtributo, dTipoAtributo,
					fIngreso);
			daoTbTipoAtributo.guarda(tbTipoAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean eliminarTbTipoAtributo(String cTipoAtributo){
		if(daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo)!=null){
			TbTipoAtributo tbTipoAtributo = daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo);
			daoTbTipoAtributo.eliminar(tbTipoAtributo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarTbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso){
		if(daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo)!= null){
				TbTipoAtributo tbTipoAtributo = daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo);
				
				tbTipoAtributo.setdTipoAtributo(dTipoAtributo);
				tbTipoAtributo.setfIngreso(fIngreso);
				
				daoTbTipoAtributo.actualiza(tbTipoAtributo);
				return true;
		}
		else
			return false;
	}
	
	public List<TbTipoAtributo> daTbTipoAtributos(){
		return daoTbTipoAtributo.daTbTipoAtributos();
	}
	
	public TbTipoAtributo daTbTipoAtributoById(String cTipoAtributo){
		return daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo);
	}
	
	public TbTipoAtributo daTbTipoAtributoByFIngreso(Date fIngreso){
		return daoTbTipoAtributo.daTbTipoAtributoByFIngreso(fIngreso);
	}
}
