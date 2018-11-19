package com.teamsankya.shoppingcart.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.apache.log4j.Logger;
/**
 * The {@link Details} implements {@link Serializable}. Constructor - created
 * NoArgument Constructor. Used TOStringBuilder. {@link Entity} - Specifies that
 * the class is an entity,this annotation is applied to the entity class.
 * {@link Table} - Specifies the primary table for the annotated entity.
 * {@link Id} - Specifies mapped column of the entity is assumed to be the
 * primary key of the primary table. {@link Column}
 * 
 * 
 *
 */
@Entity
@Table(name = "DetailsBean")
public class Details implements Serializable {
final static Logger LOGGER = Logger.getLogger(Details.class);
	
	
	@EmbeddedId
	private DetailsId id;
	
	@Column
	private String fullName;
	
	@Column
	private String specification;
	
	@Column
	private int price;
	
	@ManyToOne
	@JoinColumn(name = "pid", referencedColumnName="id")
	private Products bean;
	
	@ManyToOne
	@JoinColumn(name= "catId", referencedColumnName="catId")
	private Category catBean;
	

	
	
	public Category getCatBean() {
		return catBean;
	}

	public void setCatBean(Category catBean) {
		this.catBean = catBean;
	}

	public Products getBean() {
		return bean;
	}

	public void setBean(Products bean) {
		this.bean = bean;
	}

	public DetailsId getId() {
		return id;
	}

	public void setId(DetailsId id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getSpecification() {
		return specification;
	}

	public void setSpecification(String specification) {
		this.specification = specification;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "DetailsBean [id=" + id + ", fullName=" + fullName + ", specification=" + specification + ", price="
				+ price + ", bean=" + bean.getName()+ ", catBean=" + catBean.getCatName() + "]";
	}
	
	
	

}
