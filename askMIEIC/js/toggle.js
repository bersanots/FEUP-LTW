function toggleAddPost() {
    let section = document.getElementById("add_post");
    if (section.style.display === "none") {
      section.style.display = "block";
    } else {
      section.style.display = "none";
    }
}

function toggleDeleteAccount() {
  let section = document.getElementById("delete_account");
  if (section.style.display === "none") {
    section.style.display = "block";
  } else {
    section.style.display = "none";
  }
}