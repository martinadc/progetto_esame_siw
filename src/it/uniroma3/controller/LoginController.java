package it.uniroma3.controller;

import it.uniroma3.login.DataLog;
import it.uniroma3.login.DatalogFacade;
import it.uniroma3.model.Admin;
import it.uniroma3.model.Customer;

import javax.ejb.EJB;
//import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
//import javax.faces.bean.ManagedProperty;



@ManagedBean
@SessionScoped
public class LoginController {

//	@ManagedProperty(value="#{param.id}")
	private Long id;
	private String email;
	private String password;
	private String ruolo;

	@EJB(beanName="dataFacade")
	private DatalogFacade datalogFacade;

	private DataLog datalog;
	private DataLog datalogAdmin;
	private Customer customer;		 //CLIENTE CORRENTE PER LA SESSIONE
	private Admin admin;			 //ADMIN CORRENTE PER LA SESSIONE

	public LoginController(){
	}
		
	public String verificaCredenziali() {
		String nextPage = "index";
		if(ruolo.equals("cliente")){
			return	nextPage = verificaCredenzialiCliente();
		}
		if(ruolo.equals("amministratore")) 
			return	nextPage = verificaCredenzialiAdmin();
		else 
			return nextPage;
		
		
	}
	
	
	private String verificaCredenzialiCliente() {
		this.customer = datalogFacade.findCustomerByEmail(email);
		if(customer != null) {  
			this.datalog = customer.getDatalog();

			if(datalog.getPassword().equals(password)) 
				return "indexCliente";
			else
				return "errore";
		}
		else return "errore";
	}
	
	private String verificaCredenzialiAdmin() {
		this.admin = datalogFacade.findAdminByEmail(email);
		if(admin != null) {
			this.datalogAdmin = admin.getDatalogAdmin();
			
			if(datalogAdmin.getPassword().equals(password))
				return "indexAdmin";
			else
				return "errore";
		}
		else return "errore";
	}

//	private String verificaCredenzialiAdmin() {
//		this.datalog = datalogFacade.findDatalogByEmail(email);
//		if (datalog != null ) {
//			if(datalog.getPassword().equals(password)) 
//				return "indexAdmin";
//			else
//				return "errore";
//		}
//		else return "errore";
//	}
	
	
	public String tornaAllaHomepage() {
		return "index";
	}
	
	public String tornaHomepageAdmin() {
		return "indexAdmin";
	}
	
	public String tornaHomepageCliente() {
		return "indexCliente";
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

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public DataLog getDatalogAdmin() {
		return datalogAdmin;
	}

	public void setDatalogAdmin(DataLog datalogAdmin) {
		this.datalogAdmin = datalogAdmin;
	}

}
