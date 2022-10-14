Welcome!
As part of the interview process complete the following tasks
(All tasks should be placed into one git repository. Each task should be a separate commit. The code as well as git commits should be formatted according to the best practices in respective fields.)

Task 1 - Callbacks
You are given the following code

class Apple < ApplicationRecord
  include Blending
end
class Orange < ApplicationRecord
  include Blending
end
module Blending
end
Modify the Blending module such as after a model is saved into the database a method make_juice is called, but only for the Apple class.

Restrictions: you are not allowed to modify the code of any of the ActiveRecord models.

Task 2 - Collections
You are given an SQL database consisting of two tables baskets and apples. One basket can have many apples or can have no apples. The database is pre-filled with 50 baskets each having a capacity between 2 and 27, inclusive.

-- table `apples'

CREATE TABLE apples (
    id integer NOT NULL,
    basket_id integer,
    variety character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
-- table `baskets'

CREATE TABLE baskets (
    id integer NOT NULL,
    capacity integer,
    fill_rate character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
Write a rake task add_apple_to_basket that accepts two arguments, variety and count. Once executed the task should:

Find an available basket that has 0 or is filled with at least 1 apple of the same sort as the variety argument.
Create as many apple records as are passed in the count argument.
Whenever a basket has a new apple, the fill_rate should be re-calculated as a percentage of the count of the associated records divided by the capacity of the basket.
If the selected basket is full, the remainder of apples should be carried over to the next basket.
If no baskets are available, the rake task should output the next message as a standard output: "All baskets are full. We couldn't find the place for \[X\] apples"
Task 3 - Objects, objects, objects! (Advanced level)
You have two open IRB shells in separate terminal windows. The first shell has the following code already entered:

class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')
The second shell has the following code already entered:

class Apple

  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end
Write the code in the shell(s) that copies an object apple from shell one to shell two. Bonus: write the solution without using external Ruby libraries.

Restrictions: you are not allowed to run any variations of the method new in either IRB shells.
