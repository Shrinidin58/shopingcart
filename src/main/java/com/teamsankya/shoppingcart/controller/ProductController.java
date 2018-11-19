package com.teamsankya.shoppingcart.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamsankya.shoppingcart.dao.ShoppingDao;
import com.teamsankya.shoppingcart.dao.ShoppingDaoImpl;
import com.teamsankya.shoppingcart.dto.Details;

/**
 * {@link ProductController} Indicates that a particular class serves the role of a
 * controller. {@link RequestMapping} This specify what HTTP Request is handled
 * by the controller and by its method. {@link Autowired} This is used for
 * automatic dependency injection.
 * 
 * 
 *
 */

@Controller
public class ProductController {
	
	/*@Autowired
	@Qualifier("dao")
	private ShoppingDao shoppingDao;*/
	
	final static Logger LOGGER = Logger.getLogger(ProductController.class);
	
/*	@RequestMapping(path = "/searchproduct", method = RequestMethod.GET)
	public String searchProduct(ModelMap map, String search) {
		System.out.println("inside controller");
		LOGGER.info("inside lot controller");
		LOGGER.info(search);
		System.out.println("before calling dao method");
		List<Details> detaisl = shoppingDao.search(search);
		map.addAttribute("detailsBean", detaisl);
		
		return "SearchResult";
	}*/
	
	ShoppingDao shoppingDao= new ShoppingDaoImpl();
	/**
	 * This method gives the response in the form of string to
	 * view
	 * 
	 * @param map
	 * @param name
	 * @return
	 */
	
	@RequestMapping(path = "/searchproduct", method = RequestMethod.GET)
	public String searchProduct(ModelMap map, String name) {
		System.out.println("inside controller");
		LOGGER.info("inside lot controller");
		LOGGER.info(name);
		System.out.println("before calling dao method");
		List<Details> details = shoppingDao.findProduct(name);
		map.addAttribute("detailsBean", details);
		System.out.println("after controller");
		System.out.println(details);
		
		return "SearchResult";
		//return "resultset";
	}
	
	
}
