SELECT COUNT(*) FROM film
WHERE length >(
SELECT AVG (length) FROM film)

SELECT COUNT(rental_rate) FROM film
WHERE rental_rate=(

SELECT MAX(rental_rate) FROM film)
	
SELECT COUNT(*) FROM film
WHERE rental_rate= ANY(

SELECT MIN(rental_rate)FROM film)
AND replacement_cost =ANY(SELECT MIN(replacement_cost) FROM film)

SELECT customer.first_name,customer.last_name FROM customer
INNER JOIN payment ON customer.customer_id=payment.customer_id
WHERE payment.amount= (

	SELECT MAX(payment.amount) FROM payment

)