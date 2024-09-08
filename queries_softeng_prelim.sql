----Get the Order ID and Customer ID of the customer. Also get the Branch ID from where they ordered and the Date------

SELECT order_id AS OrderID,
	customer_id AS CustomerID,
    branch_id AS BranchID,
    order_date  AS Date_of_Order

FROM Orders

WHERE branch_id = 2 AND order_date > '2024-01-01';

----Get the Order ID of the 15 Customer as well their first and last name. After it, get the branch name of where they ordered and the date of order.

SELECT Orders.order_id AS OrderID,
		Customers.first_name AS First_Name,
        Customers.last_name AS Last_Name,
        Branches.branch_name AS Branch_Name,
        Orders.order_date AS Date_of_Order
        
FROM Orders

INNER JOIN Customers ON Orders.customer_id = Customers.customer_id
INNER JOIN Branches ON Orders.branch_id = Branches.branch_id
LIMIT 15;


---Get the Branch Name and the total revenue of each branches---

SELECT Branches.branch_name AS Branch_Name, 
        SUM(Menu_items.item_price * OrderItems.item_quantity) AS Total_Revenue

FROM Orders

INNER JOIN Branches ON Orders.branch_id = Branches.branch_id
JOIN OrderItems ON Orders.order_id = OrderItems.order_id
JOIN Menu_items ON OrderItems.item_id = Menu_items.item_id
GROUP BY Branches.branch_name;


----------

