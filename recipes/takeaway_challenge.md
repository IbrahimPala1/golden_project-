1. Describe the Problem

Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

<!-- As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total. -->


2. Design the Class System



      ─┬───────────────────────────┐
       │  verb-                    │
       │                           │
       │  check                    │
       │  see list                 │
       │  order                    │
       │  select                   │
       │  verify                   │
       │  see recipet              │
       │                           │
       └───────────────────────────┘


       ┌────────────────────────────┐          ┌─────────────────────────────┐                 ┌─────────────────────────────┐
       │                            │          │                             │                 │                             │
       │ DishesList                 │          │   OrderMeal                 │                 │ Reciept                     │
       │                            │          │                             │                 │                             │
       │ list dish                  │          │   select                    │                 │ addtotal                    │
       │                            │          │                             │                 │                             │
       │ list pricces               │          │                             │                 │ total                       │
       │                            ├─────────►│                             ├──────────────►  │                             │
       │                            │          │                             │                 │                             │
       │                            │          │                             │                 │                             │
       │                            │          │                             │                 │                             │
       │                            │          │                             │                 │                             │
       │                            │          │                             │                 │                             │
       └────────────────────────────┘          └─────────────────────────────┘                 └─────────────────────────────┘
                              DishesList has zero or more         Recipt shows the total of items selected in ordermeal
                                    OrderMeals

```ruby 
class DishesList 

def list 
end 

def listdish 
end 

def listprice 
end 

end 

class dishes 

def dish 
end 

end 

class ordermeal 

def select 
end 

class recipet 

def addtotal 
end 

def total 
end 

3. Create Examples as Integration Tests

Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

Encode one of these as a test and move to step 4.

# 1 
 
 ```ruby 

 dishes_list = DishesList.new 
 dish_1 = ("spinach")
 dish_2


4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Encode one of these as a test and move to step 5.

5. Implement the Behaviour

For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.