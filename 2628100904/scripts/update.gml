//update

with(hit_fx_obj){
    if(player_id == other){
        if(sprite_index == asset_get("moth_boom_small_spr")){
            depth = other.depth + 1;
        }
    }
}

if(!free || state == PS_RESPAWN || state == PS_DEAD || state_cat == SC_HITSTUN || state == PS_WALL_JUMP){
    move_cooldown[AT_USPECIAL] = 0;
}

if(state_cat != SC_HITSTUN && state != PS_TUMBLE){
    uspecial_slip = false;
}

if(uspecial_slip){
    off_edge = true;
}

if((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack != AT_DSPECIAL)){
    if(get_gameplay_time()%5 == 1){
        if(weedcharge > 0 && weedcharge < mid_weedcharge){
            weedcharge -= .5;
        } else if(weedcharge > mid_weedcharge && weedcharge < max_weedcharge){
            weedcharge -= .5;
        }
    }
}

if(attack != AT_JAB || (state != PS_ATTACK_GROUND && state != PS_ATTACK_GROUND && attack == AT_JAB)){
    jabbing = false;
}

var not_move = false;
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    not_move = true;
}

with(oPlayer){
    if(!clone && self != other){
        if(gang_grab_id == other && not_move){
            gang_grab_id = noone;
        }
        if(gang_grab_id == other){
            hsp = 0;
            vsp = 0;
            hitpause = true;
            if(hitstop < 2){
                hitstop = 2;
            }
            var hsped = lengthdir_x(point_distance(x,y,other.x+40*other.spr_dir,other.y-5)/10,point_direction(x,y,other.x+40*other.spr_dir,other.y-5));
    		var vsped = lengthdir_y(point_distance(x,y,other.x+40*other.spr_dir,other.y-5)/10,point_direction(x,y,other.x+40*other.spr_dir,other.y-5));
    		x += hsped;
    		y += vsped;
        }
        if(hit_player_obj != other){
            if(gang_grab_id == other){
                 gang_grab_id = noone;
            }
        }
    }
}