package com.teamsankya.shoppingcart.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**The {@link DetailsId} implements {@link Serializable}. Constructor - created
 * NoArgument Constructor. Used TOStringBuilder. {@link Entity} - Specifies that
 * the class is an entity,this annotation is applied to the entity class.
 * {@link Table} - Specifies the primary table for the annotated entity.
 * {@link Id} - Specifies mapped column of the entity is assumed to be the
 * primary key of the primary table. {@link Column}
 * 
 * 
 */
@Embeddable
public class DetailsId implements Serializable{
	
	@ManyToOne
	@JoinColumn(name = "DetailsId", referencedColumnName="id")
	private Products bean;
	
	@Column
	private String id ;

	public Products getBean() {
		return bean;
	}

	public void setBean(Products bean) {
		this.bean = bean;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	

}

