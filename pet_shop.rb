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
  count =0
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
  hash = {}
  for num in psname[:pets]
    if num [:name] == pname
      hash = {name: pname}
      return hash
    #end 
    end
  end
  return nil
end

def remove_pet_by_name(psname, pname)
  for num in psname[:pets]
    if num[:name] == pname
      psname[:pets].delete(num)
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
  customer[:pets] <<  pet
end
