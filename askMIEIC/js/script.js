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
  let comments = JSON.parse(this.responseText)
console.log(comments)
  comments.forEach(element => {
    console.log(element)
    let comment = document.createElement('article');
    comment.classList.add('comment');
    comment.innerHTML = '<span class="user">' +
    element.name + '</span><span class="date">' +
    element.date + '</span><p>' +
    element.text + '</p>';

    section.insertBefore(comment, commentForm);

    document.getElementsByName('text').forEach(element => {
      element.value = '';
    });
  });
}
