-- > Que 1 Retrieve the total number of orders placed. 
SELECT COUNT(order_id) AS total_orders FROM orders;
---------------------------------------------------------------------------------------------
-- > Oue 2 Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
-------------------------------------------------------------------------------------------------
-- >Oue 3 Identify the highest-priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;
--------------------------------------------------------------------------------------------------- 
-- > Oue 4 Identify the most common pizza size ordered.
SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;
--------------------------------------------------------------------------------------------------- 
-- -> Oue 5 List the top 5 most ordered pizza types along with their quantities. 
SELECT pizza_types.name,
 SUM(order_details.quantity) AS quantity
FROM pizza_types JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name ORDER BY quantity DESC limit 5 ;


