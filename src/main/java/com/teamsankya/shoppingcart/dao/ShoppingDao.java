package com.teamsankya.shoppingcart.dao;
/**
 *  Database connectivity, configuration and interaction 
 * and giving response performed here
 * @author prathibha
 */
import java.util.List;

import com.teamsankya.shoppingcart.dto.Details;


public interface ShoppingDao {
	
	 
	public List<Details> findProduct(String name); 
	

}
