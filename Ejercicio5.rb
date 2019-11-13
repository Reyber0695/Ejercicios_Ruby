def update_data(data, key, value)
  data.has_key?(key.to_sym) ? data[key.to_sym] = value 
  :  data[key.to_sym] = value
  
  data
end
  
data = { enterprise: 'Homie', years: 4}
update_data(data, 'Edad', 27)