

function postLike(userId, postId, el) {

    var data = "userId=" + encodeURIComponent(userId) + "&postId=" + encodeURIComponent(postId);

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "http://127.0.0.1:3000/" , true);// Открываем асинхронное соединение
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");// Отправляем кодировку
    xhr.send(data); // Отправляем POST-запрос

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {

            if(xhr.status == 200) {

                el.src = '/images/liked.svg';
                el.classList.add('liked')

            }

        }

    }

}

function deleteLike(userId, postId, el) {

    var data = "userId=" + encodeURIComponent(userId) + "&postId=" + encodeURIComponent(postId);

    var xhr = new XMLHttpRequest();
    xhr.open("DELETE", "http://127.0.0.1:3000/" , true);// Открываем асинхронное соединение
    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");// Отправляем кодировку
    xhr.send(data);

    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {

            if(xhr.status == 200) {

                el.src = '/images/like.svg';
                el.classList.remove('liked')

            }

        }

    }

}
 

var a = document.querySelectorAll('.like_pic');
console.log(a);

for (let el of a) {
    console.log(el);
    el.onclick = function() {
        if (this.classList.contains('liked')) {
            deleteLike(8, Number(this.id.slice(10)), el)
        } else {
            postLike(8, Number(this.id.slice(10)), el)
        }
        
        //предотвращаем переход по ссылке href
        return false;
    }
}
