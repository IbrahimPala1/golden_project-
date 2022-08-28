# 1.Describe the Problem

 As a user So that I can keep track of my tasks 
 I want to check if a text includes the string #TODO. 

# 2. Design the Method Signature

is_correct = check_TODO(text)

 text is a string of words in it 
 is_correct is a boolean depedning on whether it checks out 

<!-- Include the name of the method, its parameters, return value, and side effects. -->

# 3. Create Examples as Tests

# 1
check_TODO(" ")
# => fail "not a sentence"

# 2
check_TODO("i like to go out")
# => false "does not contain TODO"

# 3
check_TODO("i like todo")
# => false "does not contain uppercase TODO"

# 4 
check_TODO("TODO")
# => true "contains TODO"

# 5
check-TODO("You have shopping TODO")
# => true "contains TODO"

<!-- Make a list of examples of what the method will take and return. -->


# 4. Implement the Behaviour

<!-- After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour. -->