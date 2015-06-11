package it.uniroma3.model;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

@Stateless(name="aFacade")
public class AddressFacade {

	@PersistenceContext(unitName = "progetto-siw-unit")
	private EntityManager em;
	
	public Address createAddress(String street, String city, String province, Long cap, String state) {
		Address address = new Address(street,city,province,cap,state);
		em.persist(address);
		return address;
	}
	
	public Address getAddress(Long id) {					//GET = RETRIEVE
		Address address = em.find(Address.class, id);
		return address;
	}
	
	public void updateAddress(Address address) {
        em.merge(address);
	}
	
    private void deleteAddress(Address address) {
        em.remove(address);
    }

	public void deleteAddress(Long id) {
        Address address = em.find(Address.class, id);
        deleteAddress(address);
	}
	
	public List<Address> getAllAddresses() {
		TypedQuery<Address> query = this.em.createNamedQuery("findAllAddresses", Address.class);
		List<Address> addressList = query.getResultList();
		return addressList;
	}
}

