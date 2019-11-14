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

//This part is what calls the initializeClock function on the site so that the timer will start counting down.
initializeClock('clockdiv');
