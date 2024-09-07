//
print_debug("Smash 4 be like");
var day;
var hour = current_hour;
var minute = current_minute;
var actual_day = current_day;
var month = current_month;
var year = current_year;

moe_squr_bonk_type = 1; // 1, Wood

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

ambience_on = 1;
ambience_vol = get_local_setting(SET_MUSIC_VOL);
platform_select = 0;

fake_laststock = false;

mainintro_timer = 0;
last_stonk_intro_timer = 0;

print_debug(string(hour))

switch(current_weekday){
   case 0:
       day = "Sunday";
       print_debug("Weeklies Today");
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
       print_debug("RWL Today");
       with(obj_stage_article){
           if num == 2{
               visible = 1;
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

print("Today is " + string(current_month) + " " + string(current_day) + ", " + string(current_year));

if current_month == 9 and current_year == 2024{
    if current_day >= 2 and current_day < 9{
        // Tournament Shilling
        with(obj_stage_article){
           if num == 2{
               visible = 1;
           }
           if num == 5{
               visible = 1;
           }
        }
    }
} else {
    with(obj_stage_article){
       if num == 2{
           visible = 0;
       }
        if num == 5{
            visible = 0;
        }
    }
}

// Top plat appears every thirty seconds, lasts 9 seconds

print_debug("Today is: " + string(day));
print_debug("Time is: " + string(hour) + " : " + string(minute));