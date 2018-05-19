def pet_shop_name(petshop)
 return petshop[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(money, payment)
 total_money = money[:admin][:total_cash] += payment
 return total_money
end

def pets_sold(pets)
 return pets[:admin][:pets_sold]
end

def increase_pets_sold(pet, num)
 petsSold = pet[:admin][:pets_sold] += num
 return petsSold
end

def stock_count(stock)
 return stock[:pets].length
end

def pets_by_breed(pets, breed)
  dogBreed = []
  for dog in pets[:pets]
    if dog[:breed] == breed
      dogBreed.push(dog)
    end
  end
  return dogBreed
end

def find_pet_by_name(pets, name)
  for dog in pets[:pets]
    if dog[:name] == name
      return dog
    end
  end
  return nil
end

# def remove_pet_by_name(pets, name)
#   for dog in pets[:pets]
#     if dog[:name] == name
#       dog.delete
#     end
#   end
# end
