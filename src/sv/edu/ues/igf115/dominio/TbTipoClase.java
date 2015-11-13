package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="TB_tipo_clase",catalog="modelo_proyecto",schema="")
@NamedQueries({
	@NamedQuery(name = "TbTipoClase.findAll", query = "from TbTipoClase"),
	@NamedQuery(name="daTipoClaseById",
			query="from TbTipoClase as tipoClase where tipoClase.cTipoClase=:cTipoClase"),
	@NamedQuery(name="daTipoClaseNombre",
			query="from TbTipoClase as tipoClase where tipoClase.dTipoClase=:dTipoClase"),
	
})

public class TbTipoClase implements Serializable{
	 private static final long serialVersionUID = 1L;
	 @Id
	 @Basic(optional = false)
	 @Column(name = "c_tipo_clase")
	 private String cTipoClase;
	 @Basic(optional=false)
	 @Column(name = "d_tipo_clase")
     private String dTipoClase;	
	 @Basic(optional = false)
	 @Temporal(TemporalType.DATE)
	 @Column(name = "f_ingreso")
     private Date fIngreso;

	//@OneToMany: (1:N) Asocia varios campos con uno 
	    //Multiplicidad 1:N Una Tipo Clase tiene muchas clases
	 @OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY, mappedBy = "tbTipoClase" )
     private List<AsClase> asClaseList = new ArrayList<AsClase> ();

     //private List<AsClase> asClaseList;

     

    @SuppressWarnings("unused")
	private TbTipoClase() {
    //Constructor que utiliza hibernate
    }

	
   
    public TbTipoClase(String cTipoClase,String dTipoClase, Date fIngreso) {
       this.cTipoClase=cTipoClase;
       this.dTipoClase = dTipoClase;
       this.fIngreso = fIngreso;
       
    }
    

    

    public String getcTipoClase() {
        return cTipoClase;
    }
    
    public void setcTipoClase(String cTipoClase) {
        this.cTipoClase = cTipoClase;
    }
   
    public String getdTipoClase() {
        return dTipoClase;
    }
    
    public void setdTipoClase(String dTipoClase) {
        this.dTipoClase = dTipoClase;
    }
    
    
    public Date getfIngreso() {
        return fIngreso;
    }
    
    public void setfIngreso(Date fIngreso) {
        this.fIngreso = fIngreso;
    }




    public List<AsClase> getAsClaseList() {
        return asClaseList;
    }


    public void setAsClaseList(List<AsClase> asClaseList) {
       this.asClaseList = asClaseList;
    }
}
   


