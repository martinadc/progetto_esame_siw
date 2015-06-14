package it.uniroma3.controller;

import it.uniroma3.model.Customer;
import it.uniroma3.model.CustomerFacade;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;

import java.util.List;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
//import javax.faces.bean.SessionScoped;
import javax.faces.bean.ManagedProperty;

@ManagedBean
@SessionScoped
public class OrderController {

	@ManagedProperty(value="#{param.id}")
	private Long id;						//parametro che rappresenta l'id del cliente
	
	private Order order;
	private List<Order> orders;
	private List<Order> customerOrders;
	
	private Customer customer;
	
	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;
	
	@EJB(beanName="cFacade")
	private CustomerFacade customerFacade;
	
	
	public String createOrder() {
		this.customer = customerFacade.getCustomer(id);
		if(customer!=null){
			this.order = new Order();
			this.order.setCustomer(customer);
//			this.customer.getOrders().add(order);
			orderFacade.createOrder(order);		
			return "order";
		}
		else
			return "indexCliente";
	}
	
	
	public String listOrders() {
		this.orders = orderFacade.getAllOrders();
		return "orders"; 
	}
	
	
	public String listCustomerOrders() {
		this.customerOrders = orderFacade.getAllCustomerOrders(id);
		return "customerOrders";
	}

	public String findOrder() {
		this.order = orderFacade.getOrder(id);
		return "order";
	}
	
	public String findOrderForAdmin() {
		this.order = orderFacade.getOrder(id);
		return "orderAdmin";
	}
	
	public String removeOrder() {
		orderFacade.deleteOrder(id);
		return "remove";
	}

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public OrderFacade getOrderFacade() {
		return orderFacade;
	}

	public void setOrderFacade(OrderFacade orderFacade) {
		this.orderFacade = orderFacade;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public CustomerFacade getCustomerFacade() {
		return customerFacade;
	}

	public void setCustomerFacade(CustomerFacade customerFacade) {
		this.customerFacade = customerFacade;
	}


	public List<Order> getCustomerOrders() {
		return customerOrders;
	}


	public void setCustomerOrders(List<Order> customerOrders) {
		this.customerOrders = customerOrders;
	}

}
