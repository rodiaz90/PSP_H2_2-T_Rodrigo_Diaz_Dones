CREATE DATABASE EcoMerchDB;

-- Usar la base de datos
USE EcoMerchDB;

-- Tabla Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    direccion TEXT,
    pais VARCHAR(50)
);

-- Tabla Producto
CREATE TABLE Productos (
    idproducto INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100),
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INT
);

-- Tabla Pedido
CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha DATETIME NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);
USE EcoMerchDB;

-- Insertar registros en la tabla Cliente
INSERT INTO Cliente (id_cliente, nombre, correo, telefono, direccion, pais)
VALUES
    (1, 'Juan Pérez', 'juan.perez@example.com', '123456789', 'Calle Falsa 123', 'España'),
    (2, 'María López', 'maria.lopez@example.com', '987654321', 'Avenida Siempre Viva 456', 'México'),
    (3, 'Carlos Gómez', 'carlos.gomez@example.com', '555123456', 'Boulevard Sol 789', 'Argentina'),
    (4, 'Ana Sánchez', 'ana.sanchez@example.com', '444987654', 'Plaza Luna 321', 'Colombia'),
    (5, 'Luis Martínez', 'luis.martinez@example.com', '666111222', 'Calle Estrella 654', 'Chile');

-- Insertar registros en la tabla Producto
INSERT INTO Productos (idproducto, nombre, descripcion, precio, stock)
VALUES
    (1, 'Camiseta hecha con materiales reciclados', 'Camiseta Ecológica', 19.99, 4),
    (2, 'Botella de acero inoxidable', 'Botella Reutilizable', 14.50, 5),
    (3, 'Bolsa reutilizable para compras', 'Bolsa de Tela', 7.99, 15),
    (4, 'Cuaderno fabricado con papel reciclado', 'Cuaderno Reciclado', 5.49, 30),
    (5, 'Taza con diseño ecológico', 'Taza de Cerámica', 12.99, 12),
    (6, 'Zapatos de bambú', 'Zapatos fabricados con bambú sostenible', 49.99, 8),
    (7, 'Jabón natural', 'Jabón hecho a mano con ingredientes orgánicos', 3.99, 50),
    (8, 'Cepillo de dientes de bambú', 'Cepillo de dientes ecológico', 2.50, 30),
    (9, 'Vaso biodegradable', 'Vaso fabricado con materiales compostables', 1.99, 100),
    (10, 'Bolígrafo reciclado', 'Bolígrafo fabricado con plástico reciclado', 1.49, 40),
    (11, 'Cartera de corcho', 'Cartera fabricada con corcho ecológico', 29.99, 5),
    (12, 'Sombrero de paja natural', 'Sombrero hecho a mano con paja natural', 19.99, 7),
    (13, 'Estuche de tela reciclada', 'Estuche para lápices hecho con tela reciclada', 9.99, 15),
    (14, 'Botella de vidrio', 'Botella reutilizable fabricada en vidrio', 15.49, 25),
    (15, 'Mochila reciclada', 'Mochila hecha con materiales reciclados', 39.99, 10),
    (16, 'Plato de bambú', 'Plato fabricado con bambú sostenible', 12.99, 20),
    (17, 'Cucharas de madera', 'Juego de cucharas hechas de madera natural', 9.49, 15),
    (18, 'Toalla de algodón orgánico', 'Toalla fabricada con algodón ecológico', 25.99, 10),
    (19, 'Bolso de yute', 'Bolso reutilizable fabricado con yute', 19.49, 8),
    (20, 'Caja organizadora de cartón reciclado', 'Caja hecha con cartón reciclado', 7.99, 30),
    (21, 'Papel de regalo reciclado', 'Rollo de papel de regalo ecológico', 4.99, 40),
    (22, 'Bandeja de fibra de coco', 'Bandeja decorativa hecha de coco', 14.99, 15),
    (23, 'Lámpara de madera reciclada', 'Lámpara de diseño ecológico', 59.99, 4),
    (24, 'Camiseta de algodón orgánico', 'Camiseta fabricada con algodón sostenible', 24.99, 12),
    (25, 'Lápiz biodegradable', 'Lápiz fabricado con materiales compostables', 0.99, 100),
	(26, 'Cojín de lana ecológica', 'Cojín fabricado con lana orgánica', 29.99, 5),
    (27, 'Mesa de madera reciclada', 'Mesa de diseño rústico hecha con madera reciclada', 199.99, 2),
    (28, 'Reloj de bambú', 'Reloj de pulsera con correa de bambú', 49.99, 6),
    (29, 'Cesta de yute natural', 'Cesta decorativa fabricada con yute', 14.99, 10),
    (30, 'Alfombra de fibras naturales', 'Alfombra hecha con fibras ecológicas', 79.99, 3),
    (31, 'Portavasos de corcho', 'Set de portavasos fabricados con corcho', 9.99, 15),
    (32, 'Camiseta con tinta biodegradable', 'Camiseta estampada con tintas ecológicas', 22.99, 12),
    (33, 'Llavero de madera reciclada', 'Llavero artesanal hecho con madera reciclada', 5.99, 20),
    (34, 'Espejo con marco de bambú', 'Espejo decorativo con marco sostenible', 89.99, 25),
    (35, 'Papel higiénico reciclado', 'Paquete de papel higiénico ecológico', 6.49, 50),
    (36, 'Juguete de madera natural', 'Juguete para niños hecho con madera ecológica', 15.99, 10),
    (37, 'Cepillo facial de bambú', 'Cepillo para limpieza facial hecho de bambú', 8.49, 30),
    (38, 'Maceta de arcilla reciclada', 'Maceta para plantas hecha con arcilla ecológica', 12.99, 10),
    (39, 'Taza térmica reutilizable', 'Taza térmica fabricada con materiales reciclados', 19.99, 8),
    (40, 'Velas de cera de soja', 'Set de velas ecológicas hechas con cera de soja', 14.99, 15),
    (41, 'Jarra de vidrio reciclado', 'Jarra fabricada con vidrio reutilizado', 24.99, 6),
    (42, 'Cubo de basura compostable', 'Cubo para compostaje doméstico', 49.99, 3),
    (43, 'Kit de cubiertos de bambú', 'Set de cubiertos portátiles fabricados con bambú', 19.99, 10),
    (44, 'Bloc de notas reciclado', 'Bloc de notas fabricado con papel reciclado', 3.99, 40),
    (45, 'Zapatillas de algodón orgánico', 'Zapatillas cómodas hechas con algodón sostenible', 34.99, 7),
    (46, 'Pajitas de acero inoxidable', 'Set de pajitas reutilizables', 9.99, 30),
    (47, 'Carpeta de cartón reciclado', 'Carpeta de archivo hecha con materiales ecológicos', 4.49, 50),
    (48, 'Cinta adhesiva biodegradable', 'Rollo de cinta adhesiva ecológica', 3.99, 40),
    (49, 'Bolso de corcho natural', 'Bolso elegante fabricado con corcho ecológico', 39.99, 5),
    (50, 'Cubo de reciclaje', 'Cubo para clasificar residuos reciclables', 29.99, 10);

-- Insertar registros en la tabla Pedido
INSERT INTO Pedido (id_pedido, id_cliente, fecha, total)
VALUES
    (1, 1, '2025-01-20 10:00:00', 49.97),
    (2, 2, '2025-01-20 12:30:00', 29.99),
    (3, 3, '2025-01-21 14:00:00', 34.98),
    (4, 4, '2025-01-21 16:00:00', 19.99),
    (5, 5, '2025-01-22 18:30:00', 44.97);