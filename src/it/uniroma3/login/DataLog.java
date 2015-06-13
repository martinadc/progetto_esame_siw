package it.uniroma3.login;

import it.uniroma3.model.Admin;
import it.uniroma3.model.Customer;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "data_log")
@NamedQueries({@NamedQuery(name = "findCustomer", query = "SELECT d.customer FROM DataLog d WHERE d.email = :email") , @NamedQuery(name = "findDatalog", query= "SELECT d FROM DataLog d WHERE d.email = :email")})
public class DataLog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(unique = true, nullable = false)
	private String email;
	@Column(nullable = false)
	private String password;
	
	@OneToOne(mappedBy = "datalog")
	private Customer customer;
	
	@OneToOne(mappedBy = "datalogAdmin")
	private Admin admin;
	
	public DataLog(){
	}
	
	public DataLog(String email, String password){
		this.email = email;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	
	
}
