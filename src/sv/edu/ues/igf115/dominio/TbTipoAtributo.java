package sv.edu.ues.igf115.dominio;

import javax.persistence.*;
import java.io.*; 
import java.util.*;

@Entity
@Table(name = "TB_tipo_atributo", catalog = "modelo_proyecto", schema = "")
@NamedQueries({
	@NamedQuery(name = "TbTipoAtributo.findAll", query = "SELECT t FROM TbTipoAtributo t"),
	@NamedQuery(name = "TbTipoAtributo.findByKey", query = "SELECT t FROM " +
			"TbTipoAtributo t WHERE t.cTipoAtributo = :cTipoAtributo"),
	@NamedQuery(name = "TbTipoAtributo.findByFIngreso", query = "SELECT t FROM" +
			"TbTipoAtributo t WHERE t.fIngreso = :fIngreso")})
public class TbTipoAtributo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String cTipoAtributo;
	private String dTipoAtributo;
	private Date fIngreso;
	private List<AsAtributo> asAtributoList;
	
	private TbTipoAtributo(){
		
	}
	
	public TbTipoAtributo(String cTipoAtributo, String dTipoAtributo, Date fIngreso, List<AsAtributo> asAtributo){
		this.cTipoAtributo = cTipoAtributo;
		this.dTipoAtributo = dTipoAtributo;
		this.fIngreso = fIngreso;
		this.asAtributoList = asAtributo;
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
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "tbtipoatributo")
	public List<AsAtributo> getAsAtributoList() {
		return asAtributoList;
	}

	public void setAsAtributoList(List<AsAtributo> asAtributoList) {
		this.asAtributoList = asAtributoList;
	}
	
}
