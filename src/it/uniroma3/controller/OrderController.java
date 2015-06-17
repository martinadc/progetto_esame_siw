package it.uniroma3.controller;

import it.uniroma3.model.Customer;
import it.uniroma3.model.CustomerFacade;
import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.Product;
import it.uniroma3.model.ProductFacade;

import java.util.Date;
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
	private Long id;						
	
	private Order order;
	private List<Order> orders;
	
	private List<OrderLine> lines;
		
	private Customer customer;
	
	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;
	
	@EJB(beanName="cFacade")
	private CustomerFacade customerFacade;
	
	@EJB(beanName="pFacade")
	private ProductFacade productFacade;
	
	private List<Order> customerOrders;
	private List<Product> productsCatalog;
	
	public OrderController() {
		
	}
		
	public String createOrder() {
		this.customer = customerFacade.getCustomer(id);
		if(customer!=null){
			this.productsCatalog = productFacade.getAllProducts();
			
			this.order = new Order();
			this.order.setCustomer(customer);
			orderFacade.createOrder(order);		
			return "orderCreated";
		}
		else
			return "indexCliente";
	}
	
	public String modificaOrder() {
		this.productsCatalog = productFacade.getAllProducts();
		this.order = orderFacade.getOrder(id);
		return "orderCreated";
	}
	
	public String closeOrder() {
		this.order = orderFacade.getOrder(id);
		this.order.setCloseTime(new Date());
		orderFacade.updateOrder(order);
		
		return "orderClosed";
		
	}
	
	
	public String listOrders() {
		this.orders = orderFacade.getAllOrders();
		return "orders"; 
	}
	
	
	public String listCustomerOrders() {
		this.customerOrders = orderFacade.getAllCustomerOrders(id);
		return "customerOrders";
	}
	
	public String listCloseOrders() {
		this.orders = orderFacade.getAllOrders();
		return "closeOrders";
	}

	public String findOrder() {
		this.order = orderFacade.getOrder(id);
		//per le stretegie di eager ho caricato oltre all'ordine anche le sue linee ordine e i prodotti relativi
		this.lines = this.order.getOrderLines();
		return "order";
	}
	
	public String findOrderForAdmin() {
		this.order = orderFacade.getOrder(id);
		//per le stretegie di eager
		this.lines = this.order.getOrderLines();
		return "orderAdmin";
	}
	
	public String removeOrder() {
		orderFacade.deleteOrder(id);
		return "remove";
	}

	public String evadeOrder(){
		this.order = orderFacade.getOrder(id);
		boolean isPossibleEvasion = this.isPossibleEvasion(this.order);
		if(isPossibleEvasion){
			this.aggiornaOrdine(order);
			return "orderEvasion";
		}
		else
			return "errorEvasion";
	}
	
	private boolean isPossibleEvasion(Order order) {
		List<OrderLine> lines = order.getOrderLines();			//EAGER PER DEFAULT
		boolean isPossible = true;				//se almeno una riga ordine ha quantita' maggiore 
											    //della disponibilita' in magazzino --> false
		for(OrderLine orderline : lines){
			if(orderline.getQuantity() > orderline.getProduct().getQuantity())
				isPossible = false;
		}
		
		return isPossible;
	}
	
	
	private void aggiornaOrdine(Order order) {
		order.setEvasionTime(new Date());
		orderFacade.updateOrder(order);
		this.aggiornaMagazzino(order);		
	}


	private void aggiornaMagazzino(Order order) {
		this.lines = this.order.getOrderLines();
		for(OrderLine orderline : lines){
			this.aggiornaProdotto(orderline);
		}
		
	}

	private void aggiornaProdotto(OrderLine orderline) {
		Product product = orderline.getProduct();
		
		Integer quantity = orderline.getQuantity(); 
		Integer availableQuantity = product.getQuantity();
		int q = quantity.intValue();
		int avQ = availableQuantity.intValue();
		avQ = avQ - q;
		product.setQuantity(new Integer(avQ));
		
		this.productFacade.updateProduct(product);
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

	public ProductFacade getProductFacade() {
		return productFacade;
	}


	public void setProductFacade(ProductFacade productFacade) {
		this.productFacade = productFacade;
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


	public List<OrderLine> getLines() {
		return lines;
	}


	public void setLines(List<OrderLine> lines) {
		this.lines = lines;
	}


	public List<Product> getProductsCatalog() {
		return productsCatalog;
	}


	public void setProductsCatalog(List<Product> productsCatalog) {
		this.productsCatalog = productsCatalog;
	}

}
