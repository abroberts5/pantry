class Pantry
  attr_reader     :stock,
                  :shopping_list

  def initialize
    @stock         = Hash.new(0)
    @shopping_list = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, quantity)
    @stock[item] += quantity
  end

  def add_to_shopping_list(list)
    new_list = list.ingredients
    new_list.each {|key, value| @shopping_list[key] = value}
  end

  def print_shopping_list
    new_list = ""
    @shopping_list.each do |key, value|
      new_list << "* #{key}: #{value}\n"
    end
    new_list
  end

end
