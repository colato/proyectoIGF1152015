package sv.edu.ues.igf115.dominio;

import javax.persistence.*; //Para las anotaciones @Entity, @Table,etc
import java.io.*; //Para Serializable
import java.util.*; //Para la fecha

@Entity
@Table(name="Tb_aplicativo", catalog="modelo_proyecto",schema = "")
@NamedQueries({
	@NamedQuery(name = "TbAplicativo.findAll", query = " from TbAplicativo as t"),
	@NamedQuery(name = "daTbAplicativoById", query = "from " +
			"TbAplicativo as t where t.cAplicativo = :cAplicativo"),
	@NamedQuery(name = "TbAplicativo.findByFIngreso", query = "FROM " +
			"TbAplicativo as t where t.fIngreso = :fIngreso")})

public class TbAplicativo implements Serializable{
	private static final long serialVersionUID = 1L;
	private String cAplicativo;
	private String dAplicativo;
	private Date fIngreso;
	private List<AsClase> asClaseList;
	
	public TbAplicativo(){
		//Usado por hibernate
	}
	
	public TbAplicativo(String cAplicativo, String dAplicativo, Date fIngreso){
		this.cAplicativo = cAplicativo;
		this.dAplicativo = dAplicativo;
		this.fIngreso = fIngreso;
	}
	
	@Id //Indica la llave primaria de la tabla
	//@GenerateValue(strategy=GenerationType.IDENTITY) ***No se pone porque la llave no es AUTO_INCREMENT
	@Basic(optional = false) //Mapeo por defecto para tipos basicos, opcional indica Valor not null
	@Column(name="c_aplicativo")//Indica la columna de la tabla a mapear con el campo de la entidad
	public String getcAplicativo() {
		return cAplicativo;
	}
	public void setcAplicativo(String cAplicativo) {
		this.cAplicativo = cAplicativo;
	}
	
	@Basic
	@Column(name="d_aplicativo")
	public String getdAplicativo() {
		return dAplicativo;
	}
	public void setdAplicativo(String dAplicativo) {
		this.dAplicativo = dAplicativo;
	}
	
	@Basic
	@Column(name="f_ingreso")
	@Temporal(TemporalType.DATE)//Se usa junto a @Basic para especificar que un campo fecha debe guardar con java.util
	public Date getfIngreso() {
		return fIngreso;
	}
	public void setfIngreso(Date fIngreso) {
		this.fIngreso = fIngreso;
	}
	
	//Multiplicidad 1:N Un tb_aplicativo tiene muchas as_clase
	@OneToMany(cascade = CascadeType.ALL , fetch=FetchType.LAZY, mappedBy = "tbAplicativo")
	public List<AsClase> getAsClaseList() {
		return asClaseList;
	}

	public void setAsClaseList(List<AsClase> asClaseList) {
		this.asClaseList = asClaseList;
	}
}
