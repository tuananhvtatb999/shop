{
  const sidebarNav = document.querySelector("#sidebar .nav");
  const navItems = sidebarNav.querySelectorAll(".nav-item");
  const tabs = document.querySelectorAll(".user-info");
  navItems.forEach((_) => _.addEventListener("click", handleNavSelect));
  function handleNavSelect(e) {
    if (e.target.classList.contains("nav-item")) {
      navItems.forEach((_) => _.classList.remove("active"));
      const navChildItems = e.target?.querySelectorAll(".nav-child-item");
      e.target.classList.add("active");
      if (navChildItems) {
        navChildItems.forEach((_) => _.classList.remove("active"));
        navChildItems[0]?.classList.add("active");
      }
    } else {
      const navChildItems = e.target.parentElement.querySelectorAll(".nav-child-item");
      navChildItems.forEach((_) => _.classList.remove("active"));
      e.target.classList.add("active");
    }
    selector = e.target.getAttribute("data-tab-select");
    tabs.forEach((_) => (_.style.display = "none"));
    document.querySelector(`#${selector}`).style.display = "block";
  }
}
{
  const tabList = document.querySelector(".tab-list");
  const tabItems = tabList.querySelectorAll(".tab-item");
  tabItems.forEach((_) => _.addEventListener("click", handleTabChange));
  function handleTabChange(e) {
    if (e.target.classList.contains("active")) return;
    tabItems.forEach((_) => _.classList.remove("active"));
    e.target.classList.add("active");
  }
}
{
  const eyeIcons = document.querySelectorAll(".form-group.password i");
  eyeIcons.forEach((_) => _.addEventListener("click", toggleInput));
  function toggleInput(e) {
    e.stopPropagation();
    console.log(e.target);
    if (e.target.classList.contains("fa-eye")) {
      e.target.classList.remove("fa-eye");
      e.target.classList.add("fa-eye-slash");
      e.target.previousElementSibling.type = "text";
    } else {
      e.target.classList.add("fa-eye");
      e.target.classList.remove("fa-eye-slash");
      e.target.previousElementSibling.type = "password";
    }
  }
}