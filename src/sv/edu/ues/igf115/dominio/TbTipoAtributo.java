package sv.edu.ues.igf115.dominio;

import javax.persistence.*;
import java.io.*; 
import java.util.*;

@Entity
@Table(name = "TB_tipo_atributo", catalog = "modelo_proyecto", schema = "")
@NamedQueries({
	@NamedQuery(name = "TbTipoAtributo.findAll", query = "from TbTipoAtributo as t"),
	@NamedQuery(name = "daTbTipoAtributoById", query = "from " +
			"TbTipoAtributo as t where t.cTipoAtributo = :cTipoAtributo"),
	@NamedQuery(name = "TbTipoAtributo.findByFIngreso", query = "from " +
			"TbTipoAtributo as t WHERE t.fIngreso = :fIngreso")})
public class TbTipoAtributo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String cTipoAtributo;
	private String dTipoAtributo;
	private Date fIngreso;
	private List<AsAtributo> asAtributoList;
	
	public TbTipoAtributo(){
		
	}
	
	public TbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso){
		this.cTipoAtributo = cTipoAtributo;
		this.dTipoAtributo = dTipoAtributo;
		this.fIngreso = fIngreso;
	}
	
	@Id
	@Basic(optional = false)
	@Column(name="c_tipo_atributo")
	public String getcTipoAtributo() {
		return cTipoAtributo;
	}

	public void setcTipoAtributo(String cTipoAtributo) {
		this.cTipoAtributo = cTipoAtributo;
	}

	@Basic
	@Column(name="d_tipo_atributo")
	public String getdTipoAtributo() {
		return dTipoAtributo;
	}

	public void setdTipoAtributo(String dTipoAtributo) {
		this.dTipoAtributo = dTipoAtributo;
	}

	@Basic
	@Column(name="f_ingreso")
	@Temporal(TemporalType.DATE)
	public Date getfIngreso() {
		return fIngreso;
	}

	public void setfIngreso(Date fIngreso) {
		this.fIngreso = fIngreso;
	}
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "tbTipoAtributo")
	public List<AsAtributo> getAsAtributoList() {
		return asAtributoList;
	}

	public void setAsAtributoList(List<AsAtributo> asAtributoList) {
		this.asAtributoList = asAtributoList;
	}
	
}
