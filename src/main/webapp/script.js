const header = document.querySelector("header");


let shopContent = document.querySelector('.shop-content');
let cart = document.querySelector('.cart');
let cartBody = document.querySelector('.cart-body');
//let body = document.querySelector('body');
let total = document.querySelector('.cart-total');



window.addEventListener("scroll", function(){
    header.classList.toggle("sticky", this.window.scrollY > 80);
});


// Function to display the message
function displayMessage(message) {
    const messageElement = document.getElementById('addedToCartMessage');
    messageElement.textContent = message;
    messageElement.style.display = 'block'; // Show the message
    setTimeout(function() {
        messageElement.style.display = 'none'; // Hide the message after 3 seconds
    }, 1000);
};

// get all class by name in array, display the message by click
// const orderButtons = document.getElementsByClassName("s-btnn");

// for (let i = 0; i < orderButtons.length; i++){
//     orderButtons[i].addEventListener('click', () => {
//         displayMessage('Item has been added to the cart!');
//         });

// };

const clearCart = document.querySelector(".cart-clear");

clearCart.addEventListener("click", function(){
    listCarts = [];
    reloadCart();
});

const addToCheckOut = document.querySelector(".checkout");

addToCheckOut.addEventListener("click", function(){

    localStorage.setItem("checkoutdata", JSON.stringify(listCarts));
    let savedData = JSON.parse(localStorage.getItem("checkoutdata"));
    console.log(savedData);
    
//     //document.cookie = "listCarts=" + JSON.stringify(listCarts) + "; expires=Thu, 31 Dec 2025 23:59:59 UTC; path=/;";
//     document.cookie = "abs"
//     console.log(document.cookie);


});



//show side bar

const toggleBtn = document.querySelector(".cart-icon");
const closeBtn = document.querySelector(".cart-close");
const cartBackground = document.querySelector(".cart-overlay");
let listCarts  = [];

toggleBtn.addEventListener("click", function(){
    console.log(cart.classList);
    cart.classList.toggle("show");
    cartBackground.classList.toggle("show");

});

closeBtn.addEventListener("click", function(){
    cart.classList.remove("show");
    cartBackground.classList.remove("show");
})

function addToCart(key){
    if(listCarts[key] == null){
        // copy product form list to list cart
        listCarts[key] = JSON.parse(JSON.stringify(products[key]));
        listCarts[key].quantity = 1;
    } else {
        listCarts[key].quantity += 1;
    }

    displayMessage('Item has been added to the cart!');
    reloadCart();
}

function reloadCart(){
    cartBody.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    listCarts.forEach((value, key)=>{
        
        if(value != null){
            totalPrice = totalPrice + value.price;
            count = count + value.quantity;
            let newDiv = document.createElement('div');
            newDiv.classList.add("cart-item");
            newDiv.innerHTML = `
                <img src="${value.image}" width="300" height="300" />
                <div class="cart-item-detail">
                    <h3>${value.name}</h3>
                    <h5>${value.price.toLocaleString()}</h5>
                    <div class="cart-item-amount">
                        <i class="bx bx-minus" onclick="changeQuantity(${key}, ${value.quantity - 1})"></i>
                        <span class="qty">${value.quantity}</span>
                        <i class="bx bx-plus" onclick="changeQuantity(${key}, ${value.quantity + 1})"></i>
                    </div>
                </div>`;
               
            cartBody.appendChild(newDiv);
        }
    })
    total.innerText = totalPrice.toLocaleString();
}

// add product
let products = [
    {
        id: 0,
        name: 'Blueberry Honey',
        image: '../img/p1.png',
        price: 1200
    },
    {
        id: 1,
        name: 'Pure Honey',
        image: '../img/p2.png',
        price: 1200
    },
    {
        id: 2,
        name: 'Raw Honey',
        image: '../img/p3.png',
        price: 2200
    },
    {
        id: 3,
        name: 'RaspBerry Honey',
        image: '../img/p4.png',
        price: 1230
    },
];

function initMenuList(){
    products.forEach((value, key) =>{
        let newDiv = document.createElement('div');
        newDiv.classList.add('row');

        newDiv.innerHTML = 
            `
            <img src="${value.image}">
            <h3>"${value.name}"</h3>
            <p>Brief product discription</p>
            <div class="in-text">
                <div class="price">
                    <h6>${value.price}</h6>
                </div>
                <div class="s-btnn">
                    <a onclick="addToCart(${key})">Order Now</a>
                </div>
            </div>
            <div class="top-icon">
                <a href="#"><i class="bx bx-heart"></i></a>
            </div>
            `;
        shopContent.appendChild(newDiv);
    })
}
initMenuList();

function changeQuantity(key, quantity){
    if(quantity == 0){
        delete listCarts[key];
    }else{
        listCarts[key].quantity = quantity;
        listCarts[key].price = quantity * products[key].price;
    }
    
    reloadCart();
}

// for checkout page
function checkCart(){
    var cookieValue = document.cookie
    .split('; ')
    .find(row => row.startsWith('listCarts='));
    if(cookieValue){
        listCarts = JSON.parse(cookieValue.split('=')[1]);
    }else{
        listCarts = [];
    }
}
checkCart();



/** 
// selectors

const selectors ={
    products: document.querySelector(".products"),
    cartbtn: document.querySelector(".cart-btn"),
    cartQty: document.querySelector(".cart-qty"),
    cartClose: document.querySelector(".cart-close"),
    cart: document.querySelector(".cart"),
    cartOverlay: document.querySelector(".cart-overlay"),
    cartClear: document.querySelector(".cart-clear"),
    cartBody: document.querySelector(".cart-body"),
};

// cart events

const setupListeners = () => {
    document.addEventListener("DOMContentLoaded", initStore);

    selectors.cartbtn.addEventListener("click", showCart);
    selectors.cartOverlay.addEventListener("click", hideCart);
    selectors.cartClose.addEventListener("click", hideCart);
};

const showCart =() => {
    selectors.cart.classList.add("show");
    selectors.cartOverlay.classList.add("show");
};

const hideCart =() => {
    selectors.cart.classList.remove("show");
    selectors.cartOverlay.classList.remove("show");
};
*/

