 package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;

@Entity
@Table (name="AS_clase_interface", catalog="modelo_proyecto", schema="") 
@NamedQueries({
 @NamedQuery( name="as_clase_interface.findClaseInterface", 
		 query="from AsClaseInterface as claseinter where claseinter.c_clase_interface =:c__clase_interface"),
 @NamedQuery(name="as_clase_interface.findAllClaseInterface", 
 query="from AsClaseInterface"
 )
})



public class AsClaseInterface implements Serializable{
  private static final long serialVersionUID = 1L;
  @Id
  @Basic(optional=false)
  @Column(name="c_clase_interface")
  private int c_clase_interface;
  @ManyToOne
  @JoinColumn(name="c_clase")
  private AsClase asclase;
  @ManyToOne
  @JoinColumn(name="c_interface")
  private AsInterface asinterface;

  public AsClaseInterface()
  {}
  
public AsClaseInterface(int c_clase_interface, AsClase asclase, AsInterface asinterface){
	this.c_clase_interface= c_clase_interface;
	this.asclase= asclase;
	this.asinterface=asinterface;
	
}

public int getC_clase_interface() {
	return c_clase_interface;
}
public void setC_clase_interface(int c_clase_interface) {
	this.c_clase_interface = c_clase_interface;
}


public AsClase getAsclase() {
	return asclase;
}
public void setAsclase(AsClase asclase) {
	this.asclase = asclase;
}

public AsInterface getAsinterface() {
	return asinterface;
}
public void setAsinterface(AsInterface asinterface) {
	this.asinterface = asinterface;
}


}

