package it.uniroma3.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
public class Address {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false)
	private String street;
	
	private String city;
	
	private String state;
	
	@Column(length = 5)
	private Long cap;
	
	private String province;
	
	public Address() {
	}
	
	public Address(String street, String city, String province, Long cap, String state) {
		this.street = street;
		this.city = city;
		this.province = province;
		this.state = state;
		this.cap = cap;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	
	public Long getCap() {
		return cap;
	}

	public void setCap(Long cap) {
		this.cap = cap;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

		
	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		sb.append("Address"); 
		sb.append("{id=").append(id); 
		sb.append(", street='").append(street); 
		sb.append(", city=").append(city); 
		sb.append(", province='").append(province); 
		sb.append(", state='").append(state);
		sb.append(", cap='").append(cap);
		sb.append("}\n");
		return sb.toString();
	}

}