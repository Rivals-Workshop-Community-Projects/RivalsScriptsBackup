//
print_debug("Smash 4 be like");
var day;
var hour = current_hour;
var minute = current_minute;

if get_match_setting(SET_PRACTICE) == 1{
   with(obj_stage_article){
       if num == 4{
           x = get_marker_x(3);
           y = get_marker_y(3);
       }
   }
} else {
   with(obj_stage_article){
       if num == 4{
           visible = false;
           x = 0;
           y = 0;
       }
   }
}

play_sound = 0;
seagull_timer = 60;
ambience_on = 2;
ambience_vol = 1;
platform_select = 0;

print_debug(string(hour))

switch(current_weekday){
   case 0:
       day = "Sunday";
       print("Weeklies Today");
       with(obj_stage_article){
           if num == 2{
               visible = 1;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 1:
       day = "Monday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 2:
       day = "Tuesday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 3:
       day = "Wednesday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 4:
       day = "Thursday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 5:
       day = "Friday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
           if num == 3{
               visible = 0;
           }
       }
       break;
   case 6:
       day = "Saturday";
       with(obj_stage_article){
           if num == 2{
               visible = 0;
           }
       }
       if (hour >= 20 and minute >= 0) and (hour <= 23 and minute < 59){
           // Liz Appears
           with(obj_stage_article){
               if num == 3{
                   visible = 1;
               }
           }
       } else {
           with(obj_stage_article){
               if num == 3{
                   visible = 0;
               }
           }
       }
       //print("Blueberry Bout");
       break;
}

print_debug("Today is: " + string(day));
print_debug("Time is: " + string(hour) + " : " + string(minute));