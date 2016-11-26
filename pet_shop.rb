def pet_shop_name(psname)
  return psname[:name]
end

def total_cash(psname)
  return psname[:admin][:total_cash]
end

def add_or_remove_cash(psname,amount)
  psname[:admin][:total_cash] += amount
end

def  pets_sold(psname)
  return psname[:admin][:pets_sold]
end

def increase_pets_sold(psname, sales_num)
  psname[:admin][:pets_sold] += sales_num
end

def stock_count(psname)
  count = 0
  for num in psname[:pets]
    count += 1
  end
  return count
end

def pets_by_breed(psname, breed)
  array = []
  for num in psname[:pets]
    if num[:breed] == breed
      array << "yes"
    end
  end
  return array
end

def find_pet_by_name(psname, pname)
  for pet in psname[:pets]
    if pet [:name] == pname
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(psname, pname)
  for pet in psname[:pets]
    if pet[:name] == pname
      psname[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(psname, pet)
  psname[:pets] << pet
end

def customer_pet_count(customer)
  count = 0
  for num in customer[:pets]
    count += 1
  end
  return count
end

def add_pet_to_customer(customer, pet)
  customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
  money = customer[:cash]
  cost = pet[:price]

  money >= cost ? true : false

end

def sell_pet_to_customer(psname, pet, customer)

  if pet != nil && customer_can_afford_pet(customer, pet) == true

    add_pet_to_customer(customer,pet)
    increase_pets_sold(psname, 1)
    add_or_remove_cash(psname,pet[:price])
  end
end