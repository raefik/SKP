//real time clock
function realTimeClock(element)
    {
    var currentTime = new Date ();
    var currentHours = currentTime.getHours ( );
    var currentMinutes = currentTime.getMinutes ( );
    var currentSeconds = currentTime.getSeconds ( );

    // Pad the minutes and seconds with leading zeros, if required
    currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
    currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

    // Choose either "AM" or "PM" as appropriate
    var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM";

    // Convert the hours component to 12-hour format if needed
    currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

    // Convert an hours component of "0" to "12"
    currentHours = ( currentHours == 0 ) ? 12 : currentHours;

    // Compose the string for display
    var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;
    
    
    element.innerHTML = currentTimeString;
 }

//count duration time
 function TimeCounter(date,element){
    date = date.replace(/-/g, '/');
    var date1 = new Date(date);
    var date2 = new Date();
    var sec=(date2.getTime()/1000.0)-(date1.getTime()/1000.0);

    var t=parseInt(sec);
    var years;
    var months;
    var days;

    if(t>31556926){
        years=parseInt(t/31556926);
        t=t-(years*31556926);
    }
    if(t>2629743){
        months=parseInt(t/2629743);
        t=t-(months*2629743);
    }
    if(t>86400){
        days=parseInt(t/86400);
        t=t-(days*86400);
    }

    var hours=parseInt(t/3600);
        t=t-(hours*3600);
    var minutes=parseInt(t/60);
        t=t-(minutes*60);
    var content="";

    if(years){
        content+=years+" years ago";
    }
    else if(months){
        content+=months+" months ago";
    }
    else if(days){
        content+=days+" days ago";
    }
    else if(hours){
        content+=hours+" hours ago";
    }
    else if(minutes){
        content+=minutes+" minutes ago";
    }else if(t<10){
        content+=" just now";
    }else{
        content+=t+" seconds ago";
    }
    element.innerHTML = content;
}

function getDurationTime(date,element,timer){
    setInterval(function(){
        TimeCounter(date,element)
    },  timer);
}

function updateAllDurations(elements,timer){
     setInterval(function(){
        for(var i=0;i<elements.length;i++){  
            var date = elements[i].getAttribute("date");      
            TimeCounter(date,elements[i]);
        }

    },  timer);
}

function initAllDurations(elements){
        for(var i=0;i<elements.length;i++){  
            var date = elements[i].getAttribute("date");      
            TimeCounter(date,elements[i]);
        }
}

function AutoUpdateDisplayTime(element,timer){
    initAllDurations(element);
    updateAllDurations(element,timer);
}


function clockRealTime(element){
    setInterval(function(){
        clockRT(element)
    },  1000);
}

function clockRT(element){

    var currentTime = new Date ();
    var currentHours = currentTime.getHours ( );
    var currentMinutes = currentTime.getMinutes ( );
    var currentSeconds = currentTime.getSeconds ( );

    // Pad the minutes and seconds with leading zeros, if required
    currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
    currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

    // Choose either "AM" or "PM" as appropriate
    //var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM";

    // Convert the hours component to 12-hour format if needed
    //currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours;

    // Convert an hours component of "0" to "12"
    currentHours = ( currentHours == 0 ) ? 12 : currentHours;
    titik = ":"
    if(currentSeconds%2==0){
        titik = "<font style='color:#0090d9;'>:</font>"
    }
    // Compose the string for display
    var currentTimeString = currentHours + titik + currentMinutes

    element[0].innerHTML = currentTimeString;
}