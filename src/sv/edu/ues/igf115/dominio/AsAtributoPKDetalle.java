package sv.edu.ues.igf115.dominio;

import java.io.Serializable;
import javax.persistence.*;


@Embeddable
public class AsAtributoPKDetalle implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer cClase;
	private Integer cAtributo;
	
	@Column(name="c_clase")
	public Integer getcClase(){
		return cClase;
	}
	
	public void setcClase(Integer cClase){
		this.cClase = cClase;
	}
	
	@Column(name="c_atributo")
	public Integer getcAtributo(){
		return cAtributo;
	}
	
	public void setcAtributo (Integer cAtributo){
		this.cAtributo = cAtributo;
	}
	
	@Override
	public int hashCode(){
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cClase == null) ? 0 : cClase.hashCode());
		result = prime * result + ((cAtributo == null) ? 0 : cAtributo.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AsAtributoPKDetalle other = (AsAtributoPKDetalle) obj;
		if (cClase == null) {
			if (other.cClase != null)
				return false;
		} else if (!cClase.equals(other.cClase))
			return false;
		if (cAtributo == null) {
			if (other.cAtributo != null)
				return false;
		} else if (!cAtributo.equals(other.cAtributo))
			return false;
		return true;
	}
}
