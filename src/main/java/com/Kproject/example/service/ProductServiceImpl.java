package com.Kproject.example.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.Kproject.example.domain.Product;
import com.Kproject.example.mapper.ProductMapper;

@Service("ProductServiceImpl")
public class ProductServiceImpl implements ProductService {
	@Autowired ProductMapper productmapper;
	@Override
	public List<Product> selectProductList() {
		// TODO Auto-generated method stub
		return productmapper.selectProductList();
	}
	
	@Override
	public void upload(Product product) {
		// TODO Auto-generated method stub
		productmapper.upload(product);
	}
	
}
