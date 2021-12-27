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



#define do_a_glide_toss
//a
if ((state == PS_ROLL_BACKWARD) or (state == PS_ROLL_FORWARD) or (state == PS_AIR_DODGE)) && special_pressed && holding_present {
    set_attack(AT_NSPECIAL);
    if invincible && !initial_invince {
        invince_timer = 0;
    }
    hsp *= 1.75;
    vsp *= 1.75;
    if free {
        has_airdodge = false;
    }
}