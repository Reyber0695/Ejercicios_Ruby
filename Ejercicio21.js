const getWelcome = name => `Hi, ${name}!`;

const greetHomie = () => {
  let name = "Homie";
  return getWelcome(name);
}

const greetFco = () => {
  let name ="Fco";
  return getWelcome(name);
}

greetHomie();
greetFco();