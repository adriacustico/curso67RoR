function mayorQue(y, Y) {
    let c = 0;
    for (let i = 0; i < y.length; i++) {
        if (y[i] > Y) {
            c = c + 1;
        }
    }
    return c
}
y = [1, 2, 3, 4, 5, 6, 6, 6, 6];
Y = 3;
x = mayorQue(y, Y)
console.log(x);



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
var array = [1, -2, 3, 4, -5, 6, -7, 8, 9];
var x = MMA(array);
console.log('El promedio es ' + x[0] + ' El mínimo es ' + x[1] + ' El máximo es ' + x[2]);

function reempNegativos(array) {
    for (i = 0; i < array.length; i++) {
        if (array[i] < 0) {
            array[i] = 'Dojo';
        }
    }
    return array
}
x = reempNegativos([1, 2, -3, -5, 5]);
console.log(x);


function quitarValor(arr, a, b) {

    var c = b - a + 1;
    for (var i = a; i <= c; i++) {
        arr[i] = arr[i + c];
    }
    console.log(arr);
    arr.length = arr.length - c;
    return arr;
}
var array = quitarValor([20, 30, 40, 50, 60, 70], 2, 4);
console.log(array);