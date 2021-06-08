/* console.log('Ejercicio 1');
var array = [];
for (i = 1; i <= 255; i++) {
    array.push(i);
}
console.log(array);

console.log('Ejercicio 2');
var par = 0;
for (i = 0; i <= 1000; i++) {
    i = i + 2;
    par = par + i;
}
console.log(par);

console.log('Ejercicio 3');
var impar = 0;
for (i = 0; i <= 5000; i++) {
    i = i + 1;
    impar = impar + i;
}
console.log(impar);

console.log('Ejercicio 4');
var sum = 0;

function s_a(array) {
    for (i = 0; i <= array.length - 1; i++) {
        sum = sum + array[i];
    }
    return sum;
}
var array = [1, 2, 3, 4, 5];
sum = s_a(array);
console.log(s_a(sum));

console.log('Ejercicio 5');
var array = [1, 2, 3, 40, 5];


function maximo(array) {
    var max = array[0];
    for (var i = 1; i < array.length; ++i) {
        if (array[i] > max) {
            max = array[i];
        }
    }
    return max
}
var array = [1, 2, 3, 40, 5];
console.log(maximo(array));

console.log('Ejercicio 6');
var sum = 0;

function aver(array) {
    for (i = 0; i <= array.length - 1; i++) {
        sum = sum + array[i];
    }
    var ave = sum / array.length;
    return ave;
}
var array = [1, 2, 3, 4, 5];
ave = aver(array);
console.log(ave);

console.log('Ejercicio 7');
var array = [];
for (i = 1; i <= 50 / 2; i++) {
    impar = 2 * i - 1;
    array.push(impar);
}
console.log(array);

console.log('Ejercicio 8');
var y = 0;
var array = [];

function m(y, array) {
    var arrayMax = [];
    for (i = 0; i <= array.length - 1; i++) {
        if (y < array[i]) {
            arrayMax.push(array[i]);
        }
    }
    return arrayMax;
}
console.log(m(5, [1, 2, 3, 4, 5, 6, 7, 8, 9]));

console.log('Ejercicio 9');
var array = [];

function cuad(array) {
    var arrayCuad = [];
    for (i = 0; i <= array.length - 1; i++) {
        arrayCuad.push(array[i] * array[i])
    }
    return arrayCuad;
}
console.log(cuad([1, 2, 3, 4, 5, 6, 7, 8, 9])); */

console.log('Ejercicio 10');
var array = [];

function ceros(array) {
    var arrayCero = [];
    for (i = 0; i <= array.length - 1; i++) {
        if (array[i] >= 0) {
            arrayCero.push(array[i]);
        } else {
            arrayCero.push(0);
        }
    }
    return arrayCero;
}
console.log(ceros([1, -2, 3, 4, -5, 6, -7, 8, 9]));

console.log('Ejercicio 11');
var array = [];

function MMA(array) {
    var mma = [];
    var max = 0;
    var min = 0;
    var sum = 0;
    for (i = 0; i <= array.length - 1; i++) {
        sum = sum + array[i];
        if (array[i] > max) {
            max = array[i];
        }
        if (array[i] < min) {
            min = array[i];
        }
        var ave = sum / array.length;
    }
    mma = [ave, min, max]
    return mma
}
console.log(MMA([1, -2, 3, 4, -5, 6, -7, 8, 9]));

console.log('Ejercicio 12');
var array = [];

function inter(array) {
    last = array.length - 1
    j = array[last];
    i = array[0];
    array.shift();
    array.unshift(j);
    array.pop();
    array.push(i);
    return array
}
console.log(inter([1, -2, 3, 4, -5, 6, -7, 8, 9]));

console.log('Ejercicio 13');
var array = [];

function dojo(array) {
    var arrayCero = [];
    for (i = 0; i <= array.length - 1; i++) {
        if (array[i] >= 0) {
            arrayCero.push(array[i]);
        } else {
            arrayCero.push('dojo');
        }
    }
    return arrayCero;
}
console.log(dojo([1, -2, 3, 4, -5, 6, -7, 8, 9]));