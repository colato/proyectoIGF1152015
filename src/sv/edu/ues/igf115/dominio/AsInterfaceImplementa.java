 package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;

@Entity
@Table (name="AS_interface_implementa", catalog="modelo_proyecto", schema="") 
@NamedQueries({
	@NamedQuery(name="as_interface_implementa.findInterfaceImplementa", 
			    query="from AsInterfaceImplementa as interImp where interImp.c_interface_implementa =:c_interface_implementa"
			    ),
			    
	@NamedQuery(name="as_interface_implementa.findAllInterfaceImplementa", 
               query="from AsInterfaceImplementa"
               )
})


public class AsInterfaceImplementa implements Serializable {
 private static final long serialVersionUID = 1L;	
 @Id
 @Basic (optional=false)
 @Column(name="c_interface_implementa")
  private int c_interface_implementa;
 @JoinColumn(name="c_interface_hijo")
 @ManyToOne(fetch=FetchType.EAGER)
  
  private AsInterface c_interface_hijo;
 @JoinColumn(name="c_interface_padre")
  @ManyToOne(fetch=FetchType.EAGER)
  
  private AsInterface c_interface_padre;
  
public AsInterfaceImplementa(){ //Lo usa Hibernate
	 
 }
 
 public AsInterfaceImplementa (int c_interface_implementa, AsInterface c_interface_hijo, AsInterface c_interface_padre){
	 this.c_interface_implementa=c_interface_implementa;
	 this.c_interface_hijo=c_interface_hijo;
	 this.c_interface_padre=c_interface_padre;
 }
  

public int getC_interface_implementa() {
	return c_interface_implementa;
}
public void setC_interface_implementa(int c_interface_implementa) {
	this.c_interface_implementa = c_interface_implementa;
}

public AsInterface getC_interface_hijo() {
	return c_interface_hijo;
}
public void setC_interface_hijo(AsInterface c_interface_hijo) {
	this.c_interface_hijo = c_interface_hijo;
}

public AsInterface getC_interface_padre() {
	return c_interface_padre;
}
public void setC_interface_padre(AsInterface  c_interface_padre) {
	this.c_interface_padre = c_interface_padre;
}

}
