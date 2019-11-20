class Dictionary
  def self.traslate(language, word)
    words.each do |two_words|
      return two_words[language.downcase.to_sym][word.downcase.to_sym]
    end
  end

  private

  def self.words
    [
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
end
  
Dictionary.traslate("Ingles", "Propietario")