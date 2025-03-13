package com.supermercado.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.supermercado.app.model.Producto;
import com.supermercado.app.service.ProductoService;

@Controller
public class ProductoViewController {
	
	@GetMapping("/")
	public String mostrarPaginaPrincipal(Model model) {
	    model.addAttribute("productos", productoService.listarTodos());
	    return "productos/index";
	}

    @Autowired
    private ProductoService productoService;

    @GetMapping("/crear")
    public String mostrarFormularioCrear() {
        return "productos/crear";
    }

    @GetMapping("/leer")
    public String mostrarListadoProductos(Model model) {
        model.addAttribute("productos", productoService.listarTodos());
        return "productos/leer";
    }

    @GetMapping("/actualizar")
    public String mostrarFormularioActualizar(Model model) {
        model.addAttribute("productos", productoService.listarTodos());
        return "productos/actualizar";
    }

    @GetMapping("/borrar")
    public String mostrarFormularioBorrar(Model model) {
        model.addAttribute("productos", productoService.listarTodos());
        return "productos/borrar";
    }
}
