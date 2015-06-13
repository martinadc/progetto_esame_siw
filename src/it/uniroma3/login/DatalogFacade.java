package it.uniroma3.login;

import it.uniroma3.model.Customer;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


@Stateless(name="dataFacade")
public class DatalogFacade {
	
	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;

	/** OPERAZIONI CRUD **/
	//l'operazioni di create potrebbe non essere implementata perche' il datalog e' creato contestualmente alla creazione del cliente
	public DataLog createDatalog(String email, String password) {
		DataLog datalog = new DataLog(email, password);
		em.persist(datalog);
		return datalog;
	}
	
	public DataLog getDatalog(Long id) {
		DataLog datalog = em.find(DataLog.class, id);
		return datalog;
	}
	
	public void updateDatalog(DataLog datalog) {
        em.merge(datalog);
	}
	
    private void deleteDatalog(DataLog datalog) {
        em.remove(datalog);
    }

	public void deleteDatalog(Long id) {
		DataLog datalog = em.find(DataLog.class, id);
        deleteDatalog(datalog);
	}
	
	
	public Customer findCustomerByEmail(String email) {
		try {
			Query query = this.em.createNamedQuery("findCustomer", Customer.class);
			query.setParameter("email", email);
			Customer customer = (Customer) query.getSingleResult();
			return customer;
		}
		catch(Exception ex){
			return null;
		}
	}

	public DataLog findDatalogByEmail(String email) {
		try {
			Query query = this.em.createNamedQuery("findDatalog", DataLog.class);
			query.setParameter("email", email);
			DataLog datalog = (DataLog) query.getSingleResult();
			return datalog;
		}
		catch(Exception ex){
			return null;
		}
	}

	
}
