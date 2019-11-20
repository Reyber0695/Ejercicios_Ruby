class Dictionary
  def self.all_word_bank
    words = [
      espaniol: { 
        department: "departamento", 
        tenant: "inquilino",
        owner: "propietario",
        rent: "renta"
        }, 
      ingles: {
        departamento: "department",
        inquilino: "tenant",
        propietario: "owner",
        renta: "rent"
        }
      ]
  end
  
  def self.traslate(language, word)
    self.all_word_bank.each do |two_words|
      return two_words[language.downcase.to_sym][word.downcase.to_sym]
    end
  end
end
  
Dictionary.traslate("Ingles", "Propietario")