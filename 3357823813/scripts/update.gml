//
//temp_dialogue
if dialogue_test == 1 {
	dialogue_timer++;
	switch dialogue_state {
		case 0: 
			if dialogue_timer >= 80 {
				dialogue_state++; 
				dialogue_timer = 0;
			}
			break;
		case 2: 
			if dialogue_timer >= 26 {
				dialogue_state++; 
				dialogue_timer = 0;
				dialogue_page = 0;
			}
			break;
	}
}


//DSpecial startup slower when aerial (with no flame pillar out)
if (free && !instance_exists(flame_pillar)) set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
else reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH);

if (got_hit_cooldown > 0) got_hit_cooldown--;

//AESTHETIC
if armorhit_shake_timer > 0 {
	if armorhit_shake_timer % 3 == 0 armorhit_shake_pos = [random_func_2(0,4,true),y]; 
	if !hitpause draw_x = armorhit_shake_pos[0];
	armorhit_shake_timer--;
}

if state == PS_WALL_JUMP {
	if state_timer == 0 sound_play(sound_get("sfx_cape_swipe_hard2"));
}

if state == PS_PARRY {
	if (state_timer >= 0 && state_timer <= 5) && state_timer % 2 == 0 {
		if state_timer == 0 sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
		for (var i = 0; i < 2; i++){
			var dirto = random_func_2(i,180,true);
			var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
			bat.length = bat.length+10;
			bat.depth = depth+1;
			bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
			bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
		}
	}
}

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) {
	if state_timer == 0 {
		sound_stop(asset_get("sfx_roll"));
		sound_play(asset_get("sfx_forsburn_disappear"));
		sound_play(sound_get("sfx_bats_flap"),0,0,.3);
		sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.3);
	}
	if state_timer >= 3 && state_timer <= 16 {
		hud_offset = room_height;
		if state_timer == 3 spawn_hit_fx(x,y,fx_roll).is_roll_end = 0;
		if (state_timer-3)%5 == 0 || state_timer == 16 { 
			var mist = spawn_hit_fx(x,y-48,fx_mist_cloud);
			mist.depth = depth+1;
			mist.hsp = hsp/15;
			mist.grav = .05;
			mist.draw_angle = random_func_2(0,360,true);
			mist.scale = random_func_2(30+i,1,false)*.25;
		}
	} else {
		hud_offset = 0;
	}
	if state_timer == 16 {
		var roll_end = spawn_hit_fx(x+hsp,y,fx_roll);
		roll_end.depth = depth-1;
		roll_end.is_roll_end = 1;
	}
	if (state_timer >= 3 && state_timer <= 8) && state_timer % 2 == 0 {
		for (var i = 0; i < 2; i++){
			var dirto = !spr_dir ? random_func_2(i,20,true) : 180-random_func_2(i,20,true);
			var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
			bat.depth = depth+1;
			bat.hsp = lengthdir_x(random_func_2(20+i,4,false)+1,dirto);
			bat.vsp = lengthdir_y(random_func_2(20+i,4,false)+1,dirto);
		}
	}
}

if (state == PS_AIR_DODGE) {
	if state_timer >= 3 && state_timer <= 14 {
		hud_offset = room_height;
		if state_timer == 3 spawn_hit_fx(x,y,fx_airdodge).is_roll_end = 0;
		if state_timer == 14 {
			var mist = spawn_hit_fx(x,y,fx_airdodge);
			mist.depth = depth-1;
			mist.is_roll_end = 1;
		}
		if (state_timer-3)%5 == 0 || state_timer == 16 { 
			var mist = spawn_hit_fx(x,y-48,fx_mist_cloud);
			mist.depth = depth+1;
			mist.hsp = hsp/15;
			mist.grav = .05;
			mist.draw_angle = random_func_2(0,360,true);
			mist.scale = random_func_2(30+i,1,false)*.25;
		}
	} else {
		hud_offset = 0;
	}
	if (state_timer >= 2 && state_timer <= 8) && state_timer % 2 == 0 {
		if state_timer == 2 {
			sound_play(sound_get("sfx_bats_flap"),0,0,.35);
			sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
		}
		for (var i = 0; i < 2; i++){
			var dirto = point_direction(0,0,hsp,vsp);
			var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
			bat.depth = depth+1;
			bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
			bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
		}
	}
}

if (state == PS_TECH_GROUND) {
	if (state_timer >= 2 && state_timer <= 8) && state_timer % 2 == 0 {
		if state_timer == 2 {
			sound_play(sound_get("sfx_bats_flap"),0,0,.35);
			sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.35);
		}
		for (var i = 0; i < 2; i++){
			var dirto = random_func_2(i,180,false);
			var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x,y-56);
			bat.depth = depth+1;
			bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+1,dirto);
			bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+1,dirto);
		}
	}
}

