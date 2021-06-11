var arr = [1, 2, 3, 4, 5, 6, 7, 8];

function sumUnoImpar(array) {
    for (let i = 0; i < arr.length; i++) {
        if (i % 2 != 0) {
            arr[i] = arr[i] + 1;

        }
        console.log(arr[i]);
    }
    return arr

}
a = sumUnoImpar(arr);

function longitudesPrevias(array) {
    for (let i = array.length - 1; i > 0; i--) {
        array[i] = array[i - 1].length;
    }
    console.log(array);
    return array;
}
var array = ['programar', 'dojo', 'genial'];
longitudesPrevias(array);

function agregarSiete(array) {
    var arr2 = [];
    for (let i = 0; i < array.length; i++) {
        arr2.push(array[i] + 7);
    }
    return arr2
}
var arreglo = [1, 2, 3, 4, 5, 6, 7];
agregarSiete(arreglo);

function arrayInverso(array) {
    var k = array.length; // 7

    for (let i = 1; i < 2 * (k - 1); i += 2) { //i=1 ;i=3;5;7;9;11
        array.unshift(array[i]); //[7,6,5,4,3,2,1,2,3,4,5,6,7]
    }
    for (let j = 1; j < k; j++) { //i=1
        array.pop();
    }
    return array
}
var arreglo = [1, 2, 3, 4, 5, 6, 7];

console.log(arrayInverso(arreglo));
