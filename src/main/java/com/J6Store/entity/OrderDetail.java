package com.J6Store.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Order_details")
public class OrderDetail implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Double price;
	private Integer quantity;
	
	@ManyToOne
	@JoinColumn(name = "Product_id")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "Order_id")
	private Order order;
	
	@Override
	public String toString() {
		return "OrderDetail [product=" + product.getId() + ", price=" + price + ", quantity=" + quantity + "]";
	}
	
}
