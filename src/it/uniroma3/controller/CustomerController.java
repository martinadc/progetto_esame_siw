package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Customer;
import it.uniroma3.model.CustomerFacade;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
@SessionScoped
public class CustomerController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String name;
	private String surname;
	private String email;
	private String phoneNumber;
	private String dateOfBirth;
	private String registrationDate;
	
	private Customer customer;
	private List<Customer> customers;
	
	@EJB(beanName="cFacade")
	private CustomerFacade customerFacade;
	
	public String createCustomer() {
		this.customer = customerFacade.createCustomer(name, surname, email, phoneNumber, dateOfBirth, registrationDate);
		return "customer"; 
	}
	
	public String listCustomers() {
		this.customers = customerFacade.getAllCustomers();
		return "customers"; 
	}

	public String findCustomer() {
		this.customer = customerFacade.getCustomer(id);
		return "customer";
	}
	
	public String removeCustomer() {
		customerFacade.deleteCustomer(id);
		return "remove";
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public CustomerFacade getCustomerFacade() {
		return customerFacade;
	}

	public void setCustomerFacade(CustomerFacade customerFacade) {
		this.customerFacade = customerFacade;
	}
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
}
