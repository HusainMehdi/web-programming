
export default class Opponent{
    constructor(playerData, radius, color) {
        this.x = playerData.x;
        this.y = playerData.y;
        this.username = playerData.name;
        this.color = color;
        this.radius = radius;
    }

    draw(canvas) {
        console.log(this.username + " : " + this.x + " : " + this.y)
        var ctx = canvas.getContext("2d");
        ctx.beginPath();
        //circle
        ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2);
        ctx.fillStyle = this.color;
        ctx.fill();
        ctx.closePath();
    }
}