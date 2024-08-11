
let cartBody = document.querySelector('.list');
let total = document.querySelector('.totalPrice');

let localValue = JSON.parse(localStorage.getItem("checkoutdata"));
console.log(localValue);

reloadCart();
function reloadCart(){
    cartBody.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    localValue.forEach((value, key)=>{
        
        if(value != null){
            totalPrice = totalPrice + value.price;
            count = count + value.quantity;
            let newDiv = document.createElement('div');
            newDiv.classList.add("item");
            newDiv.innerHTML = `
                <img src="${value.image}">
                <div class="info">
                    <div class="name">${value.name}</div>
                    <div class="price">${value.price.toLocaleString()}</div>
                </div>
                    <div class="quantity">${value.quantity}</div>
                    <div class="returnPrice">$${value.price * value.quantity}</div>`;
               
            cartBody.appendChild(newDiv);
        }
    })
    total.innerText = totalPrice.toLocaleString();
}