if (state == PS_WAVELAND) {
	if state_timer == 0 {
		var mist = spawn_hit_fx(x,y,fx_airdodge);
		mist.depth = depth-1;
		mist.is_roll_end = 1;
	}
	if (state_timer-3)%5 == 0 && state_timer < 20 { 
		var mist = spawn_hit_fx(x,y-48,fx_mist_cloud);
		mist.depth = depth+1;
		mist.hsp = hsp/15;
		mist.grav = .05;
		mist.draw_angle = random_func_2(0,360,true);
		mist.scale = random_func_2(30+i,1,false)*.25;
	}
}

if (state == PS_PRATFALL) {
	draw_y = room_height;
	if state_timer%15 == 0 { 
		for (var i = 0; i < 2; i++){
			var angle = (spr_dir!=1?random_func_2(i,90,true)+90:random_func_2(i,90,true))%360;
			var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x-16*spr_dir,y-32);
			bat.depth = depth+1;
			bat.hsp = lengthdir_x(random_func_2(20+i,4,false)+1,angle);
			bat.vsp = lengthdir_y(random_func_2(20+i,4,false)+1,angle);
			bat.spr_dir = sign(bat.hsp);
			bat.grav = -.02;
		}
	}
	if (state_timer-3)%8 == 0 { 
		var mist = spawn_hit_fx(x,y-48,fx_mist_cloud);
		mist.depth = depth+1;
		mist.hsp = hsp/15;
		mist.grav = .05;
		mist.draw_angle = random_func_2(0,360,true);
		mist.scale = random_func_2(30+i,1,false)*.25;
	}
}

if state == PS_RESPAWN || plat_test {
	draw_y = -room_height;
	move_cooldown[AT_TAUNT] = 2;
	if taunt_pressed respawn_taunt = 1;
}

if get_player_color(player) == 11 && (free || state == PS_ATTACK_GROUND) && state_timer%6 == 5 CreateAfterimage();

with hit_fx_obj {
	if other == player_id {
		if hit_fx == other.fx_blood_hit1 ||
		   hit_fx == other.fx_blood_hit2 {
			with oPlayer {
				if player == other.hit_player var target_player = player;
			}
			depth = other.depth-1;
		}
		if hit_fx == other.fx_fire_hit1 {
			depth = -7;
		}
		if hit_fx == other.fx_nspecial {
			if step_timer <= 1 start_frame = random_func_2(i+20,4,true);
			image_angle -= sign(hsp);
		}
		if hit_fx == other.fx_nspecial {
			follow_id = player_id;
			x = other.x +50*other.spr_dir;
			y = other.y -40;
		}
		if hit_fx == other.fx_nspecial_trail  {
			if hsp != 0 { hsp -= .4*spr_dir; }
		}
		if hit_fx == other.fx_fspecial {
			if hsp != 0 { hsp -= .3*spr_dir; }
			if (step_timer-3)%5 == 0 && abs(hsp) > 2 && step_timer < 18 { 
				with other {
					var mist = spawn_hit_fx(other.x,other.y-48,fx_mist_cloud);
					mist.depth = other.depth+1;
					mist.hsp = other.hsp/15;
					mist.grav = .05;
					mist.draw_angle = random_func_2(0,360,true);
					mist.scale = random_func_2(30+i,1,false)*.25;
				}
			}
		}
		if hit_fx == other.fx_uspecial || hit_fx == other.fx_uspecial_air {
			image_yscale = room_height;
			if step_timer >= 15 { if type == 1 { depth = other.depth-1; } else { depth = other.depth+1; }}
			if step_timer >= 18 && step_timer%4 == 0{
				var pillar = self;
				with other {
					for (var i = 0; i < 15; i++){
						if pillar.type == 1 {
							var sparks = spawn_hit_fx(pillar.x+random_func_2(i,25,true)-12,pillar.y-i*48 -random_func_2(20+i,16,true),fx_uspecial_sparks);
							sparks.vsp = -random_func_2(10+i,2,false)-1;
							sparks.grav = -.1;
							if pillar.y-i*48 < 0 break;
						} else {
							var sparks = spawn_hit_fx(pillar.x+random_func_2(i,25,true)-12,i*48 +random_func_2(20+i,16,true),fx_uspecial_sparks);
							sparks.vsp = random_func_2(40+i,2,false)+1;
							sparks.grav = .1;
							if i*48 > pillar.y break;
						}
					}
				}
			}
			if hit_fx == other.fx_uspecial_air { spr_dir = .5*sign(spr_dir); }
		}
		if hit_fx == other.fx_uspecialglow || hit_fx == other.fx_uspecial_airglow {
			image_yscale = room_height;
			if step_timer >= 15 if type == 1 { depth = other.depth-1; } else { depth = other.depth+1; }
			if step_timer < 14 {
				spr_dir = lerp(0,1.8,step_timer/(hit_length-10));
			} else {
				spr_dir = lerp(1.3,.2,(step_timer-14)/(hit_length-14));
			}
			spr_dir *= hit_fx == other.fx_uspecial_airglow?.5*sign(spr_dir):1;
		}
		if hit_fx == other.fx_uspecial_impact || hit_fx == other.fx_uspecial_air_impact {
			spr_dir = ease_sineIn(0,15,step_timer,hit_length)/10;
			spr_dir *= hit_fx == other.fx_uspecial_air_impact?.5*sign(spr_dir):1;
			image_yscale = lerp(3,0,step_timer/hit_length);
		}
		if hit_fx == other.fx_uspecial_sparks {
			image_angle = vsp *8;
		}
		if hit_fx == other.fx_dspecial_trail {
			spr_dir = lerp(.5,1,step_timer/hit_length)*flip;
			image_yscale = lerp(.5,1,step_timer/hit_length);
		}
		if hit_fx == other.fx_dspecial_ember {
			spr_dir = lerp(.6,1,step_timer/8)*sign(spr_dir);
			image_yscale = abs(spr_dir);
		}
		if hit_fx == other.fx_dspecial_sparks {
			hsp = dsin(sinx)*fx_speed;
			sinx += 25*spr_dir;
		}
		if hit_fx == other.fx_roll ||
		   hit_fx == other.fx_airdodge {
			if step_timer == 0 && is_roll_end {
				step_timer = lerp(0,24,3/7);
			}
		}
		if hit_fx == other.fx_mist_cloud {
			spr_dir = lerp(.9,.75,step_timer/hit_length)+scale;
			image_yscale = lerp(.9,.75,step_timer/hit_length)+scale;
			draw_angle += -.5*sign(hsp);
		}
		if hit_fx == other.fx_mist_cloud_hit {
			spr_dir = lerp(.5,1,step_timer/hit_length)*sign(spr_dir);
			image_yscale = lerp(1,.75,step_timer/hit_length);
		}
		if hit_fx == other.fx_darkness_rift[0] ||
		   hit_fx == other.fx_darkness_rift[1] ||
		   hit_fx == other.fx_darkness_rift[2] {
			if other.hitpause var pause_fx = 1; else var pause_fx = 0;
			x = other.x;
			y = other.y -128;
			if step_timer < 6 {
				spr_dir = ease_sineIn(0,22,step_timer,6)/10;
			} else if step_timer >= 20 {
				spr_dir = lerp(2.5,0,(step_timer-24)/10);
			} else {
				spr_dir = hit_fx == other.fx_darkness_rift[2] ? 0 : 2.2+dsin((step_timer-6)*10)*.2;
			}
			image_yscale = spr_dir;
			draw_angle += pause_fx ? 0 : turn_speed;
			if pause_fx step_timer--;
			if hit_fx == other.fx_darkness_rift[0] {
				if get_gameplay_time() % 2 == 0 && !other.hitpause {
					with other {
						var dist = ease_circOut(0,48,random_func_2(0,8,true)+24,32);
						var angle = random_func_2(1,360,true);
						var spark = spawn_hit_fx(other.x +lengthdir_x(dist,angle),other.y +lengthdir_y(dist,angle),fx_darkness_spark[random_func_2(3,2,true)]);
						spark.depth = other.depth-3;
						spark.hit_angle = random_func_2(2,360,true);
					}
				}
				if get_gameplay_time() % 5 == 0 && step_timer < 20 {
					for (var i = 0; i < 2; i++){
						var angle = random_func_2(i,360,true);
						with other var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,other.x+round(lengthdir_x(96,angle)),other.y+round(lengthdir_y(96,angle)));
						bat.length = bat.length-15;
						bat.depth = depth-2;
						bat.hsp = lengthdir_x(-4,angle);
						bat.vsp = lengthdir_y(-4,angle);
					}
				}
			}
			if other.state != PS_ATTACK_AIR && step_timer < 30 {
				step_timer = 30;
				sound_stop(asset_get("sfx_absa_jabloop"));
			}
		}
		if hit_fx == other.fx_dust_leap ||
		   hit_fx == other.fx_hitsurface_bg ||
		   hit_fx == other.fx_shockwave_sparks {
			uses_shader = -1;
		}
		if hit_fx == other.fx_fatal_ray_debris ||
		   hit_fx == other.fx_fatal_ray_debris_longer {
			spr_dir = lerp(2,1.5,step_timer/hit_length);
			image_yscale = lerp(2,1.5,step_timer/hit_length);
			if hit_fx == other.fx_fatal_ray_debris draw_angle += -sign(hsp)*5;
		}
		if hit_fx == other.fx_demonic_megiddo_impact {
			spr_dir = step_timer < 30 ? ease_sineIn(0,2,step_timer,30) : ease_sineIn(20,16,step_timer-30,30)/10;
			image_yscale = spr_dir;
			if other.state != PS_ATTACK_GROUND && other.attack != AT_DSTRONG step_timer = 60;
		}
		if hit_fx == other.fx_demonic_megiddo_debris[0] ||
		   hit_fx == other.fx_demonic_megiddo_debris[1] ||
		   hit_fx == other.fx_demonic_megiddo_debris[2] {
			spr_dir = step_timer < 20 ? 1 : ease_sineOut(1,0,step_timer-20,10);
			image_yscale = spr_dir;
			draw_angle += -10;
		}
		if hit_fx == other.fx_darkness_spark[0] ||
		   hit_fx == other.fx_darkness_spark[1] {
			spr_dir -= .1;
			image_yscale = spr_dir;
		}
		if hit_fx == other.fx_fire_hit1 ||
		   hit_fx == other.fx_blood_hit1 ||
		   hit_fx == other.fx_blood_hit2 ||
		   hit_fx == other.fx_blood_drip ||
		   hit_fx == other.fx_nspecial ||
		   hit_fx == other.fx_nspecial_trail ||
		   hit_fx == other.fx_nspecial_destroy ||
		   hit_fx == other.fx_nspecial2_trail ||
		   hit_fx == other.fx_nspecial2_glow ||
		   hit_fx == other.fx_uspecial ||
		   hit_fx == other.fx_uspecialglow ||
		   hit_fx == other.fx_uspecial_air ||
		   hit_fx == other.fx_uspecial_airglow ||
		   hit_fx == other.fx_uspecial_impact ||
		   hit_fx == other.fx_uspecial_air_impact ||
		   hit_fx == other.fx_uspecial_sparks {
			uses_shader = 0;
		}
		if hit_fx == other.fx_darkness_hit1 ||
		   hit_fx == other.fx_darkness_hit2 ||
		   hit_fx == other.fx_fatal_ray_big {
			depth = -7;
		}
	}
}

