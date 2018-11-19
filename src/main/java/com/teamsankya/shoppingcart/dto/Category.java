package com.teamsankya.shoppingcart.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.log4j.Logger;

/**
 * The {@link Category} implements {@link Serializable}. Constructor - created
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
	@Table(name="CategoryBean")
	public class Category implements Serializable{
	
			final static Logger LOGGER = Logger.getLogger(Category.class);
		@Id
		@Column(name="catId")
		private String catId;
		
		@Column(name="catName")
		private String catName;
		
		
		public String getCatId() {
			LOGGER.info("getter method of catid");
			return catId;
		}

		public void setCatId(String catId) {
			
			LOGGER.info("setter method of catid");
			this.catId = catId;
		}

		public String getCatName() {
			LOGGER.info("getter method of catname");
			return catName;
		}

		public void setCatName(String catName) {
			LOGGER.info("setter method of cat");
			this.catName = catName;
		}

		@Override
		public String toString() {
			LOGGER.info("inside tostring method of categorybean class");
			return "CategoryBean [catId=" + catId + ", catName=" + catName + "]";
		}
		
		
		
		


}
