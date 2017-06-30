package com.niit.sback.model;


import java.util.List;
import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Category")


public class CategoryModel implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;
	private String name;
	 
	private Set<ShoeModel> set_of_shoe;
	

	@Id
@GeneratedValue
	@Column(name="category_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="category_name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public CategoryModel(int id, String name) {
		
		this.id = id;
		this.name = name;
	}
	@OneToMany(targetEntity=ShoeModel.class, mappedBy="category", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@Column(name="category_set_of_shoe")
	 
	public Set<ShoeModel> getSet_of_shoe() {
		return set_of_shoe;
	}
	public void setSet_of_shoe(Set<ShoeModel> set_of_shoe) {
		this.set_of_shoe = set_of_shoe;
	}
	
	
	public CategoryModel() {
		super();
	}
	

          
	
}
