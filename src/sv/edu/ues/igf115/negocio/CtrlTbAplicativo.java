package sv.edu.ues.igf115.negocio;

import java.util.*;

import sv.edu.ues.igf115.negocio.*;
import sv.edu.ues.igf115.dao.*;
import sv.edu.ues.igf115.dominio.*;

public class CtrlTbAplicativo {
	private TbAplicativoDAO daoTbAplicativo = new TbAplicativoDAO();
	
	public boolean crearTbAplicativo(String cAplicativo, String dAplicativo, Date fIngreso, List<AsClase> asClase){
		if(daoTbAplicativo.daTbAplicativoById(cAplicativo) == null){
			if(asClase != null){
				TbAplicativo tbAplicativo = new TbAplicativo(cAplicativo, dAplicativo, fIngreso, asClase);
				daoTbAplicativo.guardaActualiza(tbAplicativo);
				return true;
			}
			else
				return false;
		}
		else
			return false;
	}
	
	public boolean eliminarTbAplicativo(String cAplicativo){
		if(daoTbAplicativo.daTbAplicativoById(cAplicativo)!=null){
			TbAplicativo tbAplicativo = daoTbAplicativo.daTbAplicativoById(cAplicativo);
			daoTbAplicativo.eliminar(tbAplicativo);
			return true;
		}
		else
			return false;
	}
	
	public boolean modificarTbAplicativo(String cAplicativo, String dAplicativo, Date fIngreso, List<AsClase> asClase){
		if(daoTbAplicativo.daTbAplicativoById(cAplicativo)!= null){
			TbAplicativo tbAplicativo = daoTbAplicativo.daTbAplicativoById(cAplicativo);
			
			tbAplicativo.setAsClaseList(asClase);
			tbAplicativo.setcAplicativo(dAplicativo);
			tbAplicativo.setfIngreso(fIngreso);
			
			daoTbAplicativo.guardaActualiza(tbAplicativo);
			return true;
		}
		else
			return false;
	}
	
	public List<TbAplicativo> daTbAplicativos(){
		return daoTbAplicativo.datbAplicativos();
	}
	
	public TbAplicativo daTbAplicativoById(String cAplicativo){
		return daoTbAplicativo.daTbAplicativoById(cAplicativo);
	}
	
	public TbAplicativo daTbAplicativoByFIngreso(Date fIngreso){
		return daoTbAplicativo.daTbAplicativoByFIngreso(fIngreso);
	}
}
