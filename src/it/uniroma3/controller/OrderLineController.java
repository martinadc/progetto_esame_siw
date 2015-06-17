package it.uniroma3.controller;

import java.util.List;

import it.uniroma3.model.Order;
import it.uniroma3.model.OrderFacade;
import it.uniroma3.model.OrderLine;
import it.uniroma3.model.OrderLineFacade;
import it.uniroma3.model.Product;
import it.uniroma3.model.ProductFacade;

import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean
@SessionScoped
public class OrderLineController {

	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private Integer quantity;
	private String productCode;
	
	private OrderLine orderline;
	private List<OrderLine> orderlines;
	
	private Product product;
	private Order order;
	private List<OrderLine> orderlinesOrder;
	
	@EJB(beanName="oFacade")
	private OrderFacade orderFacade;

	@EJB(beanName="olFacade")
	private OrderLineFacade orderlineFacade;
	
	@EJB(beanName="pFacade")
	private ProductFacade productFacade;
	
	public OrderLineController(){
		
	}
	
	public String createOrderLine() {
		this.product = productFacade.findProductByCode(productCode);
		if(product!=null){
			this.orderline = new OrderLine(product.getPrice(), quantity);
			this.orderline.setProduct(product);
			orderlineFacade.createOrderLine(orderline);
			this.order = orderFacade.getOrder(id);
			this.orderlinesOrder = this.order.getOrderLines();
			this.orderlinesOrder.add(orderline);
			orderFacade.updateOrder(order);
			return "orderline";
		}
		else {
			return "erroreGenerico";
		}
		
	}

	
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public OrderLine getOrderline() {
		return orderline;
	}

	public void setOrderline(OrderLine orderline) {
		this.orderline = orderline;
	}

	public List<OrderLine> getOrderlines() {
		return orderlines;
	}

	public void setOrderlines(List<OrderLine> orderlines) {
		this.orderlines = orderlines;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public List<OrderLine> getOrderlinesOrder() {
		return orderlinesOrder;
	}

	public void setOrderlinesOrder(List<OrderLine> orderlinesOrder) {
		this.orderlinesOrder = orderlinesOrder;
	}

	public OrderFacade getOrderFacade() {
		return orderFacade;
	}

	public void setOrderFacade(OrderFacade orderFacade) {
		this.orderFacade = orderFacade;
	}

	public OrderLineFacade getOrderlineFacade() {
		return orderlineFacade;
	}

	public void setOrderlineFacade(OrderLineFacade orderlineFacade) {
		this.orderlineFacade = orderlineFacade;
	}


	public ProductFacade getProductFacade() {
		return productFacade;
	}


	public void setProductFacade(ProductFacade productFacade) {
		this.productFacade = productFacade;
	}
	
	
	

}
