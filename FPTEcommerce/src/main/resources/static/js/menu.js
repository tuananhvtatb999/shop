{
  const menu = document.querySelector(".header__menu");
  const menuItems = menu.querySelectorAll(".menu__sub");
  const tabs = document.querySelectorAll(".tab");

  function activeTab(index) {
    if (!menuItems[index].classList.contains("active")) {
      menuItems.forEach((_) => _.classList.remove("active"));
      menuItems[index].classList.add("active");
      tabs.forEach((_) => _.classList.remove("active"));
      tabs[index].classList.add("active");
    }
  }
}
{
  const modalMenu = document.querySelector(".modal-nav__tab-list");
  const menuItems = modalMenu.querySelectorAll(".modal-nav__tab-item");
  const tabs = document.querySelectorAll(".modal__tab");

  function activeModalTab(index) {
    if (!menuItems[index].classList.contains("active")) {
      menuItems.forEach((_) => _.classList.remove("active"));
      menuItems[index].classList.add("active");
      tabs.forEach((_) => _.classList.remove("active"));
      tabs[index].classList.add("active");
    }
  }
}
{
  const pagination = document.querySelector(".pagination");
  const pages = pagination.querySelectorAll(".page-link");
  let currentActive = 1;

  function gotoPage(index) {
    currentActive = index;
    index -= 1;
    if (!pages[index].classList.contains("current")) {
      pages.forEach((_) => _.classList?.remove("current"));
      pages[index].classList.add("current");
    }
  }
  function backPage() {
    if (currentActive > 1) {
      gotoPage(currentActive - 1);
    }
  }
  function nextPage() {
    if (currentActive < 5) {
      gotoPage(currentActive + 1);
    }
  }
}
