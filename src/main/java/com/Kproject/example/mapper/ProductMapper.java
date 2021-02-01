package com.Kproject.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.Kproject.example.domain.Product;

@Mapper
public interface ProductMapper {
	public List<Product> selectProductList();
	
	public void upload(Product product);


}
