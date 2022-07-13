{
  const reviewTab = document.querySelector(".review-filter");
  const filters = reviewTab.querySelectorAll(".filter-item__button");

  function filterReview(index) {
    filters.forEach((_) => {
      if (_.textContent.trim() !== "Thời gian") {
        _.classList.remove("filter-active");
        _.firstElementChild.classList?.remove("text-highlight");
      }
    });
    filters[index].classList.add("filter-active");
    filters[index].firstElementChild.classList.add("text-highlight");
  }

  function filterTime(index) {
    if (!filters[index].classList.contains("filter-active")) {
      filters[index].classList.add("filter-active");
      filters[index].firstElementChild.classList.add("text-highlight");
    }
    const icon = filters[index].lastElementChild;
    icon.classList.toggle("fa-caret-down");
    icon.classList.toggle("fa-caret-up");
  }
}
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
