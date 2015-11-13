package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name="AS_metodo", catalog="modelo_proyecto", schema="")
@NamedQueries({
	@NamedQuery(name="daMetodoPorLlave",
			query="from AsMetodo as asMetodo where as.AsMetodoPKDetalle.cClase=:cClase and as.AsMetodoPKDetalle.cMetodo=:cMetodo"),
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
	
	public AsMetodo(){
		//USado por Hibernate
	}
	
	public AsMetodo(AsMetodoPKDetalle llaveCompuesta, AsClase cClaseRelacion,
			TbTipoMetodo cTipoMetodo, String dMetodo, String dTipoRetorno,
			String cUsuario, Date fIngreso, int bActivo, int nParametros) {
		this.llaveCompuesta = llaveCompuesta;
		this.cClaseRelacion = cClaseRelacion;
		this.cTipoMetodo = cTipoMetodo;
		this.dMetodo = dMetodo;
		this.dTipoRetorno = dTipoRetorno;
		this.cUsuario = cUsuario;
		this.fIngreso = fIngreso;
		this.bActivo = bActivo;
		this.nParametros = nParametros;
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
	
	@ManyToOne
	@JoinColumn(name = "c_clase")
	public AsClase getcClaseRelacion() {
		return cClaseRelacion;
	}
	public void setcClaseRelacion(AsClase cClaseRelacion) {
		this.cClaseRelacion = cClaseRelacion;
	}
	
	//--------------------------------------------------
	
	@ManyToOne
	@JoinColumn(name = "c_tipo_metodo")
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
}