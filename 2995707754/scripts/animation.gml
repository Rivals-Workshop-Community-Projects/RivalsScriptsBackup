//animation.gml
var anim_speed = 0;

//flying
if flight_mode == 0 {
	if flying == true {
		if (state == PS_FIRST_JUMP) || (state == PS_IDLE_AIR) || (state == PS_DOUBLE_JUMP && state_timer > 12) {
			if (hsp > 1 && spr_dir = 1 || (hsp < -1 && spr_dir = -1)) {
				sprite_index = sprite_get("walk"); 
				anim_speed = walk_anim_speed;
				image_index = animation_timer;
			} else { 
				sprite_index = sprite_get("idle");  
				anim_speed = walk_anim_speed;
				image_index = animation_timer;
			}
		}
	}
} else { 
	if flying == true {
		if (state == PS_IDLE_AIR) {
			if vsp < 2 && vsp > -2 {
				if hsp == 0 {
					sprite_index = sprite_get("idle"); 
					anim_speed = idle_anim_speed;
					image_index = animation_timer;
				} else {
					if (hsp > 1 && spr_dir = 1 || (hsp < -1 && spr_dir = -1)) {
						sprite_index = sprite_get("walk"); 
						anim_speed = walk_anim_speed;
						image_index = animation_timer;
					} else { 
						sprite_index = sprite_get("idle");  
						anim_speed = walk_anim_speed;
						image_index = animation_timer;
					}
				}
			} else {
				if vsp < 0 {
					sprite_index = sprite_get("idle"); 
					anim_speed = walk_anim_speed*1.2;
					image_index = animation_timer;
				} else {
					sprite_index = sprite_get("idle"); 
					image_index = 0;
				}
			}
		}
	}
}

//dashing
if attack == 48 && state == PS_ATTACK_AIR{
	if dash_dir = spr_dir * -1 { sprite_index = sprite_get("backward_dash") }
}

animation_timer = animation_timer + (1*anim_speed);

if state == PS_RESPAWN { sprite_index = sprite_get("respawn"); }