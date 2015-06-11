package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Stateless(name="cFacade")
public class CustomerFacade {
	
	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;

	/** OPERAZIONI CRUD **/
//	public Customer createCustomer(String name, String surname, String email, String phoneNumber, String dateOfBirth,
//			String registrationDate) {
//		Customer customer = new Customer(name, surname, email, phoneNumber, dateOfBirth, registrationDate);
//		em.persist(customer);
//		return customer;
//	}

	public void createCustomer(Customer customer) {
		em.persist(customer);		
	}
	
	public Customer getCustomer(Long id) {
		Customer customer = em.find(Customer.class, id);
		return customer;
	}
	
	public void updateCustomer(Customer customer) {
        em.merge(customer);
	}
	
    private void deleteCustomer(Customer customer) {
        em.remove(customer);
    }

	public void deleteCustomer(Long id) {
		Customer customer = em.find(Customer.class, id);
        deleteCustomer(customer);
	}

	public List<Customer> getAllCustomers() {
		TypedQuery<Customer> query = this.em.createNamedQuery("findAllCustomers", Customer.class);
		List<Customer> customerList = query.getResultList();
		return customerList;
	}
	
}
