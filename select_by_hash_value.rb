# Let's now take a look at an example with hashes. In this example we want to select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# How would you implement a method like this?

# def select_fruit(hash)
#   hash.select { |produce, type| type == 'Fruit'}
# end


def select_fruit(hash)
  keys = hash.keys
  counter = 0
  fruits = Hash.new

  loop do
    break if counter >= keys.size

    if hash[keys[counter]] == "Fruit" 
      fruits[keys[counter]] = "Fruit"
    end

    counter += 1
  end
  p fruits
end

 select_fruit(produce)
 