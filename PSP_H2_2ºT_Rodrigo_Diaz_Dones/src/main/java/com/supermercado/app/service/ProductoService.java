package com.supermercado.app.service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.supermercado.app.model.Producto;
import com.supermercado.app.repositories.ProductoRepository;

@Service
public class ProductoService {

    @Autowired
    private ProductoRepository productoRepository;

    public List<Producto> listarTodos() {
        return productoRepository.findAll();
    }

    public Producto guardar(Producto producto) {
        return productoRepository.save(producto);
    }

    public Producto buscarPorId(int id) {
        return productoRepository.findById(id).orElse(null);
    }
    
    public List<Producto> buscarPorNombre(String nombre) {
        return productoRepository.findByNombreContainingIgnoreCase(nombre);
    }

    public void eliminar(int id) {
        productoRepository.deleteById(id);
    }

    public List<Producto> obtenerProductosConPocoStock() {
        return productoRepository.findAll()
                .stream()
                .filter(producto -> producto.getStock() < 5)
                .collect(Collectors.toList());
    }

    public List<Producto> obtenerProductosOrdenadosPorPrecio() {
        return productoRepository.findAll()
                .stream()
                .sorted(Comparator.comparing(Producto::getPrecio).reversed())
                .collect(Collectors.toList());
    }

    public List<Producto> obtenerProductosOrdenadosPorStock() {
        return productoRepository.findAll()
                .stream()
                .sorted(Comparator.comparing(Producto::getStock).reversed())
                .collect(Collectors.toList());
    }
    
    public List<Producto> buscarProductosGeneral(String query) {
        return productoRepository.findAll()
                .stream()
                .filter(producto -> producto.getNombre().toLowerCase().contains(query.toLowerCase())
                        || producto.getDescripcion().toLowerCase().contains(query.toLowerCase())
                        || String.valueOf(producto.getPrecio()).contains(query)
                        || String.valueOf(producto.getStock()).contains(query))
                .collect(Collectors.toList());
    }
}
