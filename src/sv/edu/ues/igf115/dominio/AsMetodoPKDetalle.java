package sv.edu.ues.igf115.dominio;

import java.io.Serializable;

import javax.persistence.*;


@Embeddable
public class AsMetodoPKDetalle implements Serializable{
	private static final long serialVersionUID = 1L;

	/**Relación de muchos a uno
	Tiene que ser un  AsClase y parte de la pk
	Relación de: muchos métodos pueden pertenecer a una clase y los 
	Metodos ven a que clase pertenecen.**/
	private Integer cClase; 
	
	//Pk de la clase
	private Integer cMetodo;

	@Column(name="c_clase")
	public Integer getcClase() {
		return cClase;
	}

	public void setcClase(Integer cClase) {
		this.cClase = cClase;
	}
	
	//--------------------------------------------------
	
	@Column(name="c_metodo")
	public Integer getcMetodo() {
		return cMetodo;
	}

	public void setcMetodo(Integer cMetodo) {
		this.cMetodo = cMetodo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cClase == null) ? 0 : cClase.hashCode());
		result = prime * result + ((cMetodo == null) ? 0 : cMetodo.hashCode());
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
		AsMetodoPKDetalle other = (AsMetodoPKDetalle) obj;
		if (cClase == null) {
			if (other.cClase != null)
				return false;
		} else if (!cClase.equals(other.cClase))
			return false;
		if (cMetodo == null) {
			if (other.cMetodo != null)
				return false;
		} else if (!cMetodo.equals(other.cMetodo))
			return false;
		return true;
	}
	
}
	