package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@Entity
public class Provider {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;

	@Column(unique = true, nullable = false)
	private String vatin;						//numero partita iva
	
	private String phoneNumber;
	private String email;
	

	@ManyToMany
	private List<Product> products;

	@OneToOne(cascade= {CascadeType.PERSIST, CascadeType.REMOVE})
	private Address address;

	public Provider() {
	}

	public Provider(String name, String phoneNumber, String email, String vatin) {
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.vatin = vatin;							
		this.products = new ArrayList<Product>();
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

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getVatin() {
		return vatin;
	}

	public void setVatin(String vatin) {
		this.vatin = vatin;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	@Override
	public boolean equals(Object obj) {
		Provider provider = (Provider) obj;
		return this.getVatin().equals(provider.getVatin());
	}

	@Override
	public int hashCode() {
		return this.vatin.hashCode();
	}
	
	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		sb.append("Provider"); 
		sb.append("{id=").append(id); 
		sb.append(", name='").append(name); 
		sb.append(", phone number=").append(phoneNumber); 
		sb.append(", email='").append(email); 
		sb.append(", vatin='").append(vatin);
		sb.append("}\n");
		return sb.toString();
	}
}
