var colors = ['blue', 'yellow', 'orange', 'green'];
var names = ['Ed', 'John', 'Smith', 'Aldwin'];

colors.push('black');
names.push('Chris');

var horses = {};

for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)

function Car(model, make, year) {
  this.model = model;
  this.make = make;
  this.year = year;
  this.rev = function () {console.log('Vroom')}
}

var car1 = new Car('Civic', 'Honda', '2016');
console.log(car1);
car1.rev();

var car2 = new Car('Corolla', 'Toyota', '2008');
console.log(car2);
car2.rev();
