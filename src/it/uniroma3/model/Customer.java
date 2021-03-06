package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import it.uniroma3.login.DataLog;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(columnNames={"name","surname"}))
@NamedQuery(name = "findAllCustomers", query = "SELECT c FROM Customer c")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String surname;
	private String phoneNumber;
		private String dateOfBirth;
	private String registrationDate;
	
	@OneToMany(mappedBy = "customer", cascade= {CascadeType.ALL})
	private List<Order> orders;
	
	@OneToOne(cascade= {CascadeType.ALL})
	private Address address;
	
	@OneToOne(cascade= {CascadeType.ALL})
	private DataLog datalog;
	
	public Customer(){
	}

	public Customer(String name, String surname, String phoneNumber, String dateOfBirth, String registrationDate) {
		this.name = name;
		this.surname = surname;
		this.phoneNumber = phoneNumber;
		this.dateOfBirth = dateOfBirth;
		this.registrationDate = registrationDate;
		this.orders = new ArrayList<Order>();
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getRegistrationDate() {
		return registrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	public DataLog getDatalog() {
		return datalog;
	}

	public void setDatalog(DataLog datalog) {
		this.datalog = datalog;
	}

	
	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + name
				+ ", lastName=" + surname + ", phoneNumber=" + phoneNumber + ", dateOfBirth="
				+ dateOfBirth + ", registrationDate=" + registrationDate+ "]"
				+ ", orders=" + orders + ", address=" + address + "]";
	}

}
