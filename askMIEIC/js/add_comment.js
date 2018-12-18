let commentForm = document.querySelector('#comments form');
commentForm.addEventListener('submit', submitComment);

function encodeForAjax(data) {
  return Object.keys(data).map(function(k){
    return encodeURIComponent(k) + '=' + encodeURIComponent(data[k])
  }).join('&');
}

function submitComment(event) {
  let post = document.querySelector('#comments input[name=post]').value;
  let user = document.querySelector('#comments input[name=user]').value;
  let text = document.querySelector('#comments textarea[name=text]').value;
  let comment_id = document.querySelector('#comments .comment') != null ? document.querySelector('#comments .comment:last-of-type span.id').textContent : -1;

  let request = new XMLHttpRequest();
  request.addEventListener('load', receiveComments);
  request.open('POST', '../api/api_add_comment.php', true);
  request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  request.send(encodeForAjax({post: post, user: user, text: text, comment_id: comment_id}));

  event.preventDefault();
}

function receiveComments(event) {
  let section = document.querySelector('#comments');
  let comments = JSON.parse(this.responseText);

  let request = new XMLHttpRequest();
  request.open('GET', '../api/api_get_session.php', true);
  request.addEventListener('load', function () {
    let csrf = JSON.parse(this.responseText).csrf;

    comments.forEach(element => {
      let comment = document.createElement('article');
      comment.classList.add('comment');
      comment.innerHTML = 
      '<a href="../actions/delete_comment.php?comment=' + element.id + '&csrf=' + csrf + '"><i class="fas fa-times-circle"></i></a>&nbsp' +
      '<span class="id" style="display:none">' + element.id + '</span>' +
      '<span class="user"><a href="../pages/profile.php?user=' + element.user + '&csrf=' + csrf + '">' + element.name + '</a></span>' +
      '<span class="date">' + element.datetime + '</span>' +
      '&nbsp<a href="../actions/vote_on_comment.php?comment='+ element.id + '&type=like&csrf=' + csrf + '"><i class="fas fa-arrow-circle-up"></i></a>' +
      '&nbsp<a href="../actions/vote_on_comment.php?comment='+ element.id + '&type=dislike&csrf=' + csrf + '"><i class="fas fa-arrow-circle-down"></i></a>&nbsp' + element.points +
      '<p>' + element.text + '</p>';
      section.insertBefore(comment, commentForm);
      document.getElementsByName('text').forEach(element => {
        element.value = '';
      });
    });
  })
  request.send();
}
