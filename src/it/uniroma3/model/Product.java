package it.uniroma3.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import it.uniroma3.model.Product;
import it.uniroma3.model.Provider;

@Entity
@NamedQueries({@NamedQuery(name = "findAllProducts", query = "SELECT p FROM Product p"),
	@NamedQuery(name = "findAllProviders", query= "SELECT p.providers FROM Product p WHERE p.id= :id")})
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;

	@Column(unique = true, nullable = false)
	private String code;
	
	private Float price;					//current price
	
	@Column(length = 2000)
	private String description;

	@Column(nullable = false)
	private Integer quantity;
	
	@ManyToMany(mappedBy= "products")
	private List<Provider> providers;

	public Product() {
	}

	//id not present! It's managed by ORM
	public Product(String name,  String code, Float price, String description, Integer quantity) {
		this.name = name;
		this.price = price;
		this.description = description;
		this.code = code;
		this.quantity = quantity;
		this.providers = new ArrayList<Provider>();
	}

	//Getters & Setters        

	public Long getId() {
		return id;
	}

	public void setId(Long id){
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public List<Provider> getProviders() {
		return providers;
	}

	public void setProviders(List<Provider> providers) {
		this.providers = providers;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Override
	public boolean equals(Object obj) {
		Product product = (Product)obj;
		return this.getCode().equals(product.getCode());
	}

	@Override
	public int hashCode() {
		return this.code.hashCode();
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder();
		sb.append("Product"); 
		sb.append("{id=").append(id); 
		sb.append(", name='").append(name); 
		sb.append(", price=").append(price); 
		sb.append(", description='").append(description); 
		sb.append(", code='").append(code);
		sb.append(", quantity='").append(quantity);
		sb.append("}\n");
		return sb.toString();
	}
}