if (state_timer == 0) {
	sound_stop(sound_get("sfx_rapidjab"));
}

//dash armor
if (free == false){
    soft_armor = 0.0001 //extremely negligible soft armor that tricks the game into turning his hurtbox blue, will remove if this actually becomes an issue
    keep_image_index = image_index;
    keep_state_timer = state_timer;
    keep_spr_dir = spr_dir;
    keep_window = window;
    keep_window_timer = window_timer;
}

if (!instance_exists(head_hurtbox) && (state != PS_ATTACK_GROUND || attack != AT_DSTRONG)){
    head_hurtbox = instance_create( x, y, "obj_article2");
}

if(!hitpause){
	if(head_hit > 0){
		head_hit--;
	}
}
else {
	sound_stop(sound_get("sfx_demonic_megiddo"));
	sound_stop(sound_get("vo_HAAAHHH"));
}

//Decrease blood glow when not hitting with fspecial
if(blood_glow < 0){
	blood_glow+=0.075;
	//print(blood_glow);
}



// update afterimage array
if get_player_color(player) == 11 {
	var newArray = 0;
	for (var i = 0; i < array_length_1d(alucard_afterimage_array); ++i)
	{
		var obj = alucard_afterimage_array[i];
		if get_gameplay_time() % 2 == 0 {
			if obj.moving {
				obj.x += lengthdir_x(2,obj.dir); obj.x = round(obj.x);
				obj.y += lengthdir_y(2,obj.dir); obj.y = round(obj.y);
			}
		}
		if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
	}
	alucard_afterimage_array = newArray;
}

//Put this above all the #defines in your script
prep_hitboxes();

#define CreateAfterimage(){
    alucard_afterimage_array[array_length_1d(alucard_afterimage_array)] = {x:x+draw_x, y:y+draw_y, moving:(point_distance(0,0,hsp,vsp) == 0 ? 0 : 1), dir:point_direction(0,0,hsp,vsp), spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:c_white, timer:0, timerMax:30};
}

//Put this at the very bottom of the script, with the rest of your #defines.
#define prep_hitboxes
//Applies the hitbox sprites and prepares them to be drawn (with color!)
with (pHitBox) if player_id == other {
    if ("col" not in self && "dont_color" not in self) {
        with other {
            other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
            if other.col == 0 other.col = c_red;
            other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
            other.draw_colored = true;
            if other.type == 1
                other.sprite_index = __hb_hd_spr[other.shape];
            else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                other.mask_index = __hb_hd_spr[other.shape];
            else 
                other.draw_colored = false;
            other.draw_spr = __hb_draw_spr;
        }
    }
	if attack == AT_DSTRONG {
		if type == 2 {
			mask_index = sprite_get("hitbox_dstrong");
		}
	}
}



//print(window_timer);
print("Head hit: " + string(head_hit))