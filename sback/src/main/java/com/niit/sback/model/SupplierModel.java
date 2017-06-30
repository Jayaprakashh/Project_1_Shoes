package com.niit.sback.model;
import java.io.Serializable;
import java.util.List;
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
@Table(name="Supplier")

public class SupplierModel implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;
	private String name;
	private Set<ShoeModel> set_of_shoe;
	
	public SupplierModel()
	{
		super();
	}
	
	public SupplierModel(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	@Id
	@GeneratedValue
	@Column(name="supplier_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="supplier_name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@OneToMany(targetEntity=ShoeModel.class, mappedBy="supplier", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@Column(name="supplier_set_of_products")
	public Set<ShoeModel> getSet_of_shoe() {
		return set_of_shoe;
	}
	public void setSet_of_shoe(Set<ShoeModel> set_of_shoe) {
		this.set_of_shoe = set_of_shoe;
	}
	
 

}
