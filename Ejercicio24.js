const positionSum = numbers => {
  const numbers = [];
  let addNumbers = 0;

  numbers.forEach(function (number) {
    if (!isNaN(number.replace(".", "")))
      numbers.push(number.split("."));
  });

  numbers.forEach(function (diagonalNumber, diagonalKey) {
    addNumbers += Number(diagonalNumber[diagonalKey]);
  });

  return addNumbers;
}

positionSum(["13.09.2017", "13.aa.2018", "44.09.2018", "13.09.7"]);