image_speed = 0.333;

// hopefully this part is called AFTER the article creation in update.gml
article_parried = false;
crab_box = noone; //test
state_timer = -99;
crab_timer = 0;
turtle_timer = 0;
state = "no_state";

// unused for now..
// switch (type){
//     case "crab":
        
//         break;
//     case "plane":
//         break;
//     case "turtle":
            // state = "idle";
            // state_timer = 120;
//         break;
//     default:
//         player_id.hsp = 80;
//         break;
// }
// use or maybe not
hitbox_time_elapsed = 0; //time since the article hitbox has hit the opponent
