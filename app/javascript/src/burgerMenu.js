const burgerButton = document.querySelector(".burger-button");
const burgerMenu = document.querySelector(".burger-menu");
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
