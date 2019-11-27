const add = (numbers) => {
  let rows = [];
  let columns = [];
  let maxColumn = 0;
  let maxRow = 0;

  for(let row = 0; row < numbers.length; row++){
    let addColumn = 0
    let addRow = 0;
    
    addRow = numbers[row].reduce((numberOne, numberTwo)
    => {return numberOne + numberTwo});
    rows.push(addRow)

    for(let col = 0; col < numbers.length; col++){
      addColumn += numbers[col][row];
    }

    columns.push(addColumn);
  }

  maxRow = Math.max.apply(null, rows)
  maxColumn = Math.max.apply(null, columns);
  return Math.max(maxColumn, maxRow);
}

add([[6, 7, 8], [1, 4, 29], [4, 78, 12]]);