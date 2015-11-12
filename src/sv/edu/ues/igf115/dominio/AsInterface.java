package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;


@Entity
@Table (name="AS_interface", catalog="modelo_proyecto", schema="") 
@NamedQueries({
	@NamedQuery(name="asinterface.findInterface", 
			    query="from AsInterface asi WHERE asi.c_interface =:c_interface"
			    ),
	@NamedQuery(name="asinterface.findAllInterface", 
               query="from AsInterface"
               )
})



public class AsInterface implements Serializable {
	private static final long serialVersionUID = 1L;
    private int c_interface;
    private String d_interface;
    private String c_usuario;
    private Date f_ingreso;
    private List<AsClaseInterface> ListaAsClaseInterface;
    private List<AsInterfaceImplementa> ListaAsInterfaceHijo;
    private List<AsInterfaceImplementa> ListaAsInterfacePadre;
    
	private AsInterface(){ // Lo usa Hibernate
    	
    }
    public AsInterface(int c_interface, String d_interface, String c_usuario, Date f_ingreso){
    this.c_interface= c_interface;
    this.c_usuario= c_usuario;
    this.d_interface=d_interface;
    this.f_ingreso=f_ingreso;
    
    }
    @Id
    @Basic(optional=false)
	@Column(name="c_interface") // PK de la tabla AS_interface
	public int getC_interface() {
		return c_interface;
	}
    
	public void setC_interface(int c_interface) {
		this.c_interface = c_interface;
	}
	
	@Basic(optional=false)
	@Column(name="d_interface")
	public String getD_interface() {
		return d_interface;
	}
	public void setD_interface(String d_interface) {
		this.d_interface = d_interface;
	}
	@Basic(optional=false)
	@Column(name="c_usuario")
	public String getC_usuario() {
		return c_usuario;
	}
	public void setC_usuario(String c_usuario) {
		this.c_usuario = c_usuario;
	}
	
	@Basic(optional=false)
	@Column(name="f_ingreso")
	
	public Date getF_ingreso() {
		return f_ingreso;
	}
	public void setF_ingreso(Date f_ingreso) {
		this.f_ingreso = f_ingreso;
	} 
	@OneToMany (cascade= CascadeType.ALL, mappedBy="AsInterface")
	public List<AsClaseInterface> getListaAsClaseInterface() {
		return ListaAsClaseInterface;
	}
	public void setListaAsClaseInterface(
			List<AsClaseInterface> listaAsClaseInterface) {
		ListaAsClaseInterface = listaAsClaseInterface;
	}
	
	@OneToMany (cascade= CascadeType.ALL, mappedBy="AsInterface")
	public List<AsInterfaceImplementa> getListaAsInterfaceHijo() {
		return ListaAsInterfaceHijo;
	}
	public void setListaAsInterfaceHijo(
			List<AsInterfaceImplementa> listaAsInterfaceHijo) {
		ListaAsInterfaceHijo = listaAsInterfaceHijo;
	}
	@OneToMany (cascade= CascadeType.ALL, mappedBy="AsInterface")
	public List<AsInterfaceImplementa> getListaAsInterfacePadre() {
		return ListaAsInterfacePadre;
	}
	public void setListaAsInterfacePadre(
			List<AsInterfaceImplementa> listaAsInterfacePadre) {
		ListaAsInterfacePadre = listaAsInterfacePadre;
	}
    
    
    
}
