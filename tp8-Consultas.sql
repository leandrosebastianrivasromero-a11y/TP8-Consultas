SELECT id_producto, nombre, precio, stock
FROM productos
WHERE stock > 0 AND precio < 15000
ORDER BY precio ASC;


SELECT id_cliente, apellido, nombre, email
FROM clientes
ORDER BY apellido ASC;

SELECT id_producto, nombre, stock, precio
FROM productos
WHERE stock < 5
ORDER BY stock ASC;

SELECT id_pedido, id_cliente, fecha_pedido, estado, total
FROM pedidos
WHERE estado = 'Pendiente'
ORDER BY fecha_pedido DESC;

SELECT 
    productos.nombre AS producto,
    productos.precio,
    categorias.nombre AS categoria,
    proveedores.nombre_empresa AS proveedor
FROM productos
INNER JOIN categorias ON productos.id_categoria = categorias.id_categoria
INNER JOIN proveedores ON productos.id_proveedor = proveedores.id_proveedor
ORDER BY productos.nombre ASC;

SELECT 
    pedidos.id_pedido,
    clientes.nombre,
    clientes.apellido,
    pedidos.fecha_pedido,
    metodos_pago.nombre AS metodo_pago,
    pedidos.total
FROM pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
INNER JOIN metodos_pago ON pedidos.id_metodo = metodos_pago.id_metodo
ORDER BY pedidos.fecha_pedido DESC;

SELECT 
    pedidos.id_pedido,
    clientes.nombre,
    clientes.apellido,
    envios.direccion_destino,
    envios.estado_envio
FROM envios
INNER JOIN pedidos ON envios.id_pedido = pedidos.id_pedido
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
WHERE envios.estado_envio != 'Entregado';

SELECT 
    categorias.nombre AS categoria,
    COUNT(productos.id_producto) AS cantidad_productos
FROM categorias
INNER JOIN productos ON categorias.id_categoria = productos.id_categoria
GROUP BY categorias.nombre
ORDER BY cantidad_productos DESC;

SELECT 
    clientes.nombre,
    clientes.apellido,
    COUNT(pedidos.id_pedido) AS total_pedidos,
    SUM(pedidos.total) AS total_gastado
FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.id_cliente, clientes.nombre, clientes.apellido
ORDER BY total_gastado DESC
LIMIT 5;


SELECT 
    productos.nombre AS producto,
    SUM(detalle_pedidos.cantidad) AS unidades_vendidas,
    AVG(detalle_pedidos.cantidad) AS promedio_por_venta
FROM detalle_pedidos
INNER JOIN productos ON detalle_pedidos.id_producto = productos.id_producto
GROUP BY productos.id_producto, productos.nombre
ORDER BY unidades_vendidas DESC;
