grabbed = document.getElementById('two');
grabbed = grabbed.innerHTML
console.log(grabbed)




# // set the date we're counting down to
target_date = new Date(year, month, day, hour, minute, second, millisecond);
 
 
# // get tag element
countdown =  document.getElementById("countdown");
days_span = document.createElement("SPAN");
days_span.className = 'days';
countdown.appendChild(days_span);
hours_span = document.createElement("SPAN");
hours_span.className = 'hours';
countdown.appendChild(hours_span);
minutes_span = document.createElement("SPAN");
minutes_span.className = 'minutes';
countdown.appendChild(minutes_span);
secs_span = document.createElement("SPAN");
secs_span.className = 'secs';
countdown.appendChild(secs_span);
 
# // update the tag with id "countdown" every 1 second
setInterval ->
 
    # // find the amount of "seconds" between now and target
    current_date = new Date().getTime();
    seconds_left = (target_date - current_date) / 1000;
 
    # // do some time calculations
    days = parseInt(seconds_left / 86400);
    seconds_left = seconds_left % 86400;
     
    hours = parseInt(seconds_left / 3600);
    seconds_left = seconds_left % 3600;
     
    minutes = parseInt(seconds_left / 60);
    seconds = parseInt(seconds_left % 60);
     
    # // format countdown string + set tag value.
  
    days_span.innerHTML = '<span>' + days + '</span>' + 'Days';
    hours_span.innerHTML = '<span>' + hours + '</span>' + 'Hours';
    minutes_span.innerHTML = '<span>' + minutes + '</span>' + 'Minutes';
    secs_span.innerHTML = '<span>' + seconds + '</span>' + 'Seconds';
    
  
    # //countdown.innerHTML = days + "d, " + hours + "h, "
   # // + minutes + "m, " + seconds + "s";  
 
, 1000