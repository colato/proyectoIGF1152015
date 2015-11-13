package sv.edu.ues.igf115.dominio;

import javax.persistence.*;
import java.io.*; 
import java.util.*;

@Entity
@Table(name="AS_atributo", catalog="modelo_proyecto", schema="")
@NamedQueries({
	@NamedQuery(name="AsAtributo.findAll", query="SELECT a FROM AsAtributo a"),
	@NamedQuery(name="daAsAtributoById", query ="SELECT a FROM AsAtributo " +
			"a WHERE a.AsAtributoPKDetalle.cClase = :cClase and a.asAtributoPKDetalle.cAtributo = :cAtributo"),
	@NamedQuery(name="AsAtributo.findByFIngreso", query ="SELECT a FROM AsAtributo" +
			"a WHERE a.fIngreso = :fIngreso")})

public class AsAtributo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	protected AsAtributoPKDetalle llaveCompuesta;
	private int cMetodo;
	private String dAtributo;
	private String dTipoDatoAtributo;
	private String cUsuario;
	private Date fIngreso;
	private String cTipoAtributo;
	private AsClase asClase;
	private TbTipoAtributo tbTipoAtributo;
	private AsMetodo asMetodo;
	
	private AsAtributo(){
		
	}
	
	public AsAtributo(AsAtributoPKDetalle llaveCompuesta, int cMetodo, String dAtributo, String dTipoDatoAtributo, 
			String cUsuario, Date fIngreso, String cTipoAtributo, AsClase asClase, TbTipoAtributo tbTipoAtributo,
			AsMetodo asMetodo){
		this.llaveCompuesta = llaveCompuesta; 
		this.cMetodo = cMetodo;
		this.dAtributo = dAtributo;
		this.dTipoDatoAtributo = dTipoDatoAtributo;
		this.cUsuario = cUsuario;
		this.fIngreso = fIngreso;
		this.cTipoAtributo = cTipoAtributo;
		this.asClase = asClase;
		this.tbTipoAtributo = tbTipoAtributo;
		this.asMetodo = asMetodo;
	}
	
	@EmbeddedId
	public AsAtributoPKDetalle getLlaveCompuesta(){
		return llaveCompuesta;
	}
	
	public void setLlaveCompuesta(AsAtributoPKDetalle llaveCompuesta){
		this.llaveCompuesta = llaveCompuesta;
	}

	
	@Basic
	@Column(name="c_metodo")
	public int getcMetodo() {
		return cMetodo;
	}
	public void setcMetodo(int cMetodo) {
		this.cMetodo = cMetodo;
	}
	
	@Basic
	@Column(name="d_atributo")
	public String getdAtributo() {
		return dAtributo;
	}
	public void setdAtributo(String dAtributo) {
		this.dAtributo = dAtributo;
	}
	
	@Basic
	@Column(name="d_tipo_dato_atributo")
	public String getdTipoDatoAtributo() {
		return dTipoDatoAtributo;
	}
	public void setdTipoDatoAtributo(String dTipoDatoAtributo) {
		this.dTipoDatoAtributo = dTipoDatoAtributo;
	}
	
	@Basic
	@Column(name="c_usuario")
	public String getcUsuario() {
		return cUsuario;
	}
	public void setcUsuario(String cUsuario) {
		this.cUsuario = cUsuario;
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
	
	@Basic(optional=false)
	@Column(name="c_tipo_atributo")
	public String getcTipoAtributo() {
		return cTipoAtributo;
	}
	public void setcTipoAtributo(String cTipoAtributo) {
		this.cTipoAtributo = cTipoAtributo;
	}
	
	@JoinColumn(name="c_clase",,referencedColumnName = "c_clase")
	@ManyToOne
	public AsClase getAsClase() {
		return asClase;
	}

	public void setAsClase(AsClase asClase) {
		this.asClase = asClase;
	}
//
	@JoinColumn(name="c_tipo_atributo" ,referencedColumnName = "c_tipo_atributo")
	@ManyToOne
	public TbTipoAtributo getTbTipoAtributo() {
		return tbTipoAtributo;
	}

	public void setTbTipoAtributo(TbTipoAtributo tbTipoAtributo) {
		this.tbTipoAtributo = tbTipoAtributo;
	}

	@JoinColumns({
		@JoinColumn(name="c_metodo", referencedColumnName = "c_metodo"),
		@JoinColumn(name="c_clase", referencedColumnName = "c_clase")
	})
	@ManyToOne
	public AsMetodo getAsMetodo() {
		return asMetodo;
	}

	public void setAsMetodo(AsMetodo asMetodo) {
		this.asMetodo = asMetodo;
	}
	
}
