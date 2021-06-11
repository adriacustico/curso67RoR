function reempNegativos(array) {
    for (i = 0; i < array.length; i++) {
        if (array[i] < 0) {
            array[i] = 0;
        }
    }
    return array
}
x = reempNegativos([1, 2, -3, -5, 5]);
console.log(x);

function moverAdelante(array) {
    for (let i = 0; i < array.length; i++) {
        array[i] = array[i + 1];
    }
    array[array.length - 1] = 0;
    return array
}
var x = moverAdelante([1, 2, 3, 4, 5, 6, 7]);
console.log(x);


function returnReverso(array) {
    for (let i = 0; i < array.length / 2; i++) {
        let temp = array[i];
        array[i] = array[array.length - i - 1];
        array[array.length - i - 1] = temp;
    }
    return array;
}
var x = returnReverso([1, 2, 3, 4, 5, 6, 7]);
console.log(x);

function repetirValores(array) {
    var arrayDoble = [];
    for (let i = 0; i < array.length; i++) {
        j = 2 * i
        arrayDoble[j] = array[i];
        arrayDoble[j + 1] = array[i];
    }
    return arrayDoble
}
var x = repetirValores([1, 2, 3, 4, 5, 6, 7]);
console.log(x);