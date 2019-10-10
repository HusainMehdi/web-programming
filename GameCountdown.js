//This function gets the current time remaining by getting the date and checking how many minutes and seconds are left in the countdown.
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

//This function is what triggers the countdown by setting up the variables for time in the clock alongside the clock itself.
//It also passes the endtime variable into the updateClock function.
function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  //The clock is updating itself using the getTimeRemaining function to place the values of the seconds and minutes variables
  //into the HTML so it can continously update itself - once the total time reaches 0 the timeInterval variable is cleared.
  function updateClock() {
    var t = getTimeRemaining(endtime);

    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  //This part updates the clock every 1000 milliseconds, using the timeInterval variable to to this.
  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

// if there's a cookie with the name myClock, use that value as the deadline
// (document.cookie && document.cookie.match('myClock')) {
  // get deadline value from cookie
  // deadline = document.cookie.match(/(^|;)myClock=([^;]+)/)[2];
//

// otherwise, set a deadline 10 minutes from now and 
// save it in a cookie with that name
//else {
  // create deadline 10 minutes from now
 // var timeInMinutes = 5;
 // var currentTime = Date.parse(new Date());
 // var deadline = new Date(currentTime + timeInMinutes * 60 * 1000);

  // store deadline in cookie for future reference
 // document.cookie = 'myClock=' + deadline + '; path=/; domain=.placeholder.com';
}

//This part is what calls the initializeClock function on the site so that the timer will start counting down.
initializeClock('clockdiv', deadline);
