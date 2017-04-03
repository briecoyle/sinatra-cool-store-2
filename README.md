1. Write the test
2. Make the test fail/error out
3. Write the simplest code that could make the test pass.
4. Refactor to improve.


Store Application
User
  first_name
  last_name
  email

Cart
  belongs_to user (user_id)
  status

Item
  name
  inventory
  
