package it.uniroma3.controller;

import it.uniroma3.login.DataLog;
import it.uniroma3.login.DatalogFacade;
import it.uniroma3.model.Customer;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
@SessionScoped
public class DatalogController {
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
//	@ManagedProperty(value="#{param.email}")
	private String email;
	private String password;
	
	
	@EJB(beanName="dataFacade")
	private DatalogFacade datalogFacade;
	
	private DataLog datalog;
	private Customer customer;
	
	
	public String createDatalog() {
		this.datalog = datalogFacade.createDatalog(email,password);
		return "mostraDatalog"; 
	}
	
	
	public String findDatalogByEmail(){
		this.datalog = datalogFacade.findDatalogByEmail(email);
		return "mostraDatalog";
	}
	
	public String findCustomerByEmail(){
		this.customer = datalogFacade.findCustomerByEmail(email);
		return "mostraCliente";
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


	public DatalogFacade getDatalogFacade() {
		return datalogFacade;
	}


	public void setDatalogFacade(DatalogFacade datalogFacade) {
		this.datalogFacade = datalogFacade;
	}


	public DataLog getDatalog() {
		return datalog;
	}


	public void setDatalog(DataLog datalog) {
		this.datalog = datalog;
	}


	public Customer getCustomer() {
		return customer;
	}


	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


}
