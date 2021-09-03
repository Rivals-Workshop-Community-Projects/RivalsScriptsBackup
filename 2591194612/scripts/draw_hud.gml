//

/*
draw_debug_text(450,50,
getWeekDay(currWeD) + ", " +
getString(currDay) + "." + getString(currMon) + "." + getString(currYea) + " " +
getString(currHou) + ":" + getString(currMin) + ":" + getString(floor(currSec)));
*/

var xx = 776;//782;
var yy = 10;//466;
var alpha = 1; //TODO: fade HUD if a player behind? or off stage + below stage
draw_sprite_ext(sprite_get("clockBg"), (currWeD > 5 || currWeD < 1) + !isAm * 2 + blink * 4, xx, yy, 2, 2, 0, c_white, alpha);
draw_sprite_ext(sprite_get("clockWeek"), currWeD, xx, yy, 2, 2, 0, c_white, alpha);

if(currDay > 9)
    draw_sprite_ext(sprite_get("clockNumbersBig"), floor(currDay*0.1), xx+31, yy+12, 2, 2, 0, c_white, alpha);
draw_sprite_ext(sprite_get("clockNumbersBig"), currDay%10, xx+47, yy+12, 2, 2, 0, c_white, alpha);

if(currMon > 9)
{
    draw_sprite_ext(sprite_get("clockNumbersBig"), floor(currMon*0.1), xx+83, yy+12, 2, 2, 0, c_white, alpha);
    draw_sprite_ext(sprite_get("clockNumbersBig"), currMon%10, xx+97, yy+12, 2, 2, 0, c_white, alpha);
}
else
    draw_sprite_ext(sprite_get("clockNumbersBig"), currMon, xx+83, yy+12, 2, 2, 0, c_white, alpha);
    
if(currHouAmPm > 9)
    draw_sprite_ext(sprite_get("clockNumbersSmall"), floor(currHouAmPm*0.1), xx+28, yy+42, 2, 2, 0, c_white, alpha);
draw_sprite_ext(sprite_get("clockNumbersSmall"), currHouAmPm%10, xx+42, yy+42, 2, 2, 0, c_white, alpha);

draw_sprite_ext(sprite_get("clockNumbersSmall"), floor(currMin*0.1), xx+72, yy+42, 2, 2, 0, c_white, alpha);
draw_sprite_ext(sprite_get("clockNumbersSmall"), currMin%10, xx+88, yy+42, 2, 2, 0, c_white, alpha);

//TODO: check all kinds of times

#define getString(val)
{
    if(val < 10)
        return "0"+string(val);
    return string(val);
}

#define getWeekDay(val)
{
    return string(weekDays[val]);
}