package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Address;
import it.uniroma3.model.AddressFacade;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
@SessionScoped
public class AddressController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String street;
	private String city;
	private String state;
	private Long cap;
	private String province;
	private Address address;
	private List<Address> addresses;

	@EJB(beanName="aFacade")
	private AddressFacade addressFacade;

	public String createAddress() {
		this.address = addressFacade.createAddress(street, city,  province,  cap, state);
		return "address"; 
	}

	public String listAddress() {
		this.addresses = addressFacade.getAllAddresses();
		return "addresses"; 
	}

	public String findAddress() {
		this.address = addressFacade.getAddress(id);
		return "address";
	}

	public String removeAddress() {
		addressFacade.deleteAddress(id);
		return "remove";
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


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public List<Address> getAddresses() {
		return addresses;
	}


	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}


	public AddressFacade getAddressFacade() {
		return addressFacade;
	}


	public void setAddressFacade(AddressFacade addressFacade) {
		this.addressFacade = addressFacade;
	}

}
