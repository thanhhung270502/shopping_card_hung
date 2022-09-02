const filter_type = document.querySelectorAll('.type');
// console.log('a');
// var c = 'all';
// for (var z = 0; z < filter_type.length; z++) {
//     if (z == 0) c = 'all';
//     else if (z == 1) c = 'ao-thun';
//     else if (z == 2) c = 'ao-thun-fs';
//     else if (z == 3) c = 'ao-polo';
//     else if (z == 4) c = 'ao-sweeter';
//     console.log(c);
//     filter_type[z].onclick = (c) => {
//         var x, i;
//         console.log(c);
//         x = document.getElementsByClassName("filter-collection");
//         if (c == "all") {
//             for (i = 0; i < x.length; i++) {
//                 if (!x[i].classList.contains('collection-active')) {
//                     x[i].classList.add('collection-active');
//                 }
//             }
//         }
//         else {
//             for (i = 0; i < x.length; i++) {
//                 x[i].classList.remove('collection-active');
//                 // w3RemoveClass(x[i], "show");
//                 if (x[i].classList.contains(c)) {
//                     x[i].classList.add('collection-active');
//                 }
//             }
//         }
//     }
// }

const x0 = filter_type[0];
const x1 = filter_type[1];
const x2 = filter_type[2];
const x3 = filter_type[3];
const x4 = filter_type[4];

const c0 = 'all';
const c1 = 'ao-thun';
const c2 = 'ao-thun-fs';
const c3 = 'ao-polo';
const c4 = 'ao-sweeter';


// var x = document.getElementsByClassName("filter-collection");
var x = document.querySelectorAll('.filter-collection');

x0.onclick = () => {
    for (var i = 0; i < x.length; i++) {
        var z = x[i];
        if (!x[i].classList.contains('collection-active')) {
            x[i].classList.add('collection-active');
        }
    }
}

x1.onclick = () => {
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('collection-active');
        // w3RemoveClass(x[i], "show");
        console.log(c1)        
        var z = x[i];
        if (z.classList.contains(c1)) {
            console.log(x[i])
            z.classList.add('collection-active');
        }
    }
}
x2.onclick = () => {
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('collection-active');
        // w3RemoveClass(x[i], "show");
        console.log('Hello')        
        var z = x[i];
        if (z.classList.contains(c2)) {
            console.log(x[i])
            z.classList.add('collection-active');
        }
    }
}
x3.onclick = () => {
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('collection-active');
        // w3RemoveClass(x[i], "show");
        console.log(c3)        
        var z = x[i];
        if (z.classList.contains(c3)) {
            console.log(x[i])
            z.classList.add('collection-active');
        }
    }
}
x4.onclick = () => {
    for (var i = 0; i < x.length; i++) {
        x[i].classList.remove('collection-active');
        // w3RemoveClass(x[i], "show");
        console.log(c4)        
        var z = x[i];
        if (z.classList.contains(c4)) {
            console.log(x[i])
            z.classList.add('collection-active');
        }
    }
}