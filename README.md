_You can just read this content in README.md or just run up the rails service_

## How to deliver code
* 1st: fork this project first, and do the questions below and commit
* 2nd: mailing out the url of forking project

## Please run commands as below before starting
* rake db:create
* rake db:seed

## Important Note:
    1. Please do it in a single database query and use Rails relations as much as possible.
    2. Returned format: json
    3. Please avoid to use raw sql to select

## Current Meal Food data matches:

|Meal          |Foods                                |
|--------------|-------------------------------------|
|Happy Meal A  |Coke, Burger, Apple Pie              |
|Drink B       |
|Happy Meal C  |Coke, French Fries, Fried Chicken    |
|Dessert D     |Apple Pie                            |
|Shakes E      |



### Q1:
	Add /no_food_meal endpoint. It should return a list of meals that don't have any food.

Expecting Outcome:

|No Food Meal       |
|-------------------|
|Drink B            |
|Shakes E           |


### Q2
	Add /max_foods endpoint. It should return a maximum number of food across all the meals.

Expecting Outcome:

|Food          |Meal #  |
|--------------|--------|
|Apple Pie     |2       |
|Coke          |2       |
|Fench Fries   |1       |
|Burger        |1       |
|Fried Chicken |1       |


### Q3
	Add other_food under the /other_food endpoint. It should list all the food that included in meal except current listed Food Head.

Expecting Outcome:

|Food Head     |other_food                                   |
|--------------|---------------------------------------------|
|Apple Pie     |Coke, Burger                                 |
|Coke          |Burger, French Fries, Apple Pie,Fried Chicken|
|Fench Fries   |Coke, Fried Chicken                          |
|Burger        |Coke, Apple Pie                              |
|Fried Chicken |Coke, French Fries                           |


# RUBYQ
# RubyTest
