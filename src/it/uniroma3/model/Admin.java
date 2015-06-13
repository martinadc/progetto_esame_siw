package it.uniroma3.model;

import it.uniroma3.login.DataLog;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(columnNames={"name","surname"}))
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String surname;

	@OneToOne(cascade= {CascadeType.ALL})
	private DataLog datalogAdmin;


	public Admin() {
	}
	public Admin(String name, String surname) {
		this.name = name;
		this.surname = surname;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public DataLog getDatalogAdmin() {
		return datalogAdmin;
	}
	public void setDatalogAdmin(DataLog datalogAdmin) {
		this.datalogAdmin = datalogAdmin;
	}






}




