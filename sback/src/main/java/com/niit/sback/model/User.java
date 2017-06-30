package com.niit.sback.model;
/*
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="UserDetails",uniqueConstraints = {
		@UniqueConstraint(columnNames = "user_Id"),
		@UniqueConstraint(columnNames = "user_MailId") })
public class User implements Serializable { 

	private static final long serialVersionUID = 1L;
	@Id
	//@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="user_Id")
	private int user_Id;
	@Column(name="user_Name")
	private String userName;
	@Column(name="user_Password")
	private String userPassword;
	@Column(name="user_Address")
	private String user_Address;
	@Column(name="user_MailId")
	private String userMailId;
	@Column(name="user_Age")
	private String userAge;
	@Column(name="user_Phone")
	private String user_Phone;
	@Column(name="user_Gender")
	private String user_Gender;
	@Column(name="user_Cart_Id")
	private Integer userCartId;
	@Column(name="user_Orders")
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orderUserDetails")
	private Set<Order> userOrders = new HashSet<Order>(0);
	@Column(name="user_Role")
	private String userRole;
	public int getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUser_Address() {
		return user_Address;
	}
	public void setUser_Address(String user_Address) {
		this.user_Address = user_Address;
	}
	public String getUserMailId() {
		return userMailId;
	}
	public void setUserMailId(String userMailId) {
		this.userMailId = userMailId;
	}
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	public String getUser_Phone() {
		return user_Phone;
	}
	public void setUser_Phone(String user_Phone) {
		this.user_Phone = user_Phone;
	}
	public String getUser_Gender() {
		return user_Gender;
	}
	public void setUser_Gender(String user_Gender) {
		this.user_Gender = user_Gender;
	}
	public Integer getUserCartId() {
		return userCartId;
	}
	public void setUserCartId(Integer userCartId) {
		this.userCartId = userCartId;
	}
	public Set<Order> getUserOrders() {
		return userOrders;
	}
	public void setUserOrders(Set<Order> userOrders) {
		this.userOrders = userOrders;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	@Override
	public String toString() {
		return "UserModel [user_Id=" + user_Id + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", user_Address=" + user_Address + ", userMailId=" + userMailId + ", userAge=" + userAge
				+ ", user_Phone=" + user_Phone + ", user_Gender=" + user_Gender + ", userCartId=" + userCartId
				+ ", userOrders=" + userOrders + ", userRole=" + userRole + "]";
	}
	public User(int user_Id, String userName, String userPassword, String user_Address, String userMailId,
			String userAge, String user_Phone, String user_Gender, Integer userCartId, Set<Order> userOrders,
			String userRole) {
		super();
		this.user_Id = user_Id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.user_Address = user_Address;
		this.userMailId = userMailId;
		this.userAge = userAge;
		this.user_Phone = user_Phone;
		this.user_Gender = user_Gender;
		this.userCartId = userCartId;
		this.userOrders = userOrders;
		this.userRole = userRole;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}*/

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


//Entity Mapped to the table

@Entity
@Table(name="User")
public class User implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
private int userId;
private String name;
private String email;
private String password;
private int age;
private String gender;
private String role;
private boolean enabled;
private int phone;
private String address;
private Cart cartId;	
private Set<Order> orders;



@Id
@GeneratedValue
@Column(name="userId")
public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="email")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name="role")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	 
	
	/*@OneToOne
	@JoinColumn(name="cartId")
	public Cart getCartId() {
		return cartId;
	}
	public void setCartId(Cart cartId) {
		this.cartId = cartId;
	}*/
	
	//@Column(name="user_orders")
		@OneToMany(targetEntity=Order.class,mappedBy="userId", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
		//@JoinColumn(name="user_id")
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
 
	@Column(name="age")
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	@Column(name="gender")
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name="phone")
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	@Column(name="address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name="enabled")
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
}
