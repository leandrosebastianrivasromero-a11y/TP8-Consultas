# TP N° 8: Especificación de Requisitos y Consultas SQL

**Asignatura:** Base de Datos 1 (2026) - IPET 247

**Proyecto:** Sistema de E-Commerce (`tienda_online_db`)

## 1. Descripción del Sistema

El sistema gestiona las operaciones comerciales de la tienda online `tienda_online_db`. Permite administrar el catálogo de prendas organizadas por categorías y proveedores, registrar clientes, procesar pedidos con distintos métodos de pago, detallar los artículos vendidos, calcular totales y realizar el seguimiento de los envíos de paquetes.

## 2. Requisitos Funcionales (Orientados a los Datos)

1. **Gestión de Catálogo e Inventario:** El sistema debe permitir registrar prendas de indumentaria especificando su nombre, descripción, precio, stock disponible, categoría y proveedor asociado.

2. **Registro de Clientes:** El sistema debe almacenar los datos de identificación y contacto de cada cliente (nombre, apellido, correo electrónico único y teléfono), registrando de forma automática la fecha y hora de alta.

3. **Procesamiento de Pedidos:** El sistema debe registrar cada venta vinculándola a un cliente, un método de pago, el estado actual de la orden y el monto total calculado.

4. **Desglose de Detalle de Pedidos:** El sistema debe guardar el detalle de los productos comprados en cada orden, especificando la cantidad exacta y el precio unitario fijado al momento de la transacción.

5. **Logística y Envíos:** El sistema debe permitir asignar una dirección de destino, ciudad, empresa de transporte, número de seguimiento y estado logístico a cada pedido despachado.

## 3. Listado Descriptivo de Consultas Principales

 1. **Productos económicos en stock:** Listar todos los productos con stock disponible y precio menor a \$15.000, ordenados de menor a mayor precio.

 2. **Clientes por orden alfabético:** Obtener el listado de todos los clientes registrados mostrando su apellido, nombre y correo electrónico, ordenados alfabéticamente por apellido.

 3. **Alertas de stock crítico:** Listar los productos que tienen menos de 5 unidades en stock para gestionar su reposición, ordenados de menor a mayor cantidad disponible.

 4. **Pedidos pendientes:** Obtener todos los pedidos que estén en estado 'Pendiente', ordenados desde el más reciente al más antiguo.

 5. **Catálogo completo con relaciones:** Listar todos los productos mostrando el nombre de la prenda, su precio, el nombre de su categoría y la empresa proveedora.

 6. **Historial de ventas y pagos:** Obtener el listado de pedidos indicando el número de pedido, el nombre y apellido del cliente, la fecha, el método de pago utilizado y el total abonado.

 7. **Seguimiento de envíos activos:** Listar los pedidos cuyo envío aún no fue entregado, mostrando el número de pedido, el nombre del cliente, la dirección de destino y el estado actual del envío.

 8. **Productos por categoría:** Calcular cuántos productos existen dentro de cada categoría del catálogo.

 9. **Top 5 clientes con mayor gasto:** Obtener los 5 clientes con mayor monto acumulado en compras, mostrando su nombre, apellido, la cantidad de pedidos realizados y el total gastado.

10. **Ranking de productos más vendidos:** Obtener el ranking de los productos más vendidos según la suma de unidades registradas en los detalles de pedidos y el promedio de unidades por venta.
