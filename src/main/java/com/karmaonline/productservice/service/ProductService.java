package com.karmaonline.productservice.service;

import com.karmaonline.productservice.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllProducts();
    Product getProductById(String productId);
    Product addProduct(Product product);
    // Other methods as needed
}
