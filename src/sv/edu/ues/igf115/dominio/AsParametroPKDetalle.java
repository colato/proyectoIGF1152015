package sv.edu.ues.igf115.dominio;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class AsParametroPKDetalle implements Serializable{
	private static final long serialVersionUID = 1L;
	
	//Un parametro ve a que clase pertenece.
	private Integer cClase;
	
	//Un parametro ve a que metodo pertenece
	private Integer cMetodo;
	
	//PK de un paramtro
	private Integer cParametro;

	//--------------------------------------------------
	
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

	//--------------------------------------------------
	
	@Column(name="c_parametro")
	public Integer getcParametro() {
		return cParametro;
	}

	public void setcParametro(Integer cParametro) {
		this.cParametro = cParametro;
	}

	//--------------------------------------------------
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cClase == null) ? 0 : cClase.hashCode());
		result = prime * result + ((cMetodo == null) ? 0 : cMetodo.hashCode());
		result = prime * result
				+ ((cParametro == null) ? 0 : cParametro.hashCode());
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
		AsParametroPKDetalle other = (AsParametroPKDetalle) obj;
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
		if (cParametro == null) {
			if (other.cParametro != null)
				return false;
		} else if (!cParametro.equals(other.cParametro))
			return false;
		return true;
	}
}
