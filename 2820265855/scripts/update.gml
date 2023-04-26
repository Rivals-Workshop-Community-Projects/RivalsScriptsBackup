swordfollow.x = lerp(swordfollow.x, x-0*spr_dir, 0.3);
swordfollow.y = lerp(swordfollow.y, y-50, 0.3);

if(state != PS_SPAWN){
    idle_anim_speed = .1;
}

//In Update:
if get_player_color(player) = 18 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();
}

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 1, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

//In Update: (for each slot)
color_rgb=make_color_rgb( 255, 0, 0 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 18, 4, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

if (dspecial_sfx >= 1){
    dspecial_sfx--
}
if (dspecial_sfx <= 0){
    dspecial_sfx = 0
}

with(oPlayer){
    if(!clone){
        if(blaze_uspecial_grab == other){
            if(hitpause){
                var hsped = lengthdir_x(point_distance(x,y,other.x,other.y-50)/8,point_direction(x,y,other.x,other.y-50));
        		var vsped = lengthdir_y(point_distance(x,y,other.x,other.y-50)/8,point_direction(x,y,other.x,other.y-50));
        		x += hsped;
        		y += vsped;
            }
        }
        if(blaze_fspecial_grab == other){
            if(hitpause){
                var hsped = lengthdir_x(point_distance(x,y,other.x + 60 * other.spr_dir,other.y-20)/5,point_direction(x,y,other.x + 60 * other.spr_dir,other.y-20));
        		var vsped = lengthdir_y(point_distance(x,y,other.x + 60 * other.spr_dir,other.y-20)/5,point_direction(x,y,other.x + 60 * other.spr_dir,other.y-20));
        		x += hsped;
        		y += vsped;
            }
        }
    }
    if(hit_player_obj != other){
        if(blaze_uspecial_grab == other){
             blaze_uspecial_grab = noone;
        }        
        if(blaze_fspecial_grab == other){
             blaze_fspecial_grab = noone;
        }
    }
}

if(state != PS_ATTACK_GROUND){
    if(instance_exists(shield_hbox)){
        instance_destroy(shield_hbox);
    }
    if(!instance_exists(shield_hbox)){
        shield_hbox = noone;
    }
}

if(fspecial_cooldown > 0){
    fspecial_cooldown--;
}

if(!free){
    aerial_fspecial = false;
}

if(state == PS_WALL_JUMP || state == PS_RESPAWN || state_cat == SC_HITSTUN){
    aerial_fspecial = false;
    fspecial_cooldown = 0;
}

if(fspecial_cooldown > 0 || aerial_fspecial){
    move_cooldown[AT_FSPECIAL] = 2;
}

if(free || state == PS_JUMPSQUAT){
    move_cooldown[AT_EXTRA_2] = 2;
}

if (powerpoints <= 63){
  powerpoints_regen++;
  if (powerpoints_regen == 30 + has_rune ("O") * -15){
    powerpoints_regen = 0;
    powerpoints += 1;
  }
}

if (powerpoints <= 0){
powerpoints = 0
}

if (trigger_delay > 0){
trigger_delay--; //countdown for delay
}
else if (trigger_delay == 0){
create_hitbox( AT_EXTRA_1, 1, trigger_x, trigger_y ); //create new hitbox after delay
trigger_delay = -1; //to make sure it doesnt keep triggering
}

if (attack == AT_JAB or attack == AT_UTILT or attack == AT_FSTRONG or attack == AT_DSTRONG)
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
  swordfloat = 1
}
else if (attack == AT_JAB or attack == AT_UTILT or attack == AT_FSTRONG or attack == AT_DSTRONG){
  swordfloat = 0
}

if (state == PS_ROLL_FORWARD)
{
    // create afterimage
       if (get_gameplay_time()%5==0)
        afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
 }

if (state == PS_ROLL_BACKWARD)
{
    // create afterimage
       if (get_gameplay_time()%5==0)
        afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
 }

if (state == PS_AIR_DODGE)
{
    // create afterimage
       if (get_gameplay_time()%5==0)
        afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:20};
 }


// update afterimage array
var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;

if(variable_instance_exists(id,"diag"))
{
//Change their name whenever
    diag_name = "Blaze"
//  ADDING REGULAR DIALOGUE

    //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
    diagchoice = [
    "I've come so far to get here, so I will not falter!",
    "I wish Dorian could help me here, but he can't travel through dimensions like I can. I'll have to make quick work of you myself!",
    "Seems like battles here aren't done in turns..."
    "Let's dance!"
    "Where's my HP bar?"
    "What, never seen some dude just jump out of a portal before? Wow, you need to get out more."
    "You're in my way! Do you have a death wish or something?"
    "An enemy draws near!"
    "Drip"]

//  Specific Character Interactions

//  Regular dialogue
    if(otherUrl == "2964956057" && diag != "2964956057") //Change the url into a specific character's
    {
        diag = "Maybe I'll pick a flower for Iris today. I feel she'll like thi- OH CRAP!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

        if(otherUrl == "2904498757" && diag != "2904498757") //Change the url into a specific character's
    {
        diag = "Please let me try your pizza! I'll fight you for it, if I have to!";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
        if(otherUrl == "2786885695" && diag != "2786885695") //Change the url into a specific character's
    {
        diag = "Why can't I blink?";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

        if(otherUrl == "2962798543" && diag != "2962798543") //Change the url into a specific character's
    {
        diag = "What a strange Dragon...";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }
    
        if(otherUrl == "2820265855" && diag != "2820265855") //Change the url into a specific character's
    {
        diag = "It's... ME?!.";
        diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
    }

    
//  NRS/3-Part dialogue
    if(otherUrl == 2932444130) //Change the url into a specific character's
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Emmanuel, for the last time, I am NOT a demon.",
                "Silence. The aura you emanate is unmistakable. I won't be fooled.",
                "Guess I'll have to knock some sense into that fake skull of yours!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
}