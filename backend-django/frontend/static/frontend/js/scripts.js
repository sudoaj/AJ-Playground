document.addEventListener("DOMContentLoaded", function () {
    const sections = document.querySelectorAll(".section");
    const navLinks = document.querySelectorAll(".nav-links a");

    function showSection(sectionId) {
      sections.forEach((sec) => sec.classList.remove("active"));
      document.getElementById(sectionId).classList.add("active");
    }

    navLinks.forEach((link) => {
      link.addEventListener("click", function (event) {
        event.preventDefault();
        const section = this.getAttribute("data-section");
        showSection(section);
      });
    });

    // Show the home section by default
    showSection("home");
  });