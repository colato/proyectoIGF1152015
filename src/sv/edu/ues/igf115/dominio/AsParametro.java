package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="AS_parametro", catalog="modelo_proyecto", schema="")
@NamedQueries({
	@NamedQuery(
			name="daParametroPorLlave",
			query="from AsParametro as asParametro where asParametro.llaveCompuesta.cClase=:cClase " +
					"and asParametro.llaveCompuesta.cMetodo=:cMetodo " +
					"and asParametro.llaveCompuesta.cParametro=:cParametro"),
	@NamedQuery(
			name="daListaParametros",
			query="from AsParametro as asParametro")
})
public class AsParametro implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**LLave primaria compuesta definida en AsParametroPKDetalle*/
	private AsParametroPKDetalle llaveCompuesta;
	
	/**Llave foranea, relacion de muchos parametros pertenecen a un metodo*/
	private AsMetodo cMetodo;
	
	/**Llave foranea, relación de muchos parametros pertenecen a una clase*/
	private AsClase cClase;

	private String dParametro;
	private String dTipoParametro;
	private String cUsuario;
	private Date fIngreso;
	
	public AsParametro(){
		//Usado por hibernate
	}

	public AsParametro(AsParametroPKDetalle llaveCompuesta, AsMetodo cMetodo,
			AsClase cClase, String dParametro, String dTipoParametro,
			String cUsuario, Date fIngreso) {
		this.llaveCompuesta = llaveCompuesta;
		this.cMetodo = cMetodo;
		this.cClase = cClase;
		this.dParametro = dParametro;
		this.dTipoParametro = dTipoParametro;
		this.cUsuario = cUsuario;
		this.fIngreso = fIngreso;
	}

	//--------------------------------------------------
	
	@EmbeddedId
	public AsParametroPKDetalle getLlaveCompuesta() {
		return llaveCompuesta;
	}

	public void setLlaveCompuesta(AsParametroPKDetalle llaveCompuesta) {
		this.llaveCompuesta = llaveCompuesta;
	}

	//--------------------------------------------------
	
	@ManyToOne(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	@JoinColumns({
		@JoinColumn(name="c_metodo",referencedColumnName="c_metodo",insertable=false,updatable=false),
		@JoinColumn(name="c_clase",referencedColumnName="c_clase",insertable=false,updatable=false)
	})
	public AsMetodo getcMetodo() {
		return cMetodo;
	}

	public void setcMetodo(AsMetodo cMetodo) {
		this.cMetodo = cMetodo;
	}
	
	//--------------------------------------------------

	//Revisar logica de esta relacion
	@ManyToOne(cascade = CascadeType.ALL,fetch=FetchType.LAZY)
	@JoinColumn(name="c_clase",referencedColumnName="c_clase",insertable=false,updatable=false)
	public AsClase getcClase() {
		return cClase;
	}

	public void setcClase(AsClase cClase) {
		this.cClase = cClase;
	}

	//--------------------------------------------------
	
	@Basic
	@Column(name="d_parametro")
	public String getdParametro() {
		return dParametro;
	}

	public void setdParametro(String dParametro) {
		this.dParametro = dParametro;
	}

	//--------------------------------------------------
	
	@Basic
	@Column(name="d_tipo_parametro")
	public String getdTipoParametro() {
		return dTipoParametro;
	}

	public void setdTipoParametro(String dTipoParametro) {
		this.dTipoParametro = dTipoParametro;
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
}
