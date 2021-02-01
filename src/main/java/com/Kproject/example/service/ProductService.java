package com.Kproject.example.service;

import java.util.List;
import com.Kproject.example.domain.Product;

public interface ProductService {
	public List<Product> selectProductList();
	
	public void upload(Product product);

}
