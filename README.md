1. Write the test
2. Make the test fail/error out
3. Write the simplest code that could make the test pass.
4. Refactor to improve.


Store Application
User
<<<<<<< 697c54bd9a675a4c84b5408e68d5e4d7cb89fa52
first name
last name
email

Cart
user_id
status

Item
name
inventory

Homework
Create a test in cart_spec for an instance method called `checkout`
- assign tht total of the cart to an attribute for the user called `total_spent`
- reduces the inventory for each item in the cart by 1
- changes the status of the cart from pending to submitted
=======
  first_name
  last_name
  email

Cart
  belongs_to user (user_id)
  status

Item
  name
  inventory
  
>>>>>>> Code-along with Cernan
