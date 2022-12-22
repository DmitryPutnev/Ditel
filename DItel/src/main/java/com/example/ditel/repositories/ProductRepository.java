package com.example.ditel.repositories;

import com.example.ditel.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
    List<Product> findByStars(String stars);
    List<Product> findByOrderByPriceAsc();
    List<Product> findByOrderByPriceDesc();
}
