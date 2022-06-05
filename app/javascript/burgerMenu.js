window.addEventListener("turbolinks:load", (_event) => {
  let burgerButton = document.querySelector(".burger-button");
  let burgerMenu = document.querySelector(".burger-menu");
  let visible = false;

  burgerButton.addEventListener("click", () => {
    visible = !visible;
    toggling(visible);
  });

  function toggling(visible) {
    if (visible) {
      burgerMenu.style.display = "flex";
    } else {
      burgerMenu.style.display = "none";
    }
  }
});
