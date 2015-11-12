package sv.edu.ues.igf115.negocio;

import java.util.*;

import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;
import sv.edu.ues.igf115.negocio.*;

public class CtrlTbTipoAtributo {
	private TbTipoAtributoDAO daoTbTipoAtributo = new TbTipoAtributoDAO();
	
	public boolean crearTbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso, 
			List<AsAtributo> asAtributo){
		if(daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo)==null){
			TbTipoAtributo tbTipoAtributo = new TbTipoAtributo(cTipoAtributo, dTipoAtributo,
					fIngreso, asAtributo);
			daoTbTipoAtributo.guardaActualiza(tbTipoAtributo);
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
	
	public boolean modificarTbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso,
			List<AsAtributo> asAtributo){
		if(daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo)!= null){
			if(asAtributo != null){
				TbTipoAtributo tbTipoAtributo = daoTbTipoAtributo.daTbTipoAtributoById(cTipoAtributo);
				
				tbTipoAtributo.setAsAtributoList(asAtributo);
				tbTipoAtributo.setdTipoAtributo(dTipoAtributo);
				tbTipoAtributo.setfIngreso(fIngreso);
				
				daoTbTipoAtributo.guardaActualiza(tbTipoAtributo);
				return true;
			}
			else
				return false;
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
