package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name="AS_observacion",catalog="modelo_proyecto",schema="")
@NamedQueries({
	@NamedQuery(name = "AsObservacion.findAll", query = "from AsObservacion"),
	//@NamedQuery(name="daObservacionById",
	//		query="from AsObservacion as ob where ob.cObservacion=:cObservacion"),
	@NamedQuery(name="daObservacionNombre",
			query="from AsObservacion as ob where ob.dObservacion=:dObservacion")
})

public class AsObservacion implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int cObservacion;
    private String dObservacion;
    private String cUsuario;
    private Date fIngreso;
    private int bActivo;
    private AsMetodo asMetodo;
    private AsAtributo asAtributo;
    private AsParametro asParametro;
    private AsClase asClase;

   @SuppressWarnings("unused")
   private AsObservacion() {
   }

	
   
   public AsObservacion(int cObsevacion,String dObservacion, String cUsuario, Date fIngreso, int bActivo,AsMetodo asMetodo, AsAtributo asAtributo, AsParametro asParametro, AsClase asClase) {
      this.cObservacion=cObservacion;
      this.asMetodo = asMetodo;
      this.asAtributo = asAtributo;
      this.asParametro = asParametro;
      this.asClase = asClase;
      this.dObservacion = dObservacion;
      this.cUsuario = cUsuario;
      this.fIngreso = fIngreso;
      this.bActivo = bActivo;
   }
  
   @Id
   
   @Basic(optional = false)
   @Column(name = "c_observacion")
   public int getCObservacion() {
       return this.cObservacion;
   }
   
   public void setCObservacion(int cObservacion) {
       this.cObservacion = cObservacion;
   }
   
   
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumns( { 
       @JoinColumn(name="c_clase", referencedColumnName="c_clase",insertable=false,updatable=false), 
       @JoinColumn(name="c_metodo", referencedColumnName="c_metodo",insertable=false,updatable=false) } )
   public AsMetodo getAsMetodo() {
       return this.asMetodo;
   }
  

   public void setAsMetodo(AsMetodo asMetodo) {
       this.asMetodo = asMetodo;
   }
   
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumns( { 
       @JoinColumn(name="c_clase", referencedColumnName="c_clase",insertable=false,updatable=false), 
       @JoinColumn(name="c_atributo", referencedColumnName="c_atributo",insertable=false,updatable=false) } )
   public AsAtributo getAsAtributo() {
       return this.asAtributo;
   }
   
   public void setAsAtributo(AsAtributo asAtributo) {
       this.asAtributo = asAtributo;
   }
    
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumns( { 
       @JoinColumn(name="c_clase", referencedColumnName="c_clase",insertable=false,updatable=false), 
       @JoinColumn(name="c_metodo", referencedColumnName="c_metodo",insertable=false,updatable=false), 
       @JoinColumn(name="c_parametro", referencedColumnName="c_parametro",insertable=false,updatable=false) } )
   public AsParametro getAsParametro() {
       return this.asParametro;
   }
   
   public void setAsParametro(AsParametro asParametro) {
       this.asParametro = asParametro;
   }
   
   
       
   @ManyToOne(fetch=FetchType.LAZY)
   @JoinColumn(name="c_clase",referencedColumnName="c_clase",insertable=false,updatable=false)
   public AsClase getAsClase() {
       return this.asClase;
   }
   
   public void setAsClase(AsClase asClase) {
       this.asClase = asClase;
   }


   @Column(name = "d_observacion")
	public String getdObservacion() {
		return dObservacion;
	}
	
	
   @Column(name = "c_usuario")
	public String getcUsuario() {
		return cUsuario;
	}
	
	@Basic(optional= false)
	@Column(name = "f_ingreso")
	@Temporal(TemporalType.TIMESTAMP)
	public Date getfIngreso() {
		return fIngreso;
	}
	
	
	@Column(name="b_activo")
	public int getbActivo() {
		return bActivo;
	}
	
	
	
	public void setdObservacion(String dObservacion) {
		this.dObservacion = dObservacion;
	}
	
	
	
	public void setcUsuario(String cUsuario) {
		this.cUsuario = cUsuario;
	}



	public void setfIngreso(Date fIngreso) {
		this.fIngreso = fIngreso;
	}
	
	
	
	public void setbActivo(int bActivo) {
		this.bActivo = bActivo;
	}
  
   

}
