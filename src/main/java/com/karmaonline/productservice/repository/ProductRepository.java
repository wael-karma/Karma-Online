package com.karmaonline.productservice.repository;

import com.karmaonline.productservice.model.Product;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface ProductRepository extends MongoRepository<Product, String> {
    // Custom queries can be added here if needed
}
