package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;



@Entity
@Table(name="AS_clase",catalog="modelo_proyecto",schema="")
@NamedQueries({
	@NamedQuery(name="daClaseById",
			query="from AsClase as clase where clase.cClase=:cClase"),
	@NamedQuery(name="daClaseNombre",
			query="from AsClase as clase where clase.dClase=:dClase")
})

public class AsClase implements Serializable{
	private static final long serialVersionUID = 1L;
	private int cClase;
    private String dClase;
    private String cUsuario;
    private Date fIngreso;
    private List<AsClaseInterface> listaAsClaseInterface;
	private List<AsMetodo> listaAsMetodo;
    private List<AsAtributo> listaAsAtributo;
    private List<AsObservacion> listaAsObservacion;
    private List<AsClase> listaAsClase;
    private TbTipoClase tbTipoClase;
    private TbAplicativo tbAplicativo;
    private AsClase asClasep;

    
  @SuppressWarnings("unused")
   private AsClase() {
	  //Constructor que utiliza hibernate
   }

	
   public AsClase(int cClase,String dClase,String cUsuario, Date fIngreso,TbTipoClase tbTipoClase, TbAplicativo tbAplicativo,AsClase asClasep) {
       this.cClase= cClase;
       this.tbTipoClase = tbTipoClase;
       this.tbAplicativo = tbAplicativo;
       this.dClase = dClase;
       this.fIngreso = fIngreso;
       this.asClasep = asClasep;
       this.cUsuario = cUsuario;
   }
   
   public AsClase(int cClase, String dClase, String cUsuario, Date fIngreso,
		List<AsClaseInterface> listaAsClaseInterface,
		List<AsMetodo> listaAsMetodo, List<AsAtributo> listaAsAtributo,
		List<AsObservacion> listaAsObservacion, List<AsClase> listaAsClase,
		TbTipoClase tbTipoClase, TbAplicativo tbAplicativo, AsClase asClasep) {
	super();
	this.cClase = cClase;
	this.dClase = dClase;
	this.cUsuario = cUsuario;
	this.fIngreso = fIngreso;
	this.listaAsClaseInterface = listaAsClaseInterface;
	this.listaAsMetodo = listaAsMetodo;
	this.listaAsAtributo = listaAsAtributo;
	this.listaAsObservacion = listaAsObservacion;
	this.listaAsClase = listaAsClase;
	this.tbTipoClase = tbTipoClase;
	this.tbAplicativo = tbAplicativo;
	this.asClasep = asClasep;
}


@Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Basic(optional = false)
   @Column(name = "c_clase")
   public int getCClase() {
       return this.cClase;
   }
   
   public void setCClase(int cClase) {
       this.cClase = cClase;
   }
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumn(name="c_tipo_clase", nullable=false)
   public TbTipoClase getTbTipoClase() {
       return this.tbTipoClase;
   }
   
   public void setTbTipoClase(TbTipoClase tbTipoClase) {
       this.tbTipoClase = tbTipoClase;
   }
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumn(name="c_aplicativo", nullable=false)
   public TbAplicativo getTbAplicativo() {
       return this.tbAplicativo;
   }
   
   public void setTbAplicativo(TbAplicativo tbAplicativo) {
       this.tbAplicativo = tbAplicativo;
   }
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumn(name="c_clase_padre")
   public AsClase getAsClase() {
       return this.asClasep;
   }
   
   public void setAsClase(AsClase asClasep) {
       this.asClasep = asClasep;
   }
   @Basic(optional = false)
   @Column(name = "d_clase")
   public String getDClase() {
       return this.dClase;
   }
   
   public void setDClase(String dClase) {
       this.dClase = dClase;
   }
   @Column(name="c_usuario")
   public String getCUsuario() {
       return this.cUsuario;
   }
   
   public void setCUsuario(String cUsuario) {
       this.cUsuario = cUsuario;
   }
   @Basic(optional = false)
   @Column(name = "f_ingreso")
   @Temporal(TemporalType.DATE)
   public Date getFIngreso() {
       return this.fIngreso;
   }
   
   public void setFIngreso(Date fIngreso) {
       this.fIngreso = fIngreso;
   }
   @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
   public List<AsMetodo> getListaAsMetodo() {
		return listaAsMetodo;
	}

   @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
	public List<AsAtributo> getListaAsAtributo() {
		return listaAsAtributo;
	}

   @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
	public List<AsObservacion> getListaAsObservacion() {
		return listaAsObservacion;
	}


	public List<AsClase> getListaAsClase() {
		return listaAsClase;
	}


	public void setListaAsMetodo(List<AsMetodo> listaAsMetodo) {
		this.listaAsMetodo = listaAsMetodo;
	}


	public void setListaAsAtributo(List<AsAtributo> listaAsAtributo) {
		this.listaAsAtributo = listaAsAtributo;
	}


	public void setListaAsObservacion(List<AsObservacion> listaAsObservacion) {
		this.listaAsObservacion = listaAsObservacion;
	}


	public void setListaAsClase(List<AsClase> listaAsClase) {
		this.listaAsClase = listaAsClase;
	}

   
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
	public List<AsClaseInterface> getListaAsClaseInterface() {
		return listaAsClaseInterface;
	}
	
	
	public void setListaAsClaseInterface(
			List<AsClaseInterface> listaAsClaseInterface) {
		listaAsClaseInterface = listaAsClaseInterface;
	}
	


   
   
}
