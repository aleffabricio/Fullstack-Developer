package br.com.maximatech.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.maximatech.entity.ProductCategory;

import java.util.List;

public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Integer> {
   
    List<ProductCategory> findByCategoryTypeInOrderByCategoryTypeAsc(List<Integer> categoryTypes);
   
    List<ProductCategory> findAllByOrderByCategoryType();
  
    ProductCategory findByCategoryType(Integer categoryType);
}
