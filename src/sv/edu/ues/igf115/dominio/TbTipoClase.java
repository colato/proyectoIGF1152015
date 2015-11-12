package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name="TB_tipo_clase",catalog="modelo_proyecto",schema="")
@NamedQueries({
	@NamedQuery(name="daTipoClaseById",
			query="from TbTipoClase as tipoClase where tipoClase.cTipoClase=:cTipoClase"),
	@NamedQuery(name="daTipoClaseNombre",
			query="from TbTipoClase as tipoClase where tipoClase.dTipoClase=:dTipoClase")
})
/*@NamedQuery(name = "TbTipoClase.findAll", query = "FROM TbTipoClase"),
@NamedQuery(name = "TbTipoClase.findByCTipoClase", query = "FROM TbTipoClase as tc WHERE tc.cTipoClase = :cTipoClase"),*/
public class TbTipoClase implements Serializable{
	 private static final long serialVersionUID = 1L;
	 private String cTipoClase;
     private String dTipoClase;
     private Date fIngreso;
     private List<AsClase> asClaseList;
     

    @SuppressWarnings("unused")
	private TbTipoClase() {
    //Constructor que utiliza hibernate
    }

	
   
    public TbTipoClase(String cTipoClase,String dTipoClase, Date fIngreso) {
       this.cTipoClase=cTipoClase;
       this.dTipoClase = dTipoClase;
       this.fIngreso = fIngreso;
       
    }
    
    @Id
    
    @Basic(optional = false)
    @Column(name = "c_tipo_clase")
    public String getcTipoClase() {
        return cTipoClase;
    }
    
    public void setcTipoClase(String cTipoClase) {
        this.cTipoClase = cTipoClase;
    }
    @Basic(optional=false)
    @Column(name = "d_tipo_clase")
    public String getdTipoClase() {
        return dTipoClase;
    }
    
    public void setdTipoClase(String dTipoClase) {
        this.dTipoClase = dTipoClase;
    }
    @Basic(optional = false)
    @Column(name = "f_ingreso")
    
    public Date getfIngreso() {
        return fIngreso;
    }
    
    public void setfIngreso(Date fIngreso) {
        this.fIngreso = fIngreso;
    }

  
 // @OneToMany: (1:N) Asocia varios campos con uno 
    // Multiplicidad 1:N Una Tipo Clase tiene muchas clases
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tbTipoClase" )
    public List<AsClase> getAsClaseList() {
        return asClaseList;
    }

    public void setAsClaseList(List<AsClase> asClaseList) {
        this.asClaseList = asClaseList;
    }
}
   


