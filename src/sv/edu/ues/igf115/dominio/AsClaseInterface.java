 package sv.edu.ues.igf115.dominio;
import java.io.Serializable;
import java.util.*;
import javax.persistence.*;

@Entity
@Table (name="AS_clase_interface", catalog="modelo_proyecto", schema="") 
@NamedQueries({
 @NamedQuery( name="as_clase_interface.findClaseInterface", 
		 query="from AsClaseInterface claseinter where claseinter.c_clase_interface =:c__clase_interface"),
 @NamedQuery(name="as_clase_interface.findAllClaseInterface", 
 query="from AsClaseInterface"
 )
})



public class AsClaseInterface implements Serializable{
  private static final long serialVersionUID = 1L;
  private int c_clase_interface;
  private int asclase;
  private int asinterface;

  private AsClaseInterface()
  {}
  
public AsClaseInterface(int c_clase_interface, int asclase, int asinterface){
	this.c_clase_interface= c_clase_interface;
	this.asclase= asclase;
	this.asinterface=asinterface;
	
}
@Id
@Basic(optional=false)
@Column(name="c_clase_interface")
public int getC_clase_interface() {
	return c_clase_interface;
}
public void setC_clase_interface(int c_clase_interface) {
	this.c_clase_interface = c_clase_interface;
}

@JoinColumn(name="c_clase", referencedColumnName="c_clase")
@ManyToOne(optional= false)
public int getAsclase() {
	return asclase;
}
public void setAsclase(int asclase) {
	this.asclase = asclase;
}
@JoinColumn(name="c_interface", referencedColumnName="c_interface")
@ManyToOne(optional= false)
public int getAsinterface() {
	return asinterface;
}
public void setAsinterface(int asinterface) {
	this.asinterface = asinterface;
}


}

