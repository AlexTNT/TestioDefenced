package by.beltelecom.contactManager.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MYTABLE")
public class Merged {

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

}
