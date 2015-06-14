package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Stateless(name="oFacade")
public class OrderFacade {

	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;

		
	/** OPERAZIONI CRUD **/
	public void createOrder(Order order) {
		em.persist(order);		
	}

	public Order getOrder(Long id) {
		Order order = em.find(Order.class, id);
		return order;
	}

	public void updateOrder(Order order) {
        em.merge(order);
	}
	
    private void deleteOrder(Order order) {
        em.remove(order);
    }

	public void deleteOrder(Long id) {
		Order order = em.find(Order.class, id);
        deleteOrder(order);
	}

	public List<Order> getAllOrders() {
		TypedQuery<Order> query = this.em.createNamedQuery("findAllOrders", Order.class);
		List<Order> orderList = query.getResultList();
		return orderList;
	}

	public List<Order> getAllCustomerOrders(Long id) {
		TypedQuery<Order> query = this.em.createNamedQuery("findAllCustomerOrders", Order.class);
		query.setParameter("id", id);
		List<Order> orderList = query.getResultList();
		return orderList;
	}
	
	
	
	

}
