package com.teamsankya.shoppingcart.dto;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.log4j.Logger;
/**
 * The {@link Products} implements {@link Serializable}. Constructor - created
 * NoArgument Constructor. Used TOStringBuilder. {@link Entity} - Specifies that
 * the class is an entity,this annotation is applied to the entity class.
 * {@link Table} - Specifies the primary table for the annotated entity.
 * {@link Id} - Specifies mapped column of the entity is assumed to be the
 * primary key of the primary table. {@link Column}
 * 
 * 
 * 
 *
 */
@Entity
@Table(name="PoductsBean")
public class Products implements Serializable {
	final static Logger LOGGER = Logger.getLogger(Products.class);

	@Id
	@Column
	private String id;

	@Column
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "catId", referencedColumnName ="catId")
	private Category catId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Category getCatId() {
		return catId;
	}

	public void setCatId(Category catId) {
		this.catId = catId;
	}

	
	
	



}
