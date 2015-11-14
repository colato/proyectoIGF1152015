package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name="AS_metodo", catalog="modelo_proyecto", schema="")
@NamedQueries({
	@NamedQuery(name="daMetodoPorLlave",
			query="from AsMetodo as asMetodo where asMetodo.llaveCompuesta.cClase=:cClase and asMetodo.llaveCompuesta.cMetodo=:cMetodo"),
	@NamedQuery(name="daListaMetodos",
			query="from AsMetodo as asMetodo")
})
public class AsMetodo implements Serializable{
	private static final long serialVersionUID = 1L;
	
	/**Llave primaria compuesta definida en AsMetodoPKDetalle*/
	protected AsMetodoPKDetalle llaveCompuesta;
	
	/**Es un atributo AsClase, un metodo pertenece a una clase*/
	private AsClase cClaseRelacion;
	
	/**Es un atritubo TbTipoMetodo, relación de muchos a uno, muchos metodos son de un tipo*/
	private TbTipoMetodo cTipoMetodo;
	
	private String dMetodo;
	private String dTipoRetorno;
	private String cUsuario;
	private Date fIngreso;
	private int bActivo;
	private int nParametros;
	private String cTipoMetodoV;
	
	public AsMetodo(){
		//USado por Hibernate
	}
	
	public AsMetodo(AsMetodoPKDetalle llaveCompuesta, String dMetodo, String dTipoRetorno,
			String cUsuario, Date fIngreso, int bActivo, int nParametros,String cTipoMetodo) {
		this.llaveCompuesta = llaveCompuesta;
		this.dMetodo = dMetodo;
		this.dTipoRetorno = dTipoRetorno;
		this.cUsuario = cUsuario;
		this.fIngreso = fIngreso;
		this.bActivo = bActivo;
		this.nParametros = nParametros;
		this.cTipoMetodoV=cTipoMetodo;
	}


	//--------------------------------------------------
	@EmbeddedId
	public AsMetodoPKDetalle getLlaveCompuesta() {
		return llaveCompuesta;
	}
	public void setLlaveCompuesta(AsMetodoPKDetalle llaveCompuesta) {
		this.llaveCompuesta = llaveCompuesta;
	}
	
	//--------------------------------------------------
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "c_clase",referencedColumnName="c_clase",insertable=false,updatable=false)
	public AsClase getcClaseRelacion() {
		return cClaseRelacion;
	}
	public void setcClaseRelacion(AsClase cClaseRelacion) {
		this.cClaseRelacion = cClaseRelacion;
	}
	
	//--------------------------------------------------
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "c_tipo_metodo",referencedColumnName="c_tipo_metodo",insertable=false,updatable=false)
	public TbTipoMetodo getcTipoMetodo() {
		return cTipoMetodo;
	}
	public void setcTipoMetodo(TbTipoMetodo cTipoMetodo) {
		this.cTipoMetodo = cTipoMetodo;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="d_metodo")
	public String getdMetodo() {
		return dMetodo;
	}
	public void setdMetodo(String dMetodo) {
		this.dMetodo = dMetodo;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="d_tipo_retorno")
	public String getdTipoRetorno() {
		return dTipoRetorno;
	}
	public void setdTipoRetorno(String dTipoRetorno) {
		this.dTipoRetorno = dTipoRetorno;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="c_usuario")
	public String getcUsuario() {
		return cUsuario;
	}
	public void setcUsuario(String cUsuario) {
		this.cUsuario = cUsuario;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="f_ingreso")
	public Date getfIngreso() {
		return fIngreso;
	}
	public void setfIngreso(Date fIngreso) {
		this.fIngreso = fIngreso;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="b_activo")
	public int getbActivo() {
		return bActivo;
	}
	public void setbActivo(int bActivo) {
		this.bActivo = bActivo;
	}
	
	//--------------------------------------------------
	
	@Basic
	@Column(name="n_parametros")
	public int getnParametros() {
		return nParametros;
	}
	public void setnParametros(int nParametros) {
		this.nParametros = nParametros;
	}

	//--------------------------------------------------
	
		@Basic
		@Column(name="c_tipo_metodo")
	public String getcTipoMetodoV() {
		return cTipoMetodoV;
	}

	public void setcTipoMetodoV(String cTipoMetodoV) {
		this.cTipoMetodoV = cTipoMetodoV;
	}
	
	
}