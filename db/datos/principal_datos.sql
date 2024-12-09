USE principal;

-- Datos de ejemplo para la tabla `publicaciones`
INSERT INTO publicaciones (duenio_id, titulo, contenido) VALUES
(4, 'Primera Publicación de John', 'Este es el contenido de la primera publicación de John.'),
(5, 'Primera Publicación de Jane', 'Este es el contenido de la primera publicación de Jane.');

-- Datos de ejemplo para la tabla `perfiles`
INSERT INTO perfiles (mascota_id, raza, caracteristicas, alergias, edad) VALUES
(1, 'Labrador', 'Amigable y enérgico', 'Polen', 3),
(2, 'Siames', 'Juguetón y vocal', 'Polvo', 2);

-- Datos de ejemplo para la tabla `fotos`
INSERT INTO fotos (mascota_id, ruta_foto, descripcion) VALUES
(1, '/fotos/fido/foto1.jpg', 'Foto de Fido'),
(2, '/fotos/cat/foto1.jpg', 'Foto de Cat');

-- Datos de ejemplo para la tabla `likes_foros`
INSERT INTO likes_foros (publicacion_id, duenio_id) VALUES
(1, 4), -- John recibe like por su publicación
(2, 5); -- Jane recibe like por su publicación

-- Datos de ejemplo para la tabla `productos`
INSERT INTO productos (nombre, descripcion, tipo, precio, stock) VALUES
('Collar para Perros', 'Collar ajustable para perros de tamaño mediano', 'Perro', 19.99, 50),
('Rascador para Gatos', 'Rascador de sisal para gatos', 'Gato', 29.99, 30),
('Comedero de Plástico', 'Comedero resistente y duradero', 'General', 9.99, 100);

-- Datos de ejemplo para la tabla `tipos_cliente`
INSERT INTO tipos_cliente (tipo) VALUES
('Perro'),
('Gato'),
('Conejo');

-- Datos de ejemplo para la tabla `productos_tipos_cliente`
INSERT INTO productos_tipos_cliente (producto_id, tipo_cliente_id) VALUES
(1, 1), -- Collar para Perros asociado a tipo cliente Perro
(2, 2), -- Rascador para Gatos asociado a tipo cliente Gato
(3, 1), -- Comedero de Plástico asociado a tipo cliente Perro
(3, 2), -- Comedero de Plástico asociado a tipo cliente Gato
(3, 3); -- Comedero de Plástico asociado a tipo cliente Conejo

-- Datos de ejemplo para la tabla `pedidos`
INSERT INTO pedidos (mascota_id, producto_id, cantidad, fecha) VALUES
(1, 1, 2, '2023-01-15'), -- Fido compró 2 collares para perros
(2, 2, 1, '2023-01-20'), -- Cat compró 1 rascador para gatos
(1, 3, 1, '2023-01-25'); -- Fido compró 1 comedero de plástico

