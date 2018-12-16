function toggleAddPost() {
    let section = document.getElementById("add_post");
    let text = document.getElementsByClassName("new_post_btn")[0];
    if (section.style.display === "none") {
      section.style.display = "block";
      text.innerHTML = "Cancel";
    } else {
      section.style.display = "none";
      text.innerHTML = "Add New Post";
    }
}