# Create and define a variable count = 0. Using a loop and the += operator, output the following:

# count = 0
# 11.times {
#   p count
#   count += 1
# }

# Translate the following into ruby code. Run the program to make sure it works:

# Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.
# Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.
# If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.
# If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.

recipes = ["recipe1", "recipe2", "recipe3", "recipe4", "recipe5", "recipe6", "recipe7", "recipe8", 10, 11]
languages = ["english", "french", "german", "spanish", 1, 2]

# if recipes.length > 10 && languages.length > 5
#   p "Sam and Sally should date"
# else
#   p "Sam and Sally should not date"
# end

if recipes.include?("crepes") && languages.include?("french")
  p "Sam and Sally should marry"
else
  p "Sam and Sally should not marry"
end
