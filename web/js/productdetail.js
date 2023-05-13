//Created by Campus
const quantityInput = document.getElementById("product-detail__quantity--value");
// const tang = document.getElementsByClassName("btn-minus")[0];
// const giam = document.getElementsByClassName("btn-plus")[0];

const increaseButton = quantityInput.nextElementSibling;
const decreaseButton = increaseButton.nextElementSibling;
const minimum = parseInt(quantityInput.getAttribute("data-minimum")) || 1;


decreaseButton.addEventListener("click", () => {
    let quantity = parseInt(quantityInput.value);
    quantity = isNaN(quantity) ? minimum : quantity;
    quantityInput.value = ++quantity;
});

increaseButton.addEventListener("click", () => {
    let quantity = parseInt(quantityInput.value);
    quantity = isNaN(quantity) ? minimum : quantity;
    quantityInput.value = quantity > minimum ? --quantity : minimum;
});