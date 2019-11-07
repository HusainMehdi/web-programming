function getTimeRemaining(endtime) {
  var t = Date.parse(endtime) - Date.parse(new Date());
  var seconds = Math.floor((t / 1000) % 60);
  var minutes = Math.floor((t / 1000 / 60) % 60);
  return {
    'total': t,
    'minutes': minutes,
    'seconds': seconds
  };
}

function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  updateClock();
         document.getElementById("demo").innerHTML = --c;
         var timeinterval = setInterval(updateClock, 1000);
}

// if there's a cookie with the name myClock, use that value as the deadline
if (document.cookie && document.cookie.match('myClock')) {
  // get deadline value from cookie
  var deadline = document.cookie.match(/(^|;)myClock=([^;]+)/)[2];
}

// otherwise, set a deadline 10 minutes from now and 
// save it in a cookie with that name
else {
  // create deadline 10 minutes from now
  var timeInMinutes = 5;
  var currentTime = Date.parse(new Date());
  var deadline = new Date(currentTime + timeInMinutes * 60 * 1000);

  // store deadline in cookie for future reference
  document.cookie = 'myClock=' + deadline + '; path=/; domain=.placeholder.com';
}
initializeClock('clockdiv', deadline);
<button onclick="initializeClock(); document.getElementById('demo').innerHTML='5';">Start counter</button>
