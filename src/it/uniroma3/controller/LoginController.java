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
public class LoginController {
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	
	private String email;
	private String password;
	private String ruolo;
	
	@EJB(beanName="dataFacade")
	private DatalogFacade datalogFacade;
	
	private DataLog datalog;
	private Customer customer;


	
    public String verificaCredenziali() {
    	this.datalog = datalogFacade.findDatalogByEmail(email);
    	if(datalog == null) {
    		return "errore";
    	}
    	else if(datalog.getPassword().equals(password)) {
    		if(ruolo.equals("cliente"))
    			return "indexCliente";
    		else
    			return "indexAdmin";
    	}
    	else return "errore";
      		
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


	public String getRuolo() {
		return ruolo;
	}


	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
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
