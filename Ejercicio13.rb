class Contact
  def self.all
    [
      {age: 20, name: "Jose", last_name: "Lopez", genr: "masculino"},
      {age: 21, name: "Oscar", last_name: "Perez", genr: "masculino"},
      {age: 22, name: "Martha", last_name: "Sanchez", genr: "femenino"}
    ]
  end
  
  def self.find_by(key, value)
    self.all.each do |contact|
      return contact if contact[key.to_sym] == value
      break if contact[key.to_sym] == value
    end
  end

end
  
Contact.find_by("genr", "masculino")
Contact.all