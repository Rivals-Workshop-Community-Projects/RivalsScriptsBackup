//article1_update

state_timer ++;

if (init == 0) {
    init = 1;
    
    with (asset_get("obj_article1")) {
        if (id != other.id && player_id == other.player_id && state != 2) {
            state = 2;
            state_timer = 0;
        }
        
    }
    image_index = 0;
    im_num = image_number;
    im_dex = image_index;
    with player_id {
        other.player_color = get_player_color(player);
        other.player_code3 = code_3;
    }
    if player_color == 3 bounce_sfx = sound_get("g_bounce");   
    
    if player_code3 || player_color == 5 {
        idle_spr = sprite_get("wall_idle");
        wall_spr1 = sprite_get("wall_idle1");
        wall_spr2 = sprite_get("wall_idle2");
        
        bounce_spr = sprite_get("wall_bounce");
        bounce_spr1 = sprite_get("wall_bounce1");
        bounce_spr2 = sprite_get("wall_bounce2");
        dest_spr = sprite_get("dspecial_wall_dest");
    }
    
    if player_code3 || player_color == 5 { 
        wall_spr = open_spr;
        sprite_index = asset_get("empty_sprite");
        
    }
    switch hit_count {
        case 0:
             sprite_index = idle_spr;
           
            im_num = sprite_get_number(idle_spr);
            bounce_sprite = bounce_spr;
            break;
        case 1:
             sprite_index = wall_spr1;
           
            im_num = sprite_get_number(wall_spr1);
            bounce_sprite = bounce_spr1;
            break;
        case 2:
             sprite_index = wall_spr2;
            
            im_num = sprite_get_number(wall_spr2);
            bounce_sprite = bounce_spr2;
            break;
    }
    with player_id {
    	hsp = spr_dir*abs(hsp*1.5);
    }
    state = 3;
    sprite_index = bounce_sprite;
    im_num = sprite_get_number(bounce_sprite);
    bounce_timer = 0;
    sound_play(bounce_sfx);
}
if player_color == 3 && glitch_switch = glitch_switch_frame {
	glitch_xp = glitch_x;
	glitch_yp = glitch_y;
	glitch_x_offp = glitch_x_off;
	glitch_y_offp = glitch_y_off;
	glitch_x = random_func_2(3,5,true);
	glitch_y = random_func_2(1,7,true)+1;
	glitch_x_off = random_func_2(2,6,true);
	glitch_y_off = random_func_2(3,6,true)+1;
	glitch_switch = 0;
	
} else glitch_switch++;


if (state == 0) { //building
    im_dex = (state_timer/build_time)*im_num;
     image_index = im_dex;
    if (state_timer == build_time) {
        state = 1;
        state_timer = 0;
        stay_timer = 0;
        full_timer = 0;
        hit_count = 0;
        hitting = 0;
         sprite_index = idle_spr;
        im_num = sprite_get_number(idle_spr);
    }
}

var stay_time = 50000;
if (state == 1) {
    switch hit_count {
        case 0:
             sprite_index = idle_spr;
            im_num = sprite_get_number(idle_spr);
            bounce_sprite = bounce_spr;
            break;
        case 1:
             sprite_index = wall_spr1;
            im_num = sprite_get_number(wall_spr1);
            bounce_sprite = bounce_spr1;
            break;
        case 2:
             sprite_index = wall_spr2;
            im_num = sprite_get_number(wall_spr2);
            bounce_sprite = bounce_spr2;
            break;
    }
    im_dex = (state_timer*.2) % im_num;
     image_index = im_dex;
    has_bounced = 0;
    inst = instance_place(x,y,asset_get("pHitBox"));
    insta = instance_place(x,y,asset_get("oPlayer"));
    inster = instance_place(x,y,asset_get("obj_article2"));
    if (inst != noone) {
        with (inst) {
            if (type == 2 && other.spr_dir != sign(hsp) && (does_not_reflect != true)) {
                hsp = -hsp*1.5;
            	can_hit_self = true;
                other.has_bounced = 1;
                if (other.hitting == 0) {
                	// other.hit_count++;
            		other.hitting = 1;
            	}
            }
        }
    }
    if (inster != noone && inster.player_id == player_id) {
        with (inster) {
        	spr_dir = other.spr_dir;
            hsp = other.spr_dir*(abs(hsp)+hitSpeed*3);
            other.has_bounced = 1;
            hit_op = 1;
            if (other.hitting == 0) {
                other.hit_count++;
                other.hitting = 1;
                 
            }
        }
    }
    if (inst == noone && inster == noone) {
        hitting = 0;
    }
    if (insta != noone){ 
        with (insta) {
            //if (other.spr_dir*cos(degtorad(point_direction(other.x,other.y,x,y))) > 0) {
            if ((state == PS_HITSTUN) && other.spr_dir != sign(hsp)) {
                hsp = -hsp*1.2;
                spr_dir = other.spr_dir;
                other.has_bounced = 1;
                if (other.hitting == 0) {
                	other.hit_count++;
            		other.hitting = 1;
            	}
            }
        }
    }
    if (has_bounced == 1 && state_timer > 20) {
        state = 3;
         sprite_index = bounce_sprite;
        im_num = sprite_get_number(bounce_sprite);
        bounce_timer = 0;
        sound_play(bounce_sfx);
    }
    if (hit_count > 2 || stay_timer == stay_time) {
         sprite_index = dest_spr;
        im_num = sprite_get_number(dest_spr);
        state = 2;
    }
    stay_timer++;
}

if (state == 2) {
    im_dex = (build_time - full_timer)/build_time*im_num;
     image_index = im_dex;
    if (full_timer == build_time) {
        instance_destroy();
        exit;
    }
    full_timer++;
}

if (state == 3) {
    im_dex = (bounce_timer*bounce_as) % im_num;
     image_index = im_dex;
    if (bounce_timer*bounce_as >= bounce_time) {
        state = 1;
    }
    bounce_timer++;
}
