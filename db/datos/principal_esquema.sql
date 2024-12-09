CREATE DATABASE IF NOT EXISTS principal;

USE principal;

CREATE TABLE publicaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    duenio_id INT,
    titulo VARCHAR(255) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (duenio_id) REFERENCES permisos.usuarios(id)
);

CREATE TABLE perfiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    raza VARCHAR(100),
    caracteristicas TEXT,
    alergias TEXT,
    edad INT,
    FOREIGN KEY (mascota_id) REFERENCES permisos.mascotas(usuario_id)
);

CREATE TABLE fotos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    ruta_foto VARCHAR(255),
    descripcion TEXT,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (mascota_id) REFERENCES permisos.mascotas(usuario_id)
);

CREATE TABLE likes_foros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    publicacion_id INT,
    duenio_id INT,
    FOREIGN KEY (publicacion_id) REFERENCES publicaciones(id),
    FOREIGN KEY (duenio_id) REFERENCES permisos.usuarios(id)
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    tipo VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tipos_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE productos_tipos_cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT,
    tipo_cliente_id INT,
    FOREIGN KEY (producto_id) REFERENCES productos(id),
    FOREIGN KEY (tipo_cliente_id) REFERENCES tipos_cliente(id)
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    producto_id INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (mascota_id) REFERENCES permisos.mascotas(usuario_id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

