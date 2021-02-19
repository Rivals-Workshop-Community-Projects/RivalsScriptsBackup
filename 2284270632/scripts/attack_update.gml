//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_JAB && was_parried == true){
    was_parried = false;
}

var ion_grabbed = 0;

if(grabbedid != noone){
	grabbedid.invincibile = false;
	grabbedid.visible = true;
	if(grabbedid.state == PS_DEAD || grabbedid.state == PS_RESPAWN){
		grabbedid = noone;
	}
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window == 2 && grabbedid != noone){
	grabbedid.ungrab = 0;
        //DELETE THIS LINE TO LIMIT HOW LONG THE GRAB IS TO THE WINDOW LENGTH
        grabbedid.invincible = false; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        grabbedid.visible = true; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
         //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        if (!free){
        	grabbedid.x = lerp(grabbedid.x, x + spr_dir * 80, 0.3);
			grabbedid.y = lerp(grabbedid.y, y - 50, 0.2);
			var angle = 300;
			if (joy_pad_idle == false){
				angle = joy_dir;
			}
			if spr_dir == -1{
				angle = angle * spr_dir
				angle = angle + -180
			}
			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, angle);
        }
        if (free){
        	grabbedid.x = lerp(grabbedid.x, x + spr_dir * 80, 0.15);
			grabbedid.y = lerp(grabbedid.y, y - 50, 0.05);
			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 300);
			can_jump = true;
        }
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 15;
        grabbedid.state = PS_WRAPPED;
        ionized = noone;
        hsp = 0;
        vsp = 0;
        if (ion_grabbed == 1){
        	forceFx.x = x;
        	forceFx.y = y;
        }
        var grab_distance = sqrt(abs((grabbedid.x)^2 + (grabbedid.y)^2))
        //if(window == 2 && window_timer == 3 && (free)){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
          //  window = 5;
        //}
        if(window == 2 && window_timer == 7 && (!free || grab_distance <= 30)){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            window = 4;
            window_timer = 0;
            ionized = noone;
            grabbedid.invincible = false;
        }
        if(window == 2 && window_timer == 7 && grab_distance > 30){
        	ionized = noone;
        	grabbedid.state = PS_TUMBLE;
            grabbedid.invincible = false;
            grabbedid = noone;
            ionized = noone;
        }
    }
    if (ionized != noone && window == 2 && window_timer == 1){
    	var force = create_hitbox(AT_NSPECIAL, 3, x, y);
		force.x_pos = ionized.x - x;
		force.y_pos = ionized.y - y - 20;
		if (ionized.invincible == false){
			sound_play(asset_get("sfx_clairen_uspecial_swing"));
			var forceFx = spawn_hit_fx( x, y, ion_grab );
			ion_grabbed = 1;
		}
    }
}
if(attack == AT_NSPECIAL && window == 5){
	ionized = noone;
	grabbedid.ungrab = 0;
	grabbedid.wrap_time = 5;
	grabbedid.x = lerp(grabbedid.x, x - spr_dir * 44, 0.7);
	grabbedid.y = lerp(grabbedid.y, y + 10, 0.8);
	if(!free){
		window_timer = 0;
		window = 4;
	}
}
if (attack == AT_NSPECIAL && window == 4 && window_timer <= 13){
	if(window_timer == 13){
		grabbedid.ungrab = 0;
		ionized = noone;
		ion_timer = 0;
		grabbedid.invincibile = false;
		grabbedid = noone;
		ion_grabbed = 0;
	}
	vsp = 0;
    hsp = 0;
	grabbedid.state = PS_WRAPPED;
	grabbedid.wrap_time = 15;
	if (!free){
		grabbedid.x = lerp(grabbedid.x, x + spr_dir * 80, 0.9);
		grabbedid.y = lerp(grabbedid.y, y - 50, 0.9);
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 3){
        var minePlaced = 0;
        with obj_article1 {
            if(player_id == other){
                minePlaced++;
            }
        }
        if(minePlaced < 1){
            instance_create( round(x), round(y) - 20, "obj_article1" );
        }
    }
}

if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (window == 2 && grabbedid != noone){
	grabbedid.ungrab = 0;
        //DELETE THIS LINE TO LIMIT HOW LONG THE GRAB IS TO THE WINDOW LENGTH
        grabbedid.invincible = false; //DELETE THIS LINE TO MAKE THE GRABBED PLAYER HITTABLE
        grabbedid.visible = true; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
         //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.x = lerp(grabbedid.x, x + spr_dir * 60, 0.9);
		grabbedid.y = lerp(grabbedid.y, y - 10, 0.9);
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 120;
        grabbedid.state = PS_WRAPPED;
        if(window == 2){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
        	window_timer = 0;
        	window = 4;
    	}
    }
}
if(attack == AT_USPECIAL && window == 4 && window_timer == 19){
	window_timer = 0;
	window = 5;
}

if attack == AT_NSPECIAL {
	move_cooldown[AT_NSPECIAL] = 8;
}

if attack == AT_FSPECIAL {
	move_cooldown[AT_FSPECIAL] = 30;
}

if attack == AT_DSPECIAL {
	move_cooldown[AT_DSPECIAL] = 40;
}

if(attack == AT_TAUNT){
	if(window == 1 && window_timer == 1){
		sound_play(sound_get("retract"));
	}
	if(window == 6 && window_timer == 1){
		sound_play(sound_get("ignite"));
	}
}
