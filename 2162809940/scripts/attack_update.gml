var pot_out = false;
var target_out = false;
var umpire_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        pot_out = true;
    }
}

with(asset_get("obj_article2")){
    if (player_id == other.id){
        target_out = true;
    }
}

with(asset_get("obj_article3")){
    if (player_id == other.id){
        umpire_out = true;
    }
}




//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (window_timer == 2 && !target_out){
            instance_create(x + (spr_dir*55),y - 45,"obj_article2");
            spawn_hit_fx( x + (spr_dir*65), y - 52, 13 );
        }
        if (window_timer == 1 && target_out){
            with (obj_article2){
                if (player_id == other.id){
                    if (state != 1){
                        spawn_hit_fx( x, y - 15, 304 );
                        explode_time = 35;
                        state = 1;
                        state_timer = 0;
                    }
                }
            }
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (window_timer == 2 && !umpire_out){
            instance_create(x + (spr_dir*25),y - 15,"obj_article3");
            spawn_hit_fx( x + (spr_dir*35), y - 25, 13 );
        }
        if (window_timer == 1 && umpire_out){
            set_num_hitboxes(AT_FSPECIAL, 1);
            sound_play (sound_get("doink"));
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
    }
    if (window == 2){
        
        if (!free && window_timer > 4){
            window = 4;
            window_timer = 12;
        }
        
        if (window_timer == 1 && !hitpause){
            vsp = -12.5;
        }
        
        if (!has_rune("H")){ //the non-rune thing
            
            if (has_hit && window_timer <= 2){ //the normal thing
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
                move_cooldown[AT_USPECIAL] = 99999;
            }
            
        }
        else{ //the rune thing
        
            if (has_hit){
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            }
            
        }
    }
    if (window == 3){
        
        if (!free){
            window = 4;
            window_timer = 12;
        }
        
        if (has_rune("C")){ //another rune thing
            if (has_hit){
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
            }
        }
        
        can_wall_jump = true;
    }
}

var idk_what_to_call_this_lol = 0;

if (has_rune("K")){
    var idk_what_to_call_this_lol = 15;
}

if (!has_rune("O")){ //normal

    if (attack == AT_DSPECIAL){
        if (window == 3){
            if (window_timer == 2 && !pot_out){
                instance_create(x + (spr_dir*45),y - 5,"obj_article1");
                spawn_hit_fx( x + (spr_dir*55), y - 12, 13 );
            }
            if (pot_out && window_timer == 1){
                move_cooldown[AT_DSPECIAL] = 60 - idk_what_to_call_this_lol;
            }
        }
    } 

}
else{ //rune
    
    if (attack == AT_DSPECIAL){
        if (window == 3){
            if (window_timer == 2 && !pot_out){
                var instance_one = instance_create(x + (spr_dir*45),y - 5,"obj_article1");
                var instance_two = instance_create(x - (spr_dir*45),y - 5,"obj_article1");
                var instance_three = instance_create(x + (spr_dir*0),y - 5,"obj_article1");
                instance_one.delay = 0;
                instance_two.delay = 20;
                instance_three.delay = 10;
                spawn_hit_fx( x + (spr_dir*55), y - 12, 13 );
            }
            if (pot_out && window_timer == 1){
                move_cooldown[AT_DSPECIAL] = 60 - idk_what_to_call_this_lol;
            }
        }
    } 
}

//up air stuff
if (attack == AT_UAIR){
    if (window == 1){
        if (window_timer == 8){
            vsp = clamp(vsp, -99, 0);
        }
    }
}

//holdable taunt
if (attack == AT_TAUNT){
    if (window == 4){
        if (taunt_down){
            window_timer = 1;
        }
    }
}






//runes
if (has_rune("E")){
    if (attack == AT_FSTRONG){
        if (window <= 4){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    else if (attack == AT_DSTRONG){
        if (window <= 3){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
    else if (attack == AT_USTRONG){
        if (window <= 3){
            super_armor = true;
        }
        else{
            super_armor = false;
        }
    }
}



//dust vfx
if (attack == AT_USPECIAL){
    if (window == 1){
        if (window_timer == get_window_value( AT_USPECIAL, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                if (free){
                    spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
                }
                else{
                    spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
                }
            }
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 3){
        if (window_timer == get_window_value( AT_FSTRONG, 3, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir*1);
            }
        }
    }
}

if (attack == AT_DSTRONG){
    if (window == 2){
        if (window_timer == get_window_value( AT_DSTRONG, 2, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir*-1);
                spawn_base_dust( x + (-10 * spr_dir), y, "dash_start", spr_dir*1);
            }
        }
    }
}

if (attack == AT_USTRONG){
    if (window == 2){
        if (window_timer == get_window_value( AT_DSTRONG, 2, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (0 * spr_dir), y, "waveland", spr_dir*1);
            }
        }
    }
}

if (attack == AT_FTILT){
    if (window == 1){
        if (window_timer == get_window_value( AT_FTILT, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir*1);
            }
        }
    }
}

if (attack == AT_DTILT){
    if (window == 1){
        if (window_timer == get_window_value( AT_DTILT, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (60 * spr_dir), y, "dash", spr_dir*-1);
            }
        }
    }
}

if (attack == AT_UTILT){
    if (window == 1){
        if (window_timer == get_window_value( AT_UTILT, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (16 * spr_dir), y, "dash", spr_dir*-1);
                spawn_base_dust( x + (-16 * spr_dir), y, "dash", spr_dir*1);
            }
        }
    }
}

if (attack == AT_DATTACK){
    if (window == 1){
        if (window_timer == get_window_value( AT_DATTACK, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (30 * spr_dir), y, "dash_start", spr_dir*-1);
            }
        }
    }
}

if (attack == AT_JAB){
    if (window == 1){
        if (window_timer == get_window_value( AT_JAB, 1, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (36 * spr_dir), y, "dash", spr_dir*-1);
            }
        }
    }
    if (window == 5){
        if (window_timer == get_window_value( AT_JAB, 5, AG_WINDOW_LENGTH )){
            if (!hitpause && !hitstop){
                spawn_base_dust( x + (36 * spr_dir), y, "dash", spr_dir*-1);
            }
        }
    }
}


//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;