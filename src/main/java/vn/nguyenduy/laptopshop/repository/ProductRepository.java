package vn.nguyenduy.laptopshop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.nguyenduy.laptopshop.domain.Product;
import java.util.List;
import java.util.Optional;

//crud: create, read, update, delete
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product eric);

    void deleteById(long id);

    List<Product> findByName(String name);

    // List<Product> findAll();

    Optional<Product> findById(long id);

    Page<Product> findAll(Pageable page);
}
