package com.supermercado.app.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.supermercado.app.model.Producto;

@Repository
public interface ProductoRepository extends JpaRepository<Producto, Integer> {
	
    List<Producto> findByNombreContainingIgnoreCase(String nombre);
}
