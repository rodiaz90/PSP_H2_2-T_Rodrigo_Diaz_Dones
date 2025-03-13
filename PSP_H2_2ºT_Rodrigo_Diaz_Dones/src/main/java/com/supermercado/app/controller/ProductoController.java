package com.supermercado.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.supermercado.app.model.Producto;
import com.supermercado.app.service.ProductoService;

@RestController
@RequestMapping("/api/productos")
public class ProductoController {

    @Autowired
    private ProductoService productoService;
    
    @GetMapping("/buscar")
    public ResponseEntity<List<Producto>> buscarProductosPorNombre(@RequestParam String nombre) {
        List<Producto> productos = productoService.buscarPorNombre(nombre);
        return ResponseEntity.ok(productos);
    }

    @GetMapping("/buscar-general")
    public List<Producto> buscarProductosGeneral(@RequestParam String query) {
        return productoService.buscarProductosGeneral(query);
    }

    // Operación READ: Obtener todos los productos
    @GetMapping
    public List<Producto> listar() {
        return productoService.listarTodos();
    }

    // Operación READ: Obtener un producto por ID
    @GetMapping("/{id}")
    public ResponseEntity<Producto> obtenerPorId(@PathVariable int id) {
        Producto producto = productoService.buscarPorId(id);
        if (producto == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(producto);
    }

    // Operación CREATE: Crear un nuevo producto
    @PostMapping
    public ResponseEntity<Producto> crear(@RequestBody Producto producto) {
        Producto nuevoProducto = productoService.guardar(producto);
        return ResponseEntity.status(HttpStatus.CREATED).body(nuevoProducto);
    }

    // Operación UPDATE: Actualizar un producto existente
    @PutMapping("/{id}")
    public ResponseEntity<Producto> actualizar(@PathVariable int id, @RequestBody Producto productoActualizado) {
        Producto productoExistente = productoService.buscarPorId(id);
        if (productoExistente == null) {
            return ResponseEntity.notFound().build();
        }
        productoActualizado.setIdproducto(id);
        productoService.guardar(productoActualizado);
        return ResponseEntity.ok(productoActualizado);
    }

    // Operación DELETE: Eliminar un producto
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable int id) {
        Producto producto = productoService.buscarPorId(id);
        if (producto == null) {
            return ResponseEntity.notFound().build();
        }
        productoService.eliminar(id);
        return ResponseEntity.noContent().build();
    }

    // Obtener productos con stock menor a 5
    @GetMapping("/filtro/poco-stock")
    public List<Producto> obtenerProductosPocoStock() {
        return productoService.obtenerProductosConPocoStock();
    }

    // Obtener productos ordenados de más caro a más barato
    @GetMapping("/filtro/orden-precio")
    public List<Producto> obtenerProductosOrdenadosPorPrecio() {
        return productoService.obtenerProductosOrdenadosPorPrecio();
    }

    // Obtener productos ordenados de mayor a menor stock
    @GetMapping("/filtro/orden-stock")
    public List<Producto> obtenerProductosOrdenadosPorStock() {
        return productoService.obtenerProductosOrdenadosPorStock();
    }
}

