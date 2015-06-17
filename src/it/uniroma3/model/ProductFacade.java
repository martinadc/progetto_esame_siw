package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import it.uniroma3.model.Provider;

@Stateless(name="pFacade")
public class ProductFacade {

	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;

	/** OPERAZIONI CRUD **/
	public Product createProduct(String name, String code, Float price, String description, Integer quantity) {
		Product product = new Product(name, code, price, description, quantity);
		em.persist(product);
		return product;
	}

	public Product getProduct(Long id) {					//GET = RETRIEVE
		Product product = em.find(Product.class, id);
		return product;
	}
	
	public void updateProduct(Product product) {
        em.merge(product);
	}
	
    private void deleteProduct(Product product) {
        em.remove(product);
    }

	public void deleteProduct(Long id) {
        Product product = em.find(Product.class, id);
        deleteProduct(product);
	}

	//return the provider's list of a product given by id
	public List<Provider> retrieveProviders(Long idProduct){
		TypedQuery<Provider> query = this.em.createNamedQuery("findAllProviders", Provider.class);
		query.setParameter("id", idProduct);
		List<Provider> providerList = query.getResultList();
		return providerList;
	}
	
	public List<Product> getAllProducts() {
		TypedQuery<Product> query = this.em.createNamedQuery("findAllProducts", Product.class);
		List<Product> productList = query.getResultList();
		return productList;
	}
	
	public Product findProductByCode(String code){
		try {
			Query query = this.em.createNamedQuery("findProductByCode", Product.class);
			query.setParameter("code", code);
			Product product = (Product) query.getSingleResult();
			return product;
		}
		catch(Exception ex){
			return null;
		}
	}
	
	
}
