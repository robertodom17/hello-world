CREATE DATABASE IF NOT EXISTS usuarios_coches;
USE usuarios_coches;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS coches (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  año INT,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

INSERT INTO usuarios (nombre, email) VALUES
('Juan Pérez', 'juan@example.com'),
('Ana Gómez', 'ana@example.com');

INSERT INTO coches (usuario_id, marca, modelo, año) VALUES
(1, 'Toyota', 'Corolla', 2018),
(1, 'Honda', 'Civic', 2019),
(2, 'Ford', 'Focus', 2020);

-- Consulta para mostrar usuarios con sus coches
SELECT u.nombre, u.email, c.marca, c.modelo, c.año
FROM usuarios u
LEFT JOIN coches c ON u.id = c.usuario_id;