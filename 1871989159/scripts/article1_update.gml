
if !hitstop {

if !init {
print_debug("testing user event "+string(cool_giik_var))
	var quiet = 0;
	init = 1;
	visible = 1;
	
	if old_player_id.runeN {
		hbplayer = old_player_id.player;
	}
	if type == 3 {
	
		var already = 0;
		with (object_index) {
			if player_id == other.old_player_id && type == 3 && id != other.id {
				already = 1;
				break;
			}
		}
		
		if already {
			type = 0;
			fuse = old_player_id.bombfusedefault;
		}	
	}
	
				weight = 0.55;
				//weight = 0.4;
	switch(type) {
		default:
			sprite_index = sprite_get("bomb0");
			if old_player_id.holiday == 5 sprite_index = sprite_get("bomb0E");
			if old_player_id.holiday == 6 sprite_index = sprite_get("bomb0S");
			mask_index = sprite_get("bombmask");	
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			
			boomfx = old_player_id.fx_sprites[4]
			
			sound_play(sound_get("mollo_light"))
		break;
		case 1: //Flashbang init
			sprite_index = sprite_get("bomb1");
			mask_index = sprite_get("bombmask");
			sound_play(sound_get("mollo_canopen"));	
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			bounce_sound = sound_get("mollo_canbounce")
			boomfx = old_player_id.fx_sprites[5]
			
			sound_play(sound_get("mollo_light"))
		break;
		case 2: //Baseball init
			sprite_index = sprite_get("bomb2");
			mask_index = sprite_get("bombmask");
			weight = 0.45;
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			bounciness = 0.8;
			bounce_sound = sound_get("mollo_basebounce")
			//fuse -= poptime
			//pop_on_land = 1;
			kb_angle = 90;
			//fuse = 30+poptime;
			//fuse = 45;
			boomfx = old_player_id.fx_sprites[6]
			
			sound_play(sound_get("mollo_light"))
		break;
		case 3: //Finisher init
			sprite_index = sprite_get("bomb3");
			mask_index = sprite_get("bombmask");	
			sound_play(sound_get("towerclimb_fear"));
			weight = 0.8;
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			//popmin = 60;
			
			ground_fric = 0.2
			
			boomfx = old_player_id.fx_sprites[7];
			
			sound_play(sound_get("mollo_light"))
		break;
		case 4: //Firecracker init
		sound_play(sound_get("mollo_light"))
		case 5:
		case 6:
			sprite_index = sprite_get("bomb4");
			mask_index = sprite_get("bombmask");	
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			
			boomfx = old_player_id.fx_sprites[8];
			
			
		break;
		case 8: //Up B 
		case 9:
			sprite_index = sprite_get("upsparkle");
			mask_index = sprite_get("bombmask");	
			projectile = false;
			stasis = true;
			
			boomfx = old_player_id.fx_sprites[8]
			
			
			
		break;
		case 10: //Flaregun 
		sprite_index = sprite_get("bomb4");
		mask_index = sprite_get("bombmask");	
			visible = false;
			projectile = false;
			stasis = true;
			
			boomfx = old_player_id.fx_sprites[6]
			
		break;
		case -10: //Bricks
			sprite_index = sprite_get("bomb5");
			mask_index = sprite_get("bombmask");	
			bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			bombbox.bombowner = id;
			weight = 0.8;
			boomfx = old_player_id.fx_sprites[4]
			bounce_sound = asset_get("sfx_pillar_crumble")
		break;
	}
	
	if old_player_id.runeL pop_on_land = 1;
	//fusesound = quiet == 0 ? sound_play(sound_get("mollo_fuse"),1) : -1;
}

var oldhboxed = hitboxed;

if batted && !hitboxed && !literally_only_for_one_case {
sound_play(asset_get("mfx_player_ready"));
hitboxed += 1
literally_only_for_one_case = 1;
}

var ispopping = 0;
var splr = 0;
var unpop = (type == 3 && fuse <= 0)
if type < 8 && !batted with (asset_get("pHitBox")) {
	if other.bombbox != id /*&& (player != other.player or (!(attack == AT_DSPECIAL && (hbox_num == 3 or hbox_num == 4)) && !(attack == AT_DSPECIAL_2 && (hbox_num == 3))))*/ && place_meeting(x,y,other) && player != 0 && hit_priority > 0 {
			splr = (player_id == other.player_id)
/*			if type == 1 && !other.hitboxed{
			if !player_id.hitpause {
				player_id.old_hsp = player_id.hsp;
				player_id.old_vsp = player_id.vsp;
			}
			player_id.hitstop = max(other.player_id.hitstop, 2);
			player_id.hitstop_full = max(other.player_id.hitstop_full, 2);
			player_id.hitpause = true;
			other.hitstop = 2;
			}
*/
			
			var oldhsp = other.hsp;
			var old_angle = kb_angle;
			var new_angle = 0;
			if splr {
				with orig_player_id {
					new_angle = get_hitbox_value(other.attack, other.hbox_num, 99);
				}
				if new_angle != 0 kb_angle = new_angle;
			}
			if !(splr && attack == AT_EXTRA_1) other.hsp = lengthdir_x(kb_value/other.weight, get_hitbox_angle(id));
			if !(splr && attack == AT_EXTRA_1) other.vsp = lengthdir_y(kb_value/other.weight, get_hitbox_angle(id));
			
			kb_angle = old_angle;
			
			if !splr other.vsp *= 0.5;
			//if !splr other.hsp = abs(other.hsp)*sign(oldhsp);
			if !splr other.hsp *= 0.2;
			if splr && attack == AT_EXTRA_1 && hbox_num == 20 && instance_exists(bombowner) {
				bombowner.projectile = false;
			}
			
			if splr && (attack == AT_DSPECIAL or attack == AT_DSPECIAL_2) && (hbox_num == 3 or hbox_num == 4) {
				//sound_play(asset_get("mfx_player_ready"));
				sound_play(sound_get("mollo_bat"), 0, noone, 1, 0.7);
				sound_play(sound_get("mollo_bat"), 0, noone, 1, 0.4);
				other.cursound = sound_play(sound_get("whistle"), 0, noone, 1, 1.1);
				other.hsp = sign(other.hsp)*20
				other.vsp = -3
				other.batted = 1;
				other.pop_on_land = 1;
				if other.type == 2 {
					other.kb_angle = 180-40
					if other.hsp > 0 other.kb_angle = 40
				}
				if other.type == 3 {
					other.pop_on_land = 0;
					other.fuse = 0;
				}
			}
			
			if splr && !unpop other.fuse = max(other.fuse, other.popmin)
		other.free = true;
		if !other.hitboxed && !unpop {

			other.hitboxed += 1;
			other.projectile = true;
			
			if instance_exists(other.bombbox) instance_destroy(other.bombbox);
			other.bombbox = create_hitbox(AT_EXTRA_1,20,floor(x),floor(y))
			other.bombbox.bombowner = other.id;
			
			
			
		}
		if attack == AT_EXTRA_1 {
			fuse = 2;
		}
		ispopping = 1;
		break;
	}
}
if type == 3 && !unpop && !ispopping hitboxed = 0;

if hitboxed > oldhboxed && !unpop {
			
			sound_play(sound_get("mollo_pap"));
			sound_play(asset_get("sfx_player_ready"));
			fuse -= poptime;
			if (hitboxed & 1) && !(oldhboxed & 1) && splr fuse = max(fuse, popmin)
			
			
			var hfx = spawn_hit_fx(x,y,old_player_id.fx_sprites[3]);
			hfx.depth = depth-1;

}

if hitboxed && fuse mod 10 == 5 && poptime > 0 {
	spawn_hit_fx(x,y,old_player_id.fx_sprites[1]);
}

if fuse mod 4 == 2 && type < 8 && type != -10{
var smk = spawn_hit_fx(x+random_func(0, 20, 1)-10,y,old_player_id.fx_sprites[0] );
smk.spr_dir = -1+random_func(0, 1, 1)*2
}

if type >= 8 {
	x = xstart;
	y = ystart;
}

/*
if projectile {
	var didhit = 0;
	var hitted;
	if abs(hsp) >= 18 or abs(vsp) > 18 {
	
		hitted = instance_place(x-hsp/2,y-vsp/2,oPlayer);
		if hitted != noone && hitted != player_id && !hitted.invincible didhit = 1;
		
		if !didhit {
			hitted = instance_place(x,y,oPlayer);
			if hitted != noone && hitted != player_id && !hitted.invincible didhit = 1;
		} else {x -= hsp/2; y -= vsp/2;}
		
	} else {
		hitted = instance_place(x,y,oPlayer);
		if hitted != noone && hitted != player_id && !hitted.invincible didhit = 1;
	}
	

	if didhit {
		if type == 2 {fuse = 0; if instance_exists(bombbox) instance_destroy(bombbox);} else {
		if !(hitboxed & 2) {hitboxed += 2;
		sound_play(sound_get("mollo_pap"));
		fuse -= poptime; //was 30 previously

			var hfx = spawn_hit_fx(x,y,player_id.fx_sprites[2]);
			hfx.depth = depth-1;
		}
		if !hitted.hitpause {if !batted var tossbox = create_hitbox(AT_EXTRA_2,1,hitted.x-sign(hsp),hitted.y); else var tossbox = create_hitbox(AT_EXTRA_2,3,hitted.x-sign(hsp),hitted.y); tossbox.bombowner = id;}
		

			{ //Bonk
					sound_play(asset_get("sfx_blow_weak1"));
					if !batted {vsp = -2;
					hsp = sign(hsp)*-1
					} else {
					vsp = -2;
					hsp *= 0.4
					}
					projectile = 0;					
			}
		}
	}

}
*/


if !stasis {
	if hit_wall {hsp = hsp_prev*-1; sound_play(bounce_sound);
	batted = 0;
	if pop_on_land fuse = 1;
	}
	vsp += gravity_speed;
//	if type == 0 or type == 3 rolling = true;
	can_be_grounded = (vsp >= 0 && free == false);
	if free == false {
		
	//sound_play(asset_get("sfx_birdflap"));
		if pop_on_land fuse = 1;
		if vsp_prev <= 1.5 && vsp_prev >= 0 {
			
			vsp = 0;
			vsp_prev = 0;
			y = ceil(y)
			hsp -= sign(hsp)*ground_fric;
			projectile = false;
			
			if abs(hsp) < 1 && hsp != 0 {rolling = false; hsp = 0;}		

			
		} else {
			if point_distance(0, 0, hsp_prev, vsp_prev) < lose_hb_speed projectile = false;		
			//can_be_grounded = false;
			free = true;
			if vsp_prev > 0 {vsp = abs(vsp_prev) * -bounciness} else {vsp = -abs(vsp_prev) * -bounciness}
			y = floor(y)
			hsp *= 0.7;
			var ss = sound_play(bounce_sound);
			//audio_sound_pitch(ss, 2)
			if type == 1 or type == 2 or type == 4 rolling = false;
		}
	} else {
		if fuse > 1 && !(hitboxed & 2) && !batted kb_angle = point_direction(0,0,hsp,vsp)
	}
	//if batted && type == 2 { //Baseballs flying straight
		//hsp = -20*spr_dir;
	//	vsp = 0;
	//}
}
if type >= 8 rolling = false;
if rolling image += abs(hsp)/20 else image = (fuse+60)/4
image = (image mod 4)
image_index = image + (!(projectile && !stasis)*4)
if type == 3 { if fuse <= -60+25 image_index = 8 + (5-((fuse+60)/5));
	if fuse <= 0 && fuse mod 20 == 0 sound_play(asset_get("sfx_propeller_dagger_loop"));
	if fuse <= 4 && fuse >= -40 && (fuse+60) mod 20 <= 4 image_index = 9;
}


if position_meeting(x, y, asset_get("plasma_field_obj")) {
	type = -1;
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(x,y,old_player_id.fx_sprites[3])
}

if x < -32 or x > room_width+32 or y > room_height+32 type = -2 + !(type != 8 && type != 9 && type != 2 && type != -10) ;
fuse -= 1+hand*0.6;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// NEW BASEBALL BEHAVIOR
/*
if type == 2 && !hitboxed {
fuse += 1;
}
*/

if fuse <= 0 {
		x = floor(x);
		y = floor(y);
		if fusesound >= 0 sound_stop(fusesound)
		switch(type) {
		case -2:
			type = -1;
			sound_play(sound_get("mollo_boomdistant"));
		break;
		default:
			var tossdir = create_hitbox(AT_EXTRA_1,1,x,y);
			tossdir.player = hbplayer;
			var tossbox = create_hitbox(AT_EXTRA_1,2,x,y);
			tossbox.player = hbplayer;
			tossbox.hbox_num = tossdir.hbox_num
			
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(8,tossdir)
				vsp = lengthdir_y(-8,tossdir)
				y -= 1;
				free = true;
				if old_player_id.runeB {
					fuse = 2;
				}
			}
			spawn_hit_fx(x,y,boomfx)
			sound_play(sound_get("mollo_boom"));
			
			sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
			type = -1;
		break;
		case 1: //Flashbang
			create_hitbox(AT_EXTRA_1,3,x,y);
			var tossbox = create_hitbox(AT_EXTRA_1,3,x,y);
			tossbox.player = hbplayer;
			var tossdir;
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(5,tossdir)
				vsp = lengthdir_y(-5,tossdir)
				y -= 1;
				free = true;
				if old_player_id.runeB {
					fuse = 2;
				}
			}
			spawn_hit_fx(x,y,boomfx)
			
			sound_play(sound_get("mollo_flashbang"));
			type = -1;
		break;
		case 2: //Baseball
			spr_dir = 1;
			if instance_exists(bombbox) instance_destroy(bombbox);
			var tossbox = create_hitbox(AT_EXTRA_1,4,x,y);
			tossbox.player = hbplayer;
			tossbox.kb_angle = (kb_angle + 180) mod 360
			
			if tossbox.kb_angle > 180 {
				tossbox.kb_angle -= (tossbox.kb_angle-180)*2
			}
			
			var tossdir;
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(10,tossdir)
				vsp = lengthdir_y(-10,tossdir)
				y -= 1;
				free = true;
				if old_player_id.runeB {
					fuse = 2;
				}
			}
			spawn_hit_fx(x,y,boomfx)
			sound_play(sound_get("mollo_pop"));
			if hitboxed or batted sound_play(sound_get("mollo_boom"));;
			type = -1;
		break;
		case 3: //Finisher
		if fuse <= -60 {
			
			var tossbox = create_hitbox(AT_EXTRA_1,6,x,y);
			tossbox.player = hbplayer;
			var tossdir = create_hitbox(AT_EXTRA_1,5,x,y);
			tossdir.player = hbplayer;
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(10,tossdir)
				vsp = lengthdir_y(-10,tossdir)
				y -= 1;
				free = true;
				if old_player_id.runeB {
					fuse = 2;
				}
			}
			spawn_hit_fx(x,y,boomfx)
			sound_play(sound_get("mollo_boombig"));
			sound_play(sound_get("mollo_boom"));
			sound_play(asset_get("sfx_ell_uspecial_explode"));
			type = -1;
		}
		break;
		case 4: //Firecracker
		
		case 5:
		case 6:
		sound_play(sound_get("mollo_pop"));
		fuse = 8;
		
		type++;
		case 7:
		sound_play(sound_get("mollo_crackle"));
		
		if type == 7 && fuse <= 0 sound_play(sound_get("mollo_boomQ"));
		
		spawn_hit_fx(x,y,old_player_id.fx_sprites[6])
		
		
			var tossbox = create_hitbox(AT_EXTRA_1,7+(type == 7 && fuse > 0)*3,x,y);
			if type < 8 tossbox.player = hbplayer;
			var tossdir;
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(4,tossdir)
				vsp = lengthdir_y(-4.5,tossdir)
				y -= 1;
				free = true;
				if old_player_id.runeB {
					fuse = 2;
				}
			}
			hsp += 1-(type & 1)*2;
			rolling = true;
			
			
			spawn_hit_fx(x,y,boomfx)
			
			if fuse <= 0 type = -1;
		break;
		case 8: //Up B
		sound_play(sound_get("mollo_crackle"));
		case 9:
			var tossbox = create_hitbox(AT_EXTRA_1,11,x,y);
			if type < 8 tossbox.player = hbplayer;
			
			var tossdir;
			with (object_index) {
				if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
				tossdir = point_direction(other.x,other.y,x,y+4);
				hsp = lengthdir_x(-4,tossdir)
				vsp = -abs(lengthdir_y(-8,tossdir))
				y -= 1;
				free = true;

			}
			
			hsp += 1-(type & 1)*2;
			rolling = true;
			
			
			spawn_hit_fx(x,y,boomfx)
			if fuse <= 0 type = -1;
		break;
		case 10: //Flaregun pop
		type = -1;
		sound_play(sound_get("mollo_pop"));
		var tossbox = create_hitbox(AT_EXTRA_1,8,floor(x),floor(y))
		tossbox = create_hitbox(AT_EXTRA_2,2,floor(x),floor(y))
		with (object_index) {
			if id == other.id or player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
			free = true;
			vsp -= 10
			hsp += -sign(x-other.x)*2;

				fuse = min(fuse, popmin_flare);
				popmin = popmin_flare
				print_debug("Fuse set to "+string(fuse))

		}
		instance_destroy(tossbox);
		spawn_hit_fx(floor(x),floor(y),boomfx)

		break;
		
		case -10:
		type = -1;
		
		break;
		}
}
if instance_exists(bombbox) {
if !projectile {
	instance_destroy(bombbox);
	bombbox = noone;
	
} else {
	bombbox.length++;
	bombbox.x = x;
	bombbox.y = y;
	/*
	if type == 2 {
		bombbox.damage = (charge/60)*7
		bombbox.kb_value = 2+((charge/60)*6)
		bombbox.kb_scale = 0.3*(charge/60)
		bombbox.force_flinch = 0;
		bombbox.kb_angle = 45
		bombbox.hitstun_factor = 0.4
	}
	*/
	
	if type == -10 && !stasis{
	spr_dir = sign(hsp)
	bombbox.spr_dir = spr_dir
	
	var d = point_distance(0, 0, hsp, vsp)
		bombbox.damage = floor(min(d/2, 8))
		bombbox.kb_value = floor(min(d/2, 7))
		bombbox.kb_scale = 0.5
		bombbox.kb_angle = 60
		bombbox.force_flinch = 0;
		bombbox.sound_effect = asset_get("sfx_blow_heavy1")
		bombbox.hit_flipper = 0;
	}
	
}
} else {
	projectile = false;
	bombbox = noone;
} 

hsp_prev = hsp;
vsp_prev = vsp;
if type < 8 stasis = 0;

if type == -1 {
//if fusesound >= 0 sound_stop(fusesound)
if cursound >= 0 sound_stop(cursound);
instance_destroy();

}

//	set_color_profile_slot(4,5,random_func(0,255,true),random_func(1,255,true),random_func(2,255,true));
//set_color_profile_slot(4,2,random_func(0,255,true),random_func(1,255,true),random_func(2,255,true));
}
