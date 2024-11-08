-- Join the necessary table to find the 
-- total quantity of each pizza category ordered

SELECT 
    pizza_types.category,
    SUM(orders_details.quantity) AS quantity_order
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id
        JOIN
    pizza_types ON pizza_types.pizza_type_id = pizzas.pizza_type_id
GROUP BY pizza_types.category
ORDER BY quantity_order DESC;
