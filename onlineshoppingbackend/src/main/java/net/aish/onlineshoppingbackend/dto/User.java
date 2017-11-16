package net.aish.onlineshoppingbackend.dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_detail")
public class User {

	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	/*
	 * private fields for user
	 * */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "first_name")
	//@NotBlank(message = "Please enter first name!")
	private String firstName;
	
	@OneToOne(mappedBy = "user" , cascade = CascadeType.ALL)
	private Cart cart;
	
	
	
	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	//getters & setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Column(name = "last_name")
	//@NotBlank(message = "Please enter last name!")
	private String lastName;
	
	//@NotBlank(message = "Please enter email address!")
	private String email;
	
	@Column(name = "contact_number")
	//@NotBlank(message = "Please enter contact number!")
	private String contactNumber;
	
	private String role;
	
	//@NotBlank(message = "Please enter password!")
	private String password;
	
	private boolean enabled = true;
	
	
	// confirm password transient field
	//@Transient
	//private String confirmPassword;

	
}
