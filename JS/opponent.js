export default class Opponent {
    constructor(playerData, radius) {
        this.x = playerData.x;
        this.y = playerData.y;
        this.username = playerData.username;
        // this.dx = speed;
        // this.dy = speed;
        this.radius = radius;
    }

    draw(canvas) {
        console.log(this.username+" : "+this.x+" : "+this.y )
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = "#0095DD";
        ctx.fill();
        ctx.closePath();

        // this.x += this.dx;
        // this.y += this.dy;

        // if (canvas.width - this.radius < this.x || this.x < this.radius)
        //     this.dx *= -1;
        // if (canvas.height - this.radius < this.y || this.y < this.radius)
        //     this.dy *= -1;
    }

//     getStatus(){
//         var params = "&username=" + username + "&password=" + password;
//         var xhr = new XMLHttpRequest();
//         xhr.open('POST', 'PHP/retrieveUserAccount.php', true);
//         //set content type we're posting
//         xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
//         xhr.onload = function () {
//             if (this.status == 200) {
//                 var userAccount = JSON.parse(this.responseText);
//                 console.log(userAccount);
//                 if (userAccount.length == 0) {
//                     document.querySelector('#loginStatusLabel').innerHTML = "Invalid username or password";
//                 }
//                 else
//                 console.log(userAccount[0])
//                 startGame(userAccount[0]);
//             }
//         }
//         xhr.send(params);
//     }
}