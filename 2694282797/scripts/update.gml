// ------------------- a --------------------------------





with(pHitBox) {
    if orig_player == other.player {
        if (attack == AT_NSPECIAL && hbox_num == 1) or (attack == AT_DSPECIAL && hbox_num == 2)  {
            if !instance_exists(other.present_id) {
                other.present_id = self;
            } else {
                var comparepres = other.present_id;
                if point_distance(x,y,other.x,other.y) < point_distance(comparepres.x,comparepres.y,other.x,other.y) && point_distance(x,y,other.x,other.y) != point_distance(comparepres.x,comparepres.y,other.x,other.y) && !other.holding_present {
                    other.present_id = self;
                }
            }
        }
    }
}

with(obj_article1) { //small correction code cause when the tree projectile lands
    if player_id == other { //for a single frame it counts as there not being any presents, if the tree is close enough
        if treeproj_spawntimer == 1 {
            with(pHitBox) {
                if player_id == other.player_id {
                    if (attack == AT_NSPECIAL && hbox_num == 1) {
                        player_id.present_id = self;
                    }
                }
            }
            treeproj_spawntimer -= 1;
        }
    }
}
if !instance_exists(present_id) {
    present_id = noone;
    if (present_should_exist) { // means it got destroyed, thus goes into cooldown
        move_cooldown[AT_NSPECIAL] = 140;
        present_should_exist = false;
    }
}

do_a_glide_toss();

//rainbow stuff
if get_player_color(player) == 14 { //marisa alt rainbow ice
    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range
    color_rgb=make_color_rgb(64, 248, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
    hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    set_color_profile_slot(14, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot(7,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
    init_shader();
}

// ------------------- a --------------------------------
update_comp_hit_fx();

#define update_comp_hit_fx
//function updates comp_vfx_array
if comp_vfx_array != null {
    for(var ao=0;ao<array_length(comp_vfx_array);ao++) {
        if (comp_vfx_array[ao][0].cur_timer > comp_vfx_array[ao][0].max_timer) { //if effect is over, skip
            continue;
        }//otherwise go on
        comp_vfx_array[ao][0].cur_timer += 1; //update effect timer
        var check_timer = comp_vfx_array[ao][0].cur_timer; //store in a var for easier access
        for (var ae=1; ae<array_length(comp_vfx_array[ao]);ae++) { //check effect timers
            if (check_timer == comp_vfx_array[ao][ae].delay_timer) { //if timer is the spawn time, spawn it
                var new_fx = spawn_hit_fx(comp_vfx_array[ao][ae].x,comp_vfx_array[ao][ae].y,comp_vfx_array[ao][ae].index);
                new_fx.draw_angle = comp_vfx_array[ao][ae].rotation;
                new_fx.depth = depth+1+comp_vfx_array[ao][ae].depth; //so it appears in front of hit players
                new_fx.spr_dir = comp_vfx_array[ao][ae].spr_dir; // set it's spr dir, in case it should face a specific direction
            }
        }
    }
}

#define spawn_comp_hit_fx
//function takes in an array that contains smaller arrays with the vfx information
// list formatting: [ [x, y, delay_time, index, rotation, depth, force_dir], ..]
var fx_list = argument0;
vfx_created = false;

//temporary array
var temp_array = [{cur_timer: -1, max_timer: 0}];  //first value is an array that constains current and max timer, to detect when to spawn vfx and when to stop and be replaced
                            //later values are the fx
var player_dir = spr_dir;

//first take the arrays from the function, set them into objects, and store them in an array
for (var i=0;i < array_length(fx_list);i++) {
    //create new fx part tracker and add to temp array
    var new_fx_part = {
        x: fx_list[i][0],
        y: fx_list[i][1],
        delay_timer: fx_list[i][2],
        index: fx_list[i][3],
        rotation: fx_list[i][4],
        depth: fx_list[i][5],
        spr_dir: fx_list[i][6] == 0 ? player_dir : fx_list[i][6]
    };
    array_push(temp_array, new_fx_part);
    
    //change max timer if delay is bigger than it
    if (new_fx_part.delay_timer > temp_array[0].max_timer) {
        temp_array[0].max_timer = new_fx_part.delay_timer;
    }
}

//add temp array to final array
for (var e=0;e<array_length(comp_vfx_array);e++) {
    if (vfx_created) { //stop process if effect is created
        break;
    } 
    if (comp_vfx_array[e][0].cur_timer > comp_vfx_array[e][0].max_timer) { //replace finished effects
        comp_vfx_array[e] = temp_array;
        vfx_created = true;
    } else if (e == array_length(comp_vfx_array)-1) { //otherwise add it in the end of the array
        array_push(comp_vfx_array, temp_array);
        vfx_created = true;
    }
}

#define do_a_glide_toss
//a
if ((state == PS_ROLL_BACKWARD) or (state == PS_ROLL_FORWARD) or (state == PS_AIR_DODGE)) && special_pressed && holding_present {
    set_attack(AT_NSPECIAL);
    if invincible && !initial_invince {
        invince_timer = 0;
    }
    hsp *= toss_boost;
    vsp *= toss_boost;
    if free {
        has_airdodge = false;
    }
    glide_tossing = true;
}