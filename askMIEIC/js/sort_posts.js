let postForm = document.querySelector('#posts form');
postForm.addEventListener('submit', sortPosts);

function encodeForAjax(data) {
  return Object.keys(data).map(function(k){
    return encodeURIComponent(k) + '=' + encodeURIComponent(data[k])
  }).join('&');
}

function sortPosts(event) {
  let radioButtons = document.getElementsByName('sort');
  let option = '';
  for (let i = 0; i < radioButtons.length; i++) {
    if (radioButtons[i].checked)
      option = radioButtons[i].value;
  }
  let year = document.querySelector('#posts input[name=year]').value;

  let request = new XMLHttpRequest();
  request.addEventListener('load', receivePosts);
  request.open('POST', '../api/api_sort_posts.php', true);
  request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  request.send(encodeForAjax({option: option, year: year}));

  event.preventDefault();
}

function receivePosts(event) {
  let section = document.querySelector('#posts');
  let posts = JSON.parse(this.responseText);

  let request = new XMLHttpRequest();
  request.open('GET', '../api/api_get_session.php', true);
  request.addEventListener('load', function () {
    let csrf = JSON.parse(this.responseText).csrf;
    let $counter = 1;

    posts.forEach(element => {
      let post = document.createElement('article');
      let oldPost = document.querySelector('article:nth-of-type('+$counter+')');
      post.classList.add('post');
      post.innerHTML = 
      '<a href="../actions/delete_post.php?post=' + element.id + '&csrf=' + csrf + '"><i class="fas fa-times-circle"></i></a>&nbsp' +
      '<span class="subject">' + element.subject + '</span>&nbsp' +
      '<span class="user"><a href="../pages/profile.php?user=' + element.creator + '&csrf=' + csrf + '">' + element.name + '</a></span>' +
      '<span class="date">' + element.datetime + '</span>' +
      '&nbsp<a href="../actions/vote_on_post.php?post='+ element.id + '&type=like&csrf=' + csrf + '"><i class="fas fa-arrow-circle-up"></i></a>' +
      '&nbsp<a href="../actions/vote_on_post.php?post='+ element.id + '&type=dislike&csrf=' + csrf + '"><i class="fas fa-arrow-circle-down"></i></a>&nbsp' + (element.points>0?'+'+element.points:element.points) +
      '<header><h2>' + element.title + '</h2></header>' +
      '<span class="comment_num"><a href="../pages/single_post.php?post=' + element.id + '&csrf=' + csrf + '"><i class="far fa-comment-alt"></i>&nbsp' + element.comment_num + '</a></span>'
      section.replaceChild(post, oldPost);
      $counter++;
    });
  })
  request.send();
}
