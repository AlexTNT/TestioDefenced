package by.beltelecom.contactManager.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MYTABLE")
public class MyTable {

	@Id
	@Column(name="ID")
	@GeneratedValue
	private Integer id;
	
	@Column(name="FNAME")
	private String fName;
	
	@Column(name="ROW1")
	private String row1;
	
	@Column(name="ROW2")
	private String row2;
	
	@Column(name="ROW3")
	private String row3;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getRow1() {
		return row1;
	}

	public void setRow1(String row1) {
		this.row1 = row1;
	}

	public String getRow2() {
		return row2;
	}

	public void setRow2(String row2) {
		this.row2 = row2;
	}

	public String getRow3() {
		return row3;
	}

	public void setRow3(String row3) {
		this.row3 = row3;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fName == null) ? 0 : fName.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((row1 == null) ? 0 : row1.hashCode());
		result = prime * result + ((row2 == null) ? 0 : row2.hashCode());
		result = prime * result + ((row3 == null) ? 0 : row3.hashCode());
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
		MyTable other = (MyTable) obj;
		if (fName == null) {
			if (other.fName != null)
				return false;
		} else if (!fName.equals(other.fName))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (row1 == null) {
			if (other.row1 != null)
				return false;
		} else if (!row1.equals(other.row1))
			return false;
		if (row2 == null) {
			if (other.row2 != null)
				return false;
		} else if (!row2.equals(other.row2))
			return false;
		if (row3 == null) {
			if (other.row3 != null)
				return false;
		} else if (!row3.equals(other.row3))
			return false;
		return true;
	}
	
	
}
