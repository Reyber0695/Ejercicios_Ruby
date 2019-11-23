const word_finder = (term) => {
  const personNames = ['Pedro', 'Maria', 'Rosa'];
  const animals = ['Caballo', 'Oso', 'Perro'];
  const stuffs = ['Petroleo', 'Carne', 'Rosca'];
  let find_words = [];

  personNames.concat(animals, stuffs).forEach((trm)=>{
    let exp = trm.toLowerCase().match(/.{1,2}/g);
    if(exp.includes(term)) { find_words.push(trm); }
  });

  return(find_words);
}
  
word_finder('ca');