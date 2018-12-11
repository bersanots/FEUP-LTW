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

  for (let i = 0; i < comments.length; i++) {
    let comment = document.createElement('post');
    comment.classList.add('comment');

    comment.innerHTML = '<span class="post">' +
    comments[i].post + '</span><span class="user">' +
    comments[i].user + '</span><span class="date">' +
    new Date(comments[i].date * 1000).toLocaleDateString() + ' '  +
    new Date(comments[i].date * 1000).toLocaleTimeString() + '</span><p>' +
    comments[i].text + '</p>';

    section.insertBefore(comment, commentForm);
  }
}
