package it.uniroma3.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "orders")
@NamedQueries({@NamedQuery(name = "findAllOrders", query = "SELECT o FROM Order o"), 
	@NamedQuery(name = "findAllCustomerOrders", query = "SELECT o FROM Order o WHERE o.customer.id = :id")})
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date openTime;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date closeTime;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date evasionTime;
	
	@ManyToOne
	private Customer customer;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
	@JoinColumn(name = "orders_id")
	private List<OrderLine> orderLines;
	
	public Order(){
		this.openTime = new Date();
		this.closeTime = null;
		this.evasionTime = null;
		this.orderLines = new ArrayList<OrderLine>();
	}

	public Order(Customer customer) {
		this.openTime = new Date();
		this.closeTime = null;
		this.evasionTime = null;
		this.customer = customer;
		this.orderLines = new ArrayList<OrderLine>();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	
	public Date getOpenTime() {
		return openTime;
	}

	public void setOpenTime(Date openTime) {
		this.openTime = openTime;
	}

	public Date getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}

	public Date getEvasionTime() {
		return evasionTime;
	}

	public void setEvasionTime(Date evasionTime) {
		this.evasionTime = evasionTime;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<OrderLine> getOrderLines() {
		return orderLines;
	}

	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}
 
}
