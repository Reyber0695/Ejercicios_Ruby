const word_finder = (term) => {
  const personNames = ['Pedro', 'Maria', 'Rosa'];
  const animals = ['Caballo', 'Oso', 'Perro'];
  const stuffs = ['Petroleo', 'Carne', 'Rosca'];
  let find_words = [];
  personNames.forEach((trm)=>{
    let exp = trm.toLowerCase().match(/.{1,2}/g);
    if(exp.includes(term)) { find_words.push(trm); }
  });
  animals.forEach((trm)=>{
    let exp = trm.toLowerCase().match(/.{1,2}/g);
    if(exp.includes(term)) { find_words.push(trm); }
  });
  stuffs.forEach((trm)=>{
    let exp = trm.toLowerCase().match(/.{1,2}/g);
    if(exp.includes(term)) { find_words.push(trm); }
  });

  console.log(find_words);
    
}
  
word_finder('pe');