<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
p {
  text-align: center;
  font-family: Arial;
  font-size: 60px;
  margin-top: 0px;
}
</style>
</head>
<body>

<p id="GameCountdown"></p>

<script>
var countDownDate = new Date("Oct 3, 2019 13:46:00").getTime();

var x = setInterval(function() {

  var now = new Date().getTime();
    
  var distance = countDownDate - now;
    
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  document.getElementById("GameCountdown").innerHTML = minutes + "m " + seconds + "s ";
    
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("GameCountdown").innerHTML = "Place a square";
  }
}, 1000);
</script>

</body>
</html>
