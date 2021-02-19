var die = 0;


if init == 1 {
	switch(type) {
		default: case 1: //Yoshi egg
			sprite_index = sprite_get("nspecial_proj1");
			mask_index = sprite_index;
			followbox = create_hitbox(AT_NSPECIAL, 1, x, y)

		break;
		case 2: //Shell
			sprite_index = sprite_get("nspecial_proj2");	
			mask_index = sprite_index;
			followbox = create_hitbox(AT_NSPECIAL, 2, x, y)

		break;
		case 3: //Bowser
			sprite_index = sprite_get("nspecial_proj3");
			mask_index = sprite_index;			
			followbox = create_hitbox(AT_NSPECIAL, 3, x, y)

		break;
		case 4: //USpecial Bob-omb
			sprite_index = sprite_get("uspecial_proj");
			mask_index = sprite_index;			
			followbox = noone;
			free = true;
			

		break;
	}
	init = 0;
	visible = true;

}


if !dead {
	switch(level) {
		default: 
		if hsp != 0 spr_dir = 1-(hsp < 0)*2;
		switch(type) {
			case -1:
			die = 1;
			hsp *= -1;
			break;
			default:  //Yoshi egg
				if player_id.reflect{
					hsp = oldhsp * -1;
					type = 1;
					 player_id.reflect = false;
				}
				if place_meeting(x+spr_dir,y, asset_get("par_block"))  {hsp = oldhsp * -1;  type -= 1}
				if !free && vsp >= 0 {
					vsp = -8;
					free = true;
					y = floor(y)
					type -= 1;
					sound_play(sound_get("nspecial_egghit"));
				} else {
					vsp += grav;
				}
			break;
			case 2: //Shell
			var shellkick = 0;
			
			can_be_grounded = (vsp >= 0 && free == false);
				if !free {
					vsp = 0;
				} else {
					vsp += grav;
				}
				var kickbox = noone;
				with (pHitBox) {
					if id != other.followbox && place_meeting(x,y,other.followbox) {
						kickbox = id;
						break;
					}
				}
				if kickbox != noone {
					hsp = lengthdir_x(kickbox.kb_value*1.5, get_hitbox_angle(kickbox))
					oldhsp = hsp;
					vsp = lengthdir_y(kickbox.kb_value*1.5, get_hitbox_angle(kickbox))
					followbox.player = kickbox.player_id.player;
				} 
				if place_meeting(x+spr_dir,y,  asset_get("par_block")) or player_id.reflect {
					hsp = oldhsp * -1; 
					player_id.reflect = false;
					
				} 
			break;
			case 3: //Bowser
			if place_meeting(x+spr_dir,y, asset_get("par_block"))  {
			die = 1;
			}
			break;
			
			case 4: //Uspecial Bob-omb
				if !free die = 1;
				vsp += grav;
			break;
		}


		break;
		case 0: //Upkick
			if type != 4 {
			level = 2;
			sound_play(sound_get("nspecial_shellhit"));
			if (type == 3) {
				sound_play(sound_get("so_longay_bowser"));
			}
			}
		break;
		case 1: //Just kicked
			if type != 4 {
			vsp = followbox.vsp
			hsp = followbox.hsp
			level = 2;
			sound_play(sound_get("nspecial_firstkick"));
			} else {
			hsp = 3 * spr_dir
			vsp = -3
			
			//hsp = get_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED)
			//vsp = get_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED)
			level = 2;
			}
		break;
	}
	if type != 4 {
		if (instance_exists(followbox)) && !die {
			followbox.x = x;
			followbox.y = y;
			followbox.player_id.move_cooldown[AT_NSPECIAL] = 2;
			followbox.spr_dir = spr_dir
		}  else {
			dead = 1;
			ignores_walls = 1;
			if (type != 2 && type !=3) {
				sound_play(sound_get("eggpop"));
			}
			if (type == 2) {
				sound_play(sound_get("nspecial_shellhit"));
			}
			if (type == 3) {
				sound_play(sound_get("explosion"));
			}
			vsp = -4;
			hsp *= -1;
			if die && instance_exists(followbox) {followbox.destroyed = true;}
			followbox = noone;
		}
	} else if die {
			dead = 1;
			ignores_walls = 1;
			vsp = -4;
			hsp *= -1;
	}

bouncex = x;
x = bouncex;
} else {
if type == 3 && visible && level == 2{
spawn_hit_fx( x+(50*spr_dir), y, hit_fx_create(sprite_get("bowser_boom"),69) );
create_hitbox(AT_NSPECIAL, 4, x+(50*spr_dir), ceil(y));
visible = false;

}
if type == 4 && visible && level == 2 { //Bob-omb explosion
	image_angle -= 20;
	hsp = 0;
	vsp = -1;
	image_xscale += 0.06;
	image_yscale += 0.06;
	if image_xscale > 1.5 {
	var fbox = create_hitbox(AT_USPECIAL, 1, x, y)
	sound_play(sound_get("explosion"));
	spawn_hit_fx( x, y, hit_fx_create(sprite_get("bowser_boom"),69) )
	visible = 0;
	}
}
vsp += 1;
image_angle += 20;
}
	if x < -64 or x > room_width+64 or y > room_height+64 {
	
		
		if followbox != noone {instance_destroy(followbox)}
		instance_destroy();
	}

oldhsp = hsp;

