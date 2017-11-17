package net.aish.onlineshoppingbackend.dao;

import java.util.List;

//import java.util.List;

import net.aish.onlineshoppingbackend.dto.Address;
import net.aish.onlineshoppingbackend.dto.Cart;
import net.aish.onlineshoppingbackend.dto.User;

public interface UserDAO {

	// add an user
		boolean addUser(User user);
		User getByEmail(String email);
		
		// add an address
		boolean addAddress(Address address);
		
		// alternative
		 Address getBillingAddress(int userId);
		 List<Address> listShippingAddresses(int userId);
		
		//update a cart
		boolean updateCart(Cart cart);
		
		/*
		Address getBillingAddress(User user);
		List<Address> listShippingAddresses(User user);
	*/
}
