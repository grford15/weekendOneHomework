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

def remove_pet_by_name(pets, name)
  dog = find_pet_by_name(pets, name)
  dog.delete_if{name}
end

def add_pet_to_stock(pets, newPet)
 pets[:pets].push(newPet)
end

def customer_cash(customer)
 return customer[:cash]
end

def remove_customer_cash(customer, cash)
 return customer[:cash] -= cash
end

def customer_pet_count(customers)
 return customers[:pets].count()
end

def add_pet_to_customer(customer, newPet)
 return customer[:pets].push(newPet)
end

def customer_can_afford_pet(customer, newPet)
 if customer[:cash] >= newPet[:price]
   return true
 else
   return false
 end 
end
