//
state_timer ++;

if (state == 0){
    image_alpha += .1;
    if (state_timer == 12){
        state = 1;
        state_timer = 0;
    }
}

if (state == 1){
    if (knife_angle == 1){
        if (image_angle == 0 && image_angle != 45){
            image_angle += 5;
        } else image_angle = 45;
    }
    if (knife_angle == 0){
        if (image_angle != 0 && image_angle >= 315){
            image_angle += 5;
        } else image_angle = 0;
        if (image_angle != 0 && image_angle <= 45){
            image_angle -= 5;
        } else image_angle = 0;
    }
    if (knife_angle == -1){
        if (image_angle == 0 && image_angle != 315){
            image_angle -= 5;
        } else image_angle = 315;
    }
}

if (state == 2){
        hsp = 12*spr_dir;
        if (knife_angle == 1){
            image_angle = 45;
            vsp = -12*spr_dir;
        }
        if (knife_angle == -1){
            image_angle = 315;
            vsp = 12*spr_dir;
        }
        if (knife_angle == 0){
            image_angle = 0;
        }
        if (!player_id.hitpause){
        	if knife_angle == 0{
		create_hitbox( AT_FSPECIAL, 1, x + 42*spr_dir, y + 12);
        	}
        	if knife_angle == 1{
        	if spr_dir == 1{
        		
		create_hitbox( AT_FSPECIAL, 1, x + 38*spr_dir, y - 24);
        	} else 	create_hitbox( AT_FSPECIAL, 1, x + 26*spr_dir, y + 38);
        	}
        	
        	if knife_angle == -1{
        	if spr_dir == 1{
		create_hitbox( AT_FSPECIAL, 1, x + 26*spr_dir, y + 38);
        	} else  create_hitbox( AT_FSPECIAL, 1, x + 38*spr_dir, y - 24);
        	}
        }
        if (state_timer == 50){
		instance_destroy();
		exit;
        }
        if (free == false && vsp > 0 or hit_wall == true){
        	sound_play(asset_get("sfx_shovel_hit_light2"));
        	spawn_hit_fx(x + 20*spr_dir, y + 10, 136);
			
			instance_destroy();
			exit;
        	
        }
}

if (state == 3){
		instance_destroy();
		exit;
}

var k_vsp = vsp;
var k_hsp = hsp;
with asset_get("pHitBox"){
	knife_vsp = k_vsp;
	knife_hsp = k_hsp;
}

with(oPlayer){
        if(other.player_id != id && place_meeting(x, y, other)){
            with other{
            	if (state == 2){
            		state = 3;
            		state_timer = 0;//Bomb hitbox
            	}
            }
        }
}

if should_exit{
	destroyed = true;
    instance_destroy();
    exit;
}

if (state == 4){
    image_alpha -= .1;
    if (state_timer == 12){
        instance_destroy();
			exit;
    }
}