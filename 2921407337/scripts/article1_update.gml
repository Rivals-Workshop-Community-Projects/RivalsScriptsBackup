//Dspecial Lightning Cloud

#macro AS_INITALIZE 0
#macro AS_STARTUP 1
#macro AS_STRIKE 2
#macro AS_DISPERSE 3
#macro AS_ARTICLE_DESTROY 4

switch(state){
    case AS_INITALIZE:
        // Index 0
        image_index = 0;
        // Play Sound
        if(state_timer == 0){sound_play(asset_get( "sfx_absa_boltcloud" ),false,noone,1,.8);} // soundID,looping,panning,volume,pitch}
        // Exit Condition
        if(state_timer > 0){state = AS_STARTUP;state_timer = 0;} // soundID,looping,panning,volume,pitch}
        break;
        
    case AS_STARTUP:
        // Index 1-7 - 7 Animation Frames
        //Length = 27
        image_index = (state_timer / 4) + 1;
        
        // Tracer Line
        var temp_tracer_line_height = Detect_Ground(false);
        
        if(state_timer == 1){
        // Draw Tracers
        Draw_Segment(temp_tracer_line_height,player_id.hfx_dspecial_thunder_tracer,false);
        }
        /*
        print(temp_tracer_line_height);
        rectDraw(0, 0, room_width, room_height,c_white, c_dkgray, 1);//(x-50,y,x+50, y - temp_tracer_line_height,c_white,c_white,c_white,c_white,false);
        */
        
        // Exit Condition
        if(state_timer > 20){state = AS_STRIKE;state_timer = 0;} // soundID,looping,panning,volume,pitch}
        break;
        
    case AS_STRIKE:
        //Index 8-9
        // Length: 4
        image_index = (state_timer / 2) + 8;
       
        var temp_hitbox_height = Detect_Ground(true);

        
        if(state_timer == 1){
            // Segment Logic
            Draw_Segment(temp_hitbox_height,player_id.hfx_dspecial_thunder_middle,true);
        }
        
        if(state_timer == 3){
            // Generate hitboxes
            create_article_hitbox(AT_DSPECIAL, 2, x,y + 10); // Cloud hitbox
            if(thunder_hit_player_flag == false){create_article_hitbox(AT_DSPECIAL, 3, x,y + (temp_hitbox_height - 30));} // Ground hitbox
            segment_hitbox_ID = create_article_hitbox(AT_DSPECIAL, 4, x,y + (temp_hitbox_height/2)); // Segment hitbox
            sound_play(sound_get("thunder"),0,noone,1,1)
        }
        
        // Exit Condition
        if(state_timer > 3){state = AS_DISPERSE;state_timer = 0;} // soundID,looping,panning,volume,pitch}
        break;
        
    case AS_DISPERSE:
        //index 10-15
        // Length: 18
        image_index = (state_timer / 4) + 11;
        
        // Exit Condition
        if(state_timer > 16){state = AS_ARTICLE_DESTROY;state_timer = 0;} // soundID,looping,panning,volume,pitch}
        break;
        
    case AS_ARTICLE_DESTROY:
        //index 15
        // Length: 1
        image_index = 15;
        //print("article destroy");
        //sound_play(asset_get( "mfx_levelup" ),false,noone,.4,2); // soundID,looping,panning,volume,pitch
        instance_destroy(self);
        exit;
        break;
        
    default:
        break;
}
//print(state_timer);
state_timer++;
total_timer++;


#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;

#define collision_line_point(x1, y1, x2, y2, obj, prec, notme)
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
/*

This is a small post about a method for figuring out collision_line's "contact point" in GameMaker - in other words, obtaining not just whether there's something on the way, but also the nearest point on the nearest matching entity.

Most commonly asked about for "hitscan" weapons and laser-sights, but has many uses.

The approach is a classic use case for binary search - the built-in function won't return a contact point, but we can call it multiple times, cutting the segment to check in half on each iteration until we have pixel precision.

Therefore, on first iteration the algorithm checks if there's anything between source point and halfway through. If there is, the algorithm checks between source point and quarter way through. If there isn't, the algorithm checks between halfway through and three quarters way through. After log2(distance)+1 iterations, the exact nearest contact point and instance are discovered.

The code is straightforward, being a literal translation of algorithm outlined:

The script returns an array containing hit instance ID as element 0, hit point X as element 1, and hit point Y as element 2. If there are no matching instances between points, instance ID is set to noone while hit point XY are set to destination point.

If you add it to your project as collision_line_point, it can be used as following:

Another thing to note - if you are using GameMaker: Studio 1, enabling "fast collision system" in Global Game Settings helps the performance, as R-Trees are then utilized for spatial collision detection.

*/
// Credit: https://yal.cc/gamemaker-collision-line-point/
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;

#define Detect_Ground(use_player)
{
        //Detect Plat
        var detected_platform_detection_array = collision_line_point(x, y, x, room_height, asset_get("par_jumpthrough"), false, true) 
        var detected_platform_x = detected_platform_detection_array[1];
        var detected_platform_y = detected_platform_detection_array[2];
        //Detect Ground
        var detected_ground_detection_array = collision_line_point(x, y, x, room_height, asset_get("par_block"), false, true);
        var detected_ground_x = detected_ground_detection_array[1];
        var detected_ground_y = detected_ground_detection_array[2];
        //Detect Player (Only owner of article)
        var detected_player_detection_array = collision_line_point(x, y, x, room_height, player_id, false, true);
        var detected_player_x = detected_player_detection_array[1];
        var detected_player_y = detected_player_detection_array[2];
        // Determine Distance
        var distance_from_detected_plat = abs(detected_platform_y - y);
        var distance_from_detected_ground = abs(detected_ground_y - y);
        var distance_from_detected_player = abs(detected_player_y - y);
        //print("plat X: " + string(detected_platform_x) + "/ plat Y: " + string(detected_platform_y));
        //print("ground X: " + string(detected_ground_x ) + "/ ground Y: " + string(detected_ground_y));
        //print("Cloud X: " + string(x) + "/ Cloud Y: " + string(y) )
        //print("Distance Plat: " + string(distance_from_detected_plat) + "/ Distance Ground: " + string(distance_from_detected_ground));
         //if(place_meeting(x,y+1,asset_get("par_jumpthrough") || place_meeting(x,y+1,asset_get("par_block"))){print()
        // Select Platform or Ground or Player
        if(use_player == true){ // Use distance for player to prevent hitbox from continuing if player is detected
            if(distance_from_detected_player < distance_from_detected_plat)
            {
                var ground_height = distance_from_detected_player;
                thunder_hit_player_flag = true; // Set flag for later use
            }
            else if(distance_from_detected_plat < distance_from_detected_ground) {
                var ground_height = distance_from_detected_plat;
            }
            else{
                var ground_height = distance_from_detected_ground;
            }
        }
        else{ // Don't use player for calc, used for the tracer line
            if(distance_from_detected_plat < distance_from_detected_ground) {
                var ground_height = distance_from_detected_plat;
            }
            else{
                var ground_height = distance_from_detected_ground;
            }
        }
        return ground_height;
}

#define Draw_Segment(temp_hitbox_height,hfx_to_use,use_ground)
{
        // Segment Logic
        var mid_segment_sprite_height = 60;
        var num_of_segments = floor(temp_hitbox_height / mid_segment_sprite_height);
        
        //print("Num of segments: " + string(num_of_segments));
        var temp_x = x;
        var temp_y = y;
        var temp_thunder_hit_player_flag = thunder_hit_player_flag;
            with(player_id){
                set_hitbox_value(AT_DSPECIAL,4,HG_HEIGHT,temp_hitbox_height);
                for(var current_number = 1; current_number < num_of_segments; current_number++){
                    spawn_hit_fx(temp_x,temp_y + (current_number * 60), hfx_to_use);
                    //print("current number:" + string(current_number))
                }
                // Draw Ground Strike Thunder
                if(use_ground == true && temp_thunder_hit_player_flag == false){
                spawn_hit_fx(temp_x,temp_y + (temp_hitbox_height), hfx_dspecial_thunder_bottom);
                }
            }
}

#define rectDraw(x1, y1, x2, y2, color, out_color, alpha)

draw_set_alpha(argument[6]);
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[5], argument[5], argument[5], argument[5], false);
draw_set_alpha(argument[6]*1.5);
draw_rectangle_color(argument[0]+2, argument[1]+2, argument[2]-2, argument[3]-2, argument[4], argument[4], argument[4], argument[4], false);
draw_set_alpha(1);