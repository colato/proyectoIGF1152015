package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;



@Entity
@Table(name="AS_clase",catalog="modelo_proyecto",schema="")
@NamedQueries({
	@NamedQuery(name = "AsClase.findAll", query = "from AsClase"),
	@NamedQuery(name="daClaseById",
			query="from AsClase as clase where clase.cClase=:cClase"),
	@NamedQuery(name="daClaseNombre",
			query="from AsClase as clase where clase.dClase=:dClase")
})

public class AsClase implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@Column(name = "c_clase")
	private int cClase;
	@Basic(optional = false)
	@Column(name = "d_clase")
    private String dClase;
	@Column(name="c_usuario")
    private String cUsuario;
	@Basic(optional = false)
	@Column(name = "f_ingreso")
	@Temporal(TemporalType.DATE)
    private Date fIngreso;
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
    private List<AsClaseInterface> listaAsClaseInterface;
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
	private List<AsMetodo> listaAsMetodo;
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
    private List<AsAtributo> listaAsAtributo;
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="asClase")
    private List<AsObservacion> listaAsObservacion;
    @OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY,mappedBy = "asClase")
    private List<AsClase> listaAsClase;
    @JoinColumn(name="c_tipo_clase", nullable=false)
    @ManyToOne(fetch=FetchType.LAZY)
    private TbTipoClase tbTipoClase;
    @JoinColumn(name="c_aplicativo", nullable=false)
    @ManyToOne(fetch=FetchType.LAZY)
    private TbAplicativo tbAplicativo;
    
    @JoinColumn(name="c_clase_padre",referencedColumnName="c_clase")
    @ManyToOne(fetch=FetchType.LAZY)
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
   


   
   public int getCClase() {
       return this.cClase;
   }
   
   public void setCClase(int cClase) {
       this.cClase = cClase;
   }
   
   public TbTipoClase getTbTipoClase() {
       return this.tbTipoClase;
   }
   
   public void setTbTipoClase(TbTipoClase tbTipoClase) {
       this.tbTipoClase = tbTipoClase;
   }
   
   public TbAplicativo getTbAplicativo() {
       return this.tbAplicativo;
   }
   
   public void setTbAplicativo(TbAplicativo tbAplicativo) {
       this.tbAplicativo = tbAplicativo;
   }
   
   public AsClase getAsClasep() {
       return this.asClasep;
   }
   
   public void setAsClasep(AsClase asClasep) {
       this.asClasep = asClasep;
   }
   
   public String getDClase() {
       return this.dClase;
   }
   
   public void setDClase(String dClase) {
       this.dClase = dClase;
   }
   
   public String getCUsuario() {
       return this.cUsuario;
   }
   
   public void setCUsuario(String cUsuario) {
       this.cUsuario = cUsuario;
   }
   
   public Date getFIngreso() {
       return this.fIngreso;
   }
   
   public void setFIngreso(Date fIngreso) {
       this.fIngreso = fIngreso;
   }
 
   public List<AsMetodo> getListaAsMetodo() {
		return listaAsMetodo;
	}

  
	public List<AsAtributo> getListaAsAtributo() {
		return listaAsAtributo;
	}

   
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

   
	
	public List<AsClaseInterface> getListaAsClaseInterface() {
		return listaAsClaseInterface;
	}
	
	
	public void setListaAsClaseInterface(
			List<AsClaseInterface> listaAsClaseInterface) {
		this.listaAsClaseInterface = listaAsClaseInterface;
	}
	


   
   
}
