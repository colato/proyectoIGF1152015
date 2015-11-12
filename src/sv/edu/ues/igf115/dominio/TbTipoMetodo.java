package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*; //Para @Entity, @Table,etc


@Entity
@Table(name="TB_tipo_metodo",catalog="modelo_proyecto",schema="")

@NamedQueries({
	@NamedQuery(name="daTipoMetodoPorLlave",
			query="from TbTipoMetodo as tipoMetodo where tipoMetodo.cTipoMetodo=:cTipoMetodo")
})

public class TbTipoMetodo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String cTipoMetodo;
	private String dTipoMetodo;
	private Date fIngreso;
	
	@SuppressWarnings("unused")
	private TbTipoMetodo(){
		//Constructor sin parámetros necesitado por Hibernate
	}
	
	public TbTipoMetodo(String cTipoMetodo, String dTipoMetodo,Date fIngreso){
		this.cTipoMetodo=cTipoMetodo;
		this.dTipoMetodo=dTipoMetodo;
		this.fIngreso=fIngreso;
	}
	
	@Id
	@Basic(optional=false)
	@Column(name="c_tipo_metodo")//Nombre de columna PK en BD
	public String getcTipoMetodo() {
		return cTipoMetodo;
	}

	public void setcTipoMetodo(String cTipoMetodo) {
		this.cTipoMetodo = cTipoMetodo;
	}
	
	@Basic(optional=false)
	@Column(name="d_tipo_metodo")//Asociación atributo/columna
	public String getDTipoMetodo(){
		return dTipoMetodo;
	}


	public void setDTipoMetodo(String dTipoMetodo){
		this.dTipoMetodo=dTipoMetodo;
	}
	
	@Basic(optional=false)
	@Column(name="f_ingreso")
	public Date getFIngreso(){
		return fIngreso;
	}
	public void setFIngreso(Date fIngreso){
		this.fIngreso=fIngreso;
	}
	
}
