console.log('Ejercicio 1');
var array = [];

function big(array) {
    var arrayBig = [];
    for (i = 0; i <= array.length - 1; i++) {
        if (array[i] <= 0) {
            arrayBig.push(array[i]);
        } else {
            arrayBig.push('big');
        }
    }
    return arrayBig;
}
console.log(big([1, -2, 3, 4, -5, 6, -7, 8, 9]));

console.log('Ejercicio 2');
var array = [];

function MinMax(array) {
    var max = 0;
    var min = 0;
    for (i = 0; i <= array.length - 1; i++) {
        if (array[i] > max) {
            max = array[i];
        }
        if (array[i] < min) {
            min = array[i];
        }
    }
    console.log(min)
    return max
}
console.log(MinMax([1, -2, 3, 4, -5, 6, -7, 8, 9]));