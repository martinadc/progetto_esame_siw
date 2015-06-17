package it.uniroma3.model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless(name="olFacade")
public class OrderLineFacade {

	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;
	
	/** OPERAZIONI CRUD **/
	public void createOrderLine(OrderLine orderline) {
		em.persist(orderline);		
	}

	public OrderLine getOrderLine(Long id) {
		OrderLine orderline = em.find(OrderLine.class, id);
		return orderline;
	}

	public void updateOrderLine(OrderLine orderline) {
        em.merge(orderline);
	}
	
    private void deleteOrderLine(OrderLine orderline) {
        em.remove(orderline);
    }

	public void deleteOrderLine(Long id) {
		OrderLine orderline = em.find(OrderLine.class, id);
        deleteOrderLine(orderline);
	}
}
