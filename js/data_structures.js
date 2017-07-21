var colors = ['blue', 'yellow', 'orange', 'green'];
var names = ['Ed', 'John', 'Smith', 'Aldwin'];

colors.push('black');
names.push('Chris');

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)
