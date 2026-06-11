document.querySelectorAll(".pf-project-list article").forEach((projectCard) => {
  projectCard.addEventListener("pointermove", (event) => {
    const cardBox = projectCard.getBoundingClientRect();
    const mouseX = event.clientX - cardBox.left;
    const mouseY = event.clientY - cardBox.top;

    projectCard.style.setProperty("--mouse-x", `${mouseX}px`);
    projectCard.style.setProperty("--mouse-y", `${mouseY}px`);
  });
});
