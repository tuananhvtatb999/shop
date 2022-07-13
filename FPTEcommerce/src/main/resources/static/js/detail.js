{
//  const newPrice = 50000;
//  const oldPrice = 79000;
 // const discount = Math.round(100 - (100 / oldPrice) * newPrice);
  const newPrice2 = document.getElementById("value2");
  const oldPrice1 = document.getElementById("value1");
  const discount1 = document.getElementById("discount");
  const newPrice = newPrice2.value;
  const oldPrice = oldPrice1.value;
  const discount = discount1.value;
  const newPriceEle = document.querySelector(".product__price--new");
  const oldPriceEle = document.querySelector(".product__price--old");
  const discountPriceEle = document.querySelector(".product__price--discount");
  const stickyPriceEle = document.querySelector(".sticky-product__price");

  newPriceEle.innerHTML = formatPrice(newPrice);
  stickyPriceEle.innerHTML = formatPrice(newPrice);
  oldPriceEle.innerHTML = formatPrice(oldPrice);
  discountPriceEle.innerHTML = formatPrice(`${discount}%`);
  // --------------------------------------------------
  let quantity = 1;
  let maxQuantity = 13;
  const quantityElements = document.querySelectorAll(".product__quantity");
  const storeEle = document.querySelector(".product__in-store span");
  const plusElements = document.querySelectorAll(".plus");
  const minusElements = document.querySelectorAll(".minus");
  const errEle = document.querySelector(".product__box--detail .error");
  storeEle.innerHTML = maxQuantity;
  quantityElements.forEach((_) => (_.innerHTML = quantity));
  plusElements.forEach((_) => _.addEventListener("click", increaseQuantity));
  minusElements.forEach((_) => _.addEventListener("click", decreaseQuantity));
  setCurrentPrice();
  function increaseQuantity() {
    if (quantity < maxQuantity) {
      ++quantity;
      quantityElements.forEach((_) => (_.innerHTML = quantity));
      setCurrentPrice();
    } else {
      errEle.style.display = "block";
    }
  }
  function decreaseQuantity() {
    if (quantity > 1) {
      if (errEle.style.display === "block") {
        errEle.style.display = "none";
      }
      currentPriceEle = quantity * newPrice;
      --quantity;
      quantityElements.forEach((_) => (_.innerHTML = quantity));
      setCurrentPrice();
    }
  }
  function setCurrentPrice() {
    const currentPriceEle = document.querySelector(".sticky-product__price--current");
    const currentPrice = quantity * newPrice;
    currentPriceEle.innerHTML = formatPrice(currentPrice);
  }
}
{
  let stickyCheckout = document.querySelector(".sticky--checkout");
  window.addEventListener("scroll", toggleSticky);
  function toggleSticky() {
    let bot =
      (window.pageYOffset || document.documentElement.scrollTop) + window.innerHeight;
    if (bot > window.innerHeight + 500) {
      stickyCheckout.style.transform = "translateY(" + 0 + "%)";
    } else {
      stickyCheckout.style.transform = "translateY(" + 100 + "%)";
    }
  }
}
{
  let currentPos = 0;
  const negativeHundred = -100;
  let inlineSlide = 6;

  const sliderLeftContainer = document.querySelector(".slider__product-img-list--left");
  // const sliderLeft = sliderLeftContainer.querySelector(".slider__product-img-wrapper");
  const sliderRightContainer = document.querySelector(".slider__product-img-list--right");
  const sliderRight = sliderRightContainer.querySelector(".slider__product-img-wrapper");
  const sliderLeftImages = Array.from(sliderLeftContainer.querySelectorAll("img"));
  const sliderRightImages = sliderRightContainer.querySelectorAll("img");
  const back = sliderRightContainer.querySelector(".back");
  const next = sliderRightContainer.querySelector(".next");
  back.addEventListener("click", backToPreviousPage);
  back.querySelector("i").addEventListener("click", backToPreviousPage);
  next.addEventListener("click", moveToNextPage);
  next.querySelector("i").addEventListener("click", moveToNextPage);

  let sliderLength = sliderRightImages.length;
  function backToPreviousPage(e) {
    --currentPos;
    currentPos = currentPos > 0 ? Math.abs(currentPos) % sliderLength : 0;
    e.stopPropagation();
    sliderRightAnimation();
    activeIndex(currentPos);
  }
  function moveToNextPage(e) {
    currentPos = Math.abs(++currentPos) % sliderLength;
    e.stopPropagation();
    sliderRightAnimation();
    activeIndex(currentPos);
  }
  function activeIndex(index) {
    sliderLeftImages.forEach((_) => _.classList.remove("active"));
    sliderLeftImages[index].classList.add("active");
  }

  sliderLeftImages.forEach((_) => _.addEventListener("click", moveToPage));
  function moveToPage(e) {
    currentPos = sliderLeftImages.indexOf(e.target);
    console.log(sliderLeftImages.indexOf(e.target));
    sliderRightAnimation();
    activeIndex(currentPos);
  }
  function sliderRightAnimation() {
    sliderRight.style.transform = "translateX(" + currentPos * negativeHundred + "%)";
  }
}
