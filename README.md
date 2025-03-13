# Proyecto: Gestión de Productos para Supermercado

## Descripción
Este es un sistema desarrollado con **Spring Boot** que permite la gestión de productos en un supermercado. Ofrece una API REST para CRUD de productos, así como una interfaz para visualizar la información.

## Tecnologías Utilizadas
- **Java 17**
- **Spring Boot**
- **Spring Data JPA**
- **Maven**
- **H2 / MySQL**
- **Thymeleaf** (si aplica para vistas)
- **RESTful API**

## Estructura del Proyecto
```
PSP_H2_2T_Rodrigo_Diaz_Dones/
├── src/
│   ├── main/
│   │   ├── java/com/supermercado/app/
│   │   │   ├── SupermercadoApplication.java  # Clase principal
│   │   │   ├── controller/
│   │   │   │   ├── ProductoController.java  # Controlador REST
│   │   │   │   ├── ProductoViewController.java  # Controlador para vistas (si aplica)
│   │   │   ├── model/
│   │   │   │   ├── Producto.java  # Modelo de producto
│   │   │   ├── repositories/
│   │   │   │   ├── ProductoRepository.java  # Repositorio de productos
│   │   │   ├── service/
│   │   │   │   ├── ProductoService.java  # Lógica de negocio de productos
│   │   ├── resources/
│   │   │   ├── application.properties  # Configuración de la aplicación
│   ├── test/
│   │   ├── java/com/example/demo/DemoApplicationTests.java  # Pruebas unitarias
├── pom.xml  # Configuración de Maven
├── BBDD.sql  # Script SQL para la base de datos
```

## Instalación y Configuración
### 1. Clonar el repositorio
```sh
git clone https://github.com/tu_usuario/PSP_H2_2T_Rodrigo_Diaz_Dones.git
cd PSP_H2_2T_Rodrigo_Diaz_Dones
```

### 2. Configurar la Base de Datos
El archivo `BBDD.sql` contiene la estructura de la base de datos. Puedes importarlo en MySQL o configurar H2 en `application.properties`.

Para MySQL:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/supermercado
spring.datasource.username=root
spring.datasource.password=tu_contraseña
```

Para H2 (base de datos en memoria):
```properties
spring.datasource.url=jdbc:h2:mem:supermercado
spring.h2.console.enabled=true
```

### 3. Ejecutar la Aplicación
Si estás usando **Maven Wrapper**, puedes ejecutar:
```sh
./mvnw spring-boot:run
```
O con Maven instalado:
```sh
mvn spring-boot:run
```

La aplicación estará disponible en: [http://localhost:8080](http://localhost:8080)

## API REST
El controlador `ProductoController.java` expone los siguientes endpoints:
- `GET /productos` → Lista todos los productos.
- `GET /productos/{id}` → Obtiene un producto por ID.
- `POST /productos` → Agrega un nuevo producto.
- `PUT /productos/{id}` → Modifica un producto existente.
- `DELETE /productos/{id}` → Elimina un producto.

## Contribuciones
Si deseas contribuir, puedes hacer un fork del proyecto y enviar un pull request con mejoras.

## Autor
**Rodrigo Díaz Dones** - Desarrollo y Documentación

## Licencia
Este proyecto está bajo la licencia MIT. Puedes ver los detalles en el archivo `LICENSE`.

