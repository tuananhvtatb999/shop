{
  const storeTabBar = document.querySelector(".brand-store__tab-bar");
  const filterButtons = storeTabBar.querySelectorAll(".filter-item__button");
  function showDropdown(index) {
    if (!filterButtons[index + 1].classList.contains("filter-active")) {
      filterButtons[index + 1].classList.add("filter-active");
      filterButtons[index + 1].firstElementChild.classList.add("text-highlight");
    }
    const icon = filterButtons[index + 1].lastElementChild;
    icon.classList.toggle("fa-caret-down");
    icon.classList.toggle("fa-caret-up");
    const dropdown = filterButtons[index + 1].nextElementSibling;
    if (!dropdown.classList.contains("active")) {
      filterButtons.forEach((_) => _?.nextElementSibling?.classList?.remove("active"));
    }
    dropdown.classList.toggle("active");
  }
}
