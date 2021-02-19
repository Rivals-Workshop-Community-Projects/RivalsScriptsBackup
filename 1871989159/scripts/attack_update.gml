

if attack == AT_USPECIAL or attack == AT_FAIR {
	can_wall_jump = true;
}



if attack == AT_DATTACK && window == 4 && !was_parried && (right_down - left_down == spr_dir) {
set_state(PS_DASH);
}


if attack == AT_BAIR && window == 1 && window_timer == 8 {
spr_dir *= -1
}
if attack == AT_UAIR && window == 3 && window_timer > 4 && (((attack_down or strong_down)) or up_strong_down) {
window = 4;
window_timer = 0;
}

if attack == AT_DSPECIAL && window == 2 && window_timer == 12{
	if !special_down {
	set_attack(AT_DSPECIAL_2);
	window = 3;
	window_timer = 0;
	}
	
}
if attack == AT_DSPECIAL && window == 2 && window_timer == 22{
	sound_play(asset_get("mfx_logo_shing"));
	
}



if attack == AT_TAUNT {
	if window <= 2 {
		if window == 2 && window_timer == 8 && down_down && !up_down {
			window = 4;
			window_timer = 0;
		}
	} else if window == 3 {
		if window_timer == 5 sound_play(asset_get("mfx_star"));
		if window_timer == 30 window = 4;
	} else if window == 4 {
		if window_timer == 5 sound_play(asset_get("mfx_unstar"));
	}
}
if attack == AT_USPECIAL && !hitpause { 
	uspecialtime--;
	if window <= 2 {
		vsp -= gravity_speed*0.1
		vsp *= 0.4

		hsp *= 0.8
		
			uspecialtime = 23;
			//uspecialtime = max(uspecialtime+2,2)
//			if !(special_down){
//				window = 3;
//				window_timer = 0;
//			}

	} else if window == 4 {
	free = true;
		vsp = min(vsp,0.5)
		vsp -= 1.0
		hsp = clamp(hsp+(right_down - left_down)*0.1, -air_max_speed, air_max_speed);
		
		//vsp -= (uspecialtime*0.01)+(free*grav)
		
		if uspecialtime <= 0 or ((jump_pressed or attack_pressed or shield_pressed) && uspecialtime <= 15) {
			window = 5;
			window_timer = 0;

				var facechange = right_down - left_down;
				if facechange != 0 spr_dir = facechange;
			if runeH {
				var b = instance_create(x,y-30,"obj_article1");
				b.depth = depth+3;
				b.type = bombtype;
				b.fuse = bombfuse;
				b.hsp = hsp
				b.vsp = vsp
			}
		}
			if window_timer mod 8 == 1 {
			var tossbox = instance_create(x,y-30,"obj_article1");
			tossbox.type = 9-(window_timer mod 12 == 1);
			tossbox.fuse = 10+uspecialtime/4
			tossbox.hsp = 0;
			tossbox.vsp = 0;
		}
	} else if window == 1 {
		uspecialtime = 0;
	} else if window == 3 && window_timer == 1{
	hsp = (right_down - left_down) * air_max_speed*0.5
			var hfx = spawn_hit_fx(x,y,fx_sprites[3])
	
			var tossbox = instance_create(x,y-30,"obj_article1");
			tossbox.type = 9-(state_timer mod 12 == 1);
			tossbox.fuse = 10+uspecialtime/4
			tossbox.hsp = 0;
			tossbox.vsp = 0;
		
	} else if window == 5 {
			if window_timer mod 6 == 1 {
			var tossbox = instance_create(x,y-30,"obj_article1");
			tossbox.type = 9-(window_timer mod 12 == 1);
			tossbox.fuse = 10+uspecialtime/4
			tossbox.hsp = 0;
			tossbox.vsp = 0;
		}
	}
}



if attack == AT_FAIR {
	if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH){

		sound_play(asset_get("sfx_birdflap"));
	} 
	if window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && state_timer < 30 {
	if attack_down or strong_down or (spr_dir == 1 && right_strong_down) or (spr_dir == -1 && left_strong_down)
		window_timer--;
	}
	if window == 5 && has_hit {
		vsp = -4;
		old_vsp = vsp;
		hsp = -3*spr_dir;
		old_hsp = hsp;
		has_hit = 0;
	//	sound_play(asset_get("mfx_player_ready"));
	}
//	if window == 2 && window_timer == 1 vsp = min(vsp, -2)
	/*
	if window == 2 && window_timer == 5 {
		window = 4;
		window_timer = 8;
	}
	if window == 1 && window_timer == 6 && attack_down {
		window = 3;
		window_timer = 0;
		sound_play(asset_get("mfx_player_ready"));
	}
	*/
}

if attack == AT_FSPECIAL {
	move_cooldown[attack] = 15;
	if window <= 2 {
		flarex = max(flarex,62);
		flarex += 9
		if state_timer > flaremin flarex += (right_down - left_down)*spr_dir*3
		
		if state_timer < (flaremin+10) && runeG && instance_exists(last_bomb){
			flarex = (last_bomb.x - x)*spr_dir
			flarey = (last_bomb.y - y)
		}
		
		if !(special_down && flarex <= room_width) && window == 2{ //Pow
			window = 3;
			window_timer = 0;
			sound_play(sound_get("mollo_boom"));
		}
		flarey += (down_down-up_down)*3
	} else if window == 3 && window_timer == 1 && !hitpause {
		var tossbox = instance_create(x + floor(flarex)*spr_dir , y+floor(flarey),"obj_article1")
		tossbox.type = 10;
		tossbox.fuse = 12;
		tossbox.visible = false;
		sound_play(sound_get("mollo_flashbang"));
		flarex = 0;
		flarey = -54;
	}
}

if attack == AT_DSPECIAL {
		if window == 2 && window_timer == 2 {
			if (spr_dir == 1 && left_down) or (spr_dir == -1 && right_down) && !shield_down && !taunt_down && !attack_down {
				spr_dir *= -1;
			}
		}
	  /*if window == 4 {
//		var tossbox = create_hitbox(AT_DSPECIAL, 6, x+33*spr_dir, y-36);
		var tossbox = create_hitbox(AT_DSPECIAL, 6, x + get_hitbox_value(AT_DSPECIAL,6, HG_HITBOX_X)*spr_dir, (y + get_hitbox_value(AT_DSPECIAL,6, HG_HITBOX_Y))+(room_height+2000));
		//sound_play(asset_get("mfx_player_ready"));
		with (obj_article1) {
			if (!batted or sign(hsp) != other.spr_dir) && player_id == other.id && place_meeting(x,y+(room_height+2000),tossbox) {
				free = true;
				vsp = -4;
				hsp = 20*other.spr_dir
				projectile = true;
				batted = true;
				sound_play(sound_get("mollo_bat"))
				//sound_play(asset_get("mfx_player_ready"));
			}
		}
		instance_destroy(tossbox);
	} else */if window == 7 && window_timer == 1 {
		//var tossbox = create_hitbox(AT_DSPECIAL,5,x+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y))
		var tossbox = instance_create(x+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y), "obj_article3")
		tossbox.depth = depth+1;
		tossbox.solid = false;
		if runeA {
			tossbox.hsp = spr_dir*5
			tossbox.x += spr_dir*20
		}
	}
}
if attack == AT_DSPECIAL_2 {

	/*  if window == 4 {
//		var tossbox = create_hitbox(AT_DSPECIAL, 6, x+33*spr_dir, y-36);
		var tossbox = create_hitbox(AT_DSPECIAL, 6, x + get_hitbox_value(AT_DSPECIAL,6, HG_HITBOX_X)*spr_dir, (y + get_hitbox_value(AT_DSPECIAL,6, HG_HITBOX_Y))+(room_height+2000));
		//sound_play(asset_get("mfx_player_ready"));
		with (obj_article1) {
			if (!batted or sign(hsp) != other.spr_dir) && player_id == other.id && place_meeting(x,y+(room_height+2000),tossbox.id) {
				free = true;
				vsp = -4;
				hsp = 20*other.spr_dir
				projectile = true;
				if instance_exists(bombbox) {
					instance_destroy(bombbox);
				}
				bombbox = create_hitbox(AT_EXTRA_1,21,x,y)
				bombbox.bombowner = id;
				batted = true;
				sound_play(sound_get("mollo_bat"))
				//sound_play(asset_get("mfx_player_ready"));
				
			}
		}
		instance_destroy(tossbox);
	} else*/ if window == 6 && window_timer == 1 {
		//var tossbox = create_hitbox(AT_DSPECIAL_2,5,x+get_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y))
		var tossbox = instance_create(x+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X)*spr_dir,y+get_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y), "obj_article3")
		tossbox.depth = depth+1;
		tossbox.solid = false;
		if runeA {
			tossbox.hsp = spr_dir*5
			tossbox.x += spr_dir*20
		}
	}
}

var brickmult = 1.2
if attack == AT_FSTRONG {
	reset_window_value( attack, window, AG_WINDOW_LENGTH )
	if bombtype == -10 {
		set_window_value( attack, window, AG_WINDOW_LENGTH, floor(get_window_value( attack, window, AG_WINDOW_LENGTH)*brickmult) )
	}
	if !joy_pad_idle {
		bombangle = (joy_dir > 30 && joy_dir < 150) - (joy_dir > 210 && joy_dir < 330)
	} else bombangle = 0;
	if window == 2 && window_timer == 1 && !hitpause  {
	bombins = instance_create(x,y-30,"obj_article1");
	bombins.depth = depth-3;
	bombins.type = bombtype;
	bombins.fuse = bombfuse;
	last_bomb = bombins;
	
	hidden = 0;
	if runeC randomize_bombs();
	//bombins.hand = 1;
//	sound_play(asset_get("sfx_go"));
	}
	if instance_exists(bombins) {
		bombins.charge = strong_charge
		bombins.rolling = false;
		bombins.free = 1;
		bombins.stasis = 1;

		if window == 3 && window_timer = 6 {
			var throwdis = 10+(bombtype == 2)*4
			throwdis = 10;
			var throwdir = 5+(bombangle)*40;
			bombins.hsp = lengthdir_x(throwdis,throwdir)*spr_dir; //was 8.5 previously
			bombins.vsp = lengthdir_y(throwdis,throwdir);
			bombins.spr_dir = -spr_dir
			bombins.rolling = true;
			bombins.projectile = true;
			bombins.hand = 0;
			bombins = noone;
//			if bombtype == 3 { bombtype = 0;
//			bombfuse = bombfusedefault;}
		}
	}
}

else if attack == AT_USTRONG {
	reset_window_value( attack, window, AG_WINDOW_LENGTH )
	if bombtype == -10 {
		set_window_value( attack, window, AG_WINDOW_LENGTH, floor(get_window_value( attack, window, AG_WINDOW_LENGTH)*brickmult) )
	}
	if !joy_pad_idle {
		bombangle = -((joy_dir < 60 or joy_dir > 300) - (joy_dir > 120 && joy_dir < 240))*spr_dir
	} else bombangle = 0;
	if window == 2 && window_timer == 1 && !hitpause {
	bombins = instance_create(x,y-30,"obj_article1");
	bombins.depth = depth-3;
	bombins.type = bombtype;
	bombins.fuse = bombfuse;
	last_bomb = bombins;
	
	hidden = 0;
	if runeC randomize_bombs();
	//bombins.hand = 1;
//	sound_play(asset_get("sfx_go"));
	}
	if instance_exists(bombins) {
	bombins.charge = strong_charge
		bombins.rolling = false;
		bombins.free = 1;
		bombins.stasis = 1;

		if window == 3 && window_timer = 6 {
			var throwdis = 13+(bombtype == 2)
			throwdis = 15;
			var throwdir = 85+(bombangle)*15;
			bombins.hsp = lengthdir_x(throwdis,throwdir)*spr_dir; //was 9 previously
			bombins.vsp = lengthdir_y(throwdis,throwdir);
			bombins.spr_dir = -spr_dir
			bombins.rolling = true;
			bombins.projectile = true;
			bombins.hand = 0;
			bombins = noone;
		}
	}
}
else if attack == AT_DSTRONG {
	if special_pressed or special_down {
		if down_down special_cancel = DIR_DOWN;
		if left_down special_cancel = DIR_LEFT;
		if right_down special_cancel = DIR_RIGHT;
	}
	reset_window_value( attack, window, AG_WINDOW_LENGTH )
	if bombtype == -10 {
		set_window_value( attack, window, AG_WINDOW_LENGTH, floor(get_window_value( attack, window, AG_WINDOW_LENGTH)*brickmult) )
	}
	if !joy_pad_idle {
		bombangle = -((joy_dir < 60 or joy_dir > 300) - (joy_dir > 120 && joy_dir < 240))*spr_dir
	} else bombangle = 0;
	if window == 2 && window_timer == 1 && !hitpause {
	
	bombins = instance_create(x,y-30,"obj_article1");
	bombins.depth = depth-3;
	bombins.type = bombtype;
	bombins.fuse = bombfuse;
	last_bomb = bombins;

	hidden = 0;
	if runeC randomize_bombs();
	//bombins.hand = 1;
//	sound_play(asset_get("sfx_go"));
	}
	if instance_exists(bombins) {
		bombins.rolling = false;
		bombins.free = 1;
		bombins.stasis = 1;

		if window == 3 && window_timer = 6 {
			var throwdis = 6+(bombtype == 2)*4
			throwdis = 6;
			var throwdir = 80+(bombangle)*40;
			bombins.hsp = lengthdir_x(throwdis,throwdir)*spr_dir; //was 4 previously
			bombins.vsp = lengthdir_y(throwdis,throwdir);
			bombins.spr_dir = -spr_dir
			bombins.rolling = true;
			bombins.projectile = true;
			bombins.hand = 0;
			bombins = noone;
			if special_cancel == DIR_DOWN {
				set_attack(AT_DSPECIAL);
			}
			if special_cancel == DIR_RIGHT {
				set_attack(AT_FSPECIAL);
				spr_dir = abs(spr_dir);
			}
			if special_cancel = DIR_LEFT {
				set_attack(AT_FSPECIAL);
				spr_dir = abs(spr_dir)*-1;
			}
		}
	}
}

if attack == AT_NSPECIAL && window == 1 && window_timer >= 8 && (special_pressed or !joy_pad_idle){
window = 2;
window_timer = 0;
menualpha = 1;
}

if attack == AT_NSPECIAL && window == 2 {
var picked = 0;
	if special_pressed && joy_pad_idle {
		picked = 1;
		{window = 3; window_timer = 0}
		bombtype = 0;
		bombfuse = bombfusedefault;
		sound_play(sound_get("mollo_gunload"))
/*		var tossbox = instance_create(x+(5*spr_dir),y-25,"obj_article2");
		tossbox.depth = depth-1;
		tossbox.image_alpha = 3;
		tossbox.alphaspd = 0.1;
		tossbox.vsp = -0.1;
		tossbox.homing = 1;
		tossbox.sprite_index = sprite_get("bombchanged");
*/	} 
	if !joy_pad_idle {
		picked = 1;
		{window = 3; window_timer = 0}
		sound_play(sound_get("mollo_gunload"))
		var tossdir = floor((joy_dir+45)/90)
		switch(tossdir) {
			default: //Right, Flashbang
			bombtype = 1;
			bombfuse = bombfusedefault;
			//tossbox.xstart += 20
			break;
			
			case 1: //Up, Firecracker
			bombtype = 4;
			bombfuse = bombfusedefault;	
			//tossbox.ystart -= 6			
			break;
			
			case 2: //Left, Baseball (or brick)
			bombtype = 2;
			if brickmode bombtype = -10;
			//bombfuse = 999999; //Explodes on contact	
			bombfuse = bombfusedefault
			//tossbox.xstart -= 6
			break;
			
			case 3: //Down, Finisher
			bombtype = 3;
			bombfuse = floor(bombfusedefault*1.5)-60;	
			//bombfuse = floor(bombfusedefault*2);	
			//tossbox.ystart += 6			
			break;
		}
	}
	
	
	if special_pressed or !joy_pad_idle {window = 3; window_timer = 0; hidden = 1}
} if (attack == AT_NSPECIAL or attack == AT_FSPECIAL or attack == AT_DSPECIAL) && free{
	hsp -= hsp*0.05
	if vsp > 0 vsp -= vsp*0.1
}
if (attack == AT_FSTRONG or attack == AT_DSTRONG or attack == AT_USTRONG) {
can_move = 0;
//if strong_charge > 0 strong_charge -= 0.5;
move_cooldown[AT_FSTRONG] = 15;
move_cooldown[AT_USTRONG] = 15;
move_cooldown[AT_DSTRONG] = 15;
if runeE && shield_pressed && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) {
	set_state(PS_PARRY_START);
}
}

#define randomize_bombs
	switch(random_func(0, 5, 1)) {
			default:
			bombtype = 0;
			bombfuse = bombfusedefault;
			break;
			
			case 0: //Right, Flashbang
			bombtype = 1;
			bombfuse = bombfusedefault;
			break;
			
			case 1: //Up, Firecracker
			bombtype = 4;
			bombfuse = bombfusedefault;	
			break;
			
			case 2: //Left, Baseball (or brick)
			bombtype = 2;
			if brickmode bombtype = -10;
			//bombfuse = 999999; //Explodes on contact	
			bombfuse = bombfusedefault
			break;
			
			case 3: //Down, Finisher
			bombtype = 3;
			bombfuse = floor(bombfusedefault*1.5);	
			//bombfuse = floor(bombfusedefault*2);	
			break;
		}
hidden = 1;

/*
if attack == AT_TAUNT && secretcolor && window == 3 && window_timer == 5{


	


/*	if attack_down {sound_play(asset_get("mfx_player_ready")); //Pansexual (looks weird)
		set_color_profile_slot(5, 0, 255, 208, 0); //PURPLE FUR
		set_color_profile_slot(5, 1, 255, 58, 166); //TAN FUR
		set_color_profile_slot(5, 2, 0, 147, 226); //RED CLOTH
		set_color_profile_slot(5, 3, 51, 51, 51); //SHIRT
		set_color_profile_slot(5, 4, 0, 164, 229); //BOMBS
		set_color_profile_slot(5, 5, 255, 227, 119); //EMBERS
		set_color_profile_slot(5, 6, 4, 4, 4); //EYES?
		secretcolor = 0;
	}

}


