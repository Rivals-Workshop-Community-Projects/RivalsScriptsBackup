//

if my_hitboxID.attack == AT_NSPECIAL {
	var explosion = spawn_hit_fx(my_hitboxID.x+my_hitboxID.hsp,my_hitboxID.y+my_hitboxID.vsp,fx_nspecial_destroy);
	explosion.depth = depth-1;
	explosion.draw_angle = point_direction(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,my_hitboxID.x,my_hitboxID.y)-90;
	sound_stop(sound_get("sfx_hellfire_hit"));
	sound_play(sound_get("sfx_hellfire_hit"));
}
if my_hitboxID.attack == AT_NSPECIAL_2 {
	var explosion = spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,fx_nspecial_destroy);
	explosion.depth = depth-1;
	explosion.draw_angle = point_direction(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,my_hitboxID.x,my_hitboxID.y)-90;
	sound_stop(sound_get("sfx_hellfire_hit"));
	sound_play(sound_get("sfx_hellfire_hit"));
	my_hitboxID.parent.hitstop = 6;
}


if (my_hitboxID.attack == AT_UTILT) {
	utilt_hit = true;
}

if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 5) {
	sound_play(asset_get("sfx_ori_seinhit_heavy"));
}


//FSpecial Grab Code
if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_2){
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num == 1){
		fspecial_grab = true;
		hit_player_obj.spr_dir = -spr_dir;
		hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.8);
	    hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
	} 
	else if (my_hitboxID.hbox_num == 4) {
		fspecial_grab = false;
	}
	if (my_hitboxID.hbox_num > 1){
		blood_glow = -1.5;
		take_damage( player, -1, -my_hitboxID.damage/2);
		var i = 0;
		repeat(my_hitboxID.hbox_num == 4 ? 10 : 7){
			var blood_drip = spawn_hit_fx(my_hitboxID.x,my_hitboxID.y+12,fx_blood_drip);
			blood_drip.depth = -7;
			blood_drip.hsp = lengthdir_x(random_func_2(i,2,false)+2,random_func_2(i+10,90,true)+45);
			blood_drip.vsp = lengthdir_y(random_func_2(i,2,false)+2,random_func_2(i+10,90,true)+45);
			blood_drip.grav = .3;
			i++;
		}
	}
}
else {
	 fspecial_grab = false;
}

if my_hitboxID.attack == AT_DSPECIAL {
	spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,fx_fire_hit1);
}

if my_hitboxID.attack == AT_DATTACK {
	with my_hitboxID {
		stored_hsp = hsp;
		stored_vsp = vsp;
	}
	dattack_hit = 5;
	dattack_has_hit = 1;
}

if my_hitboxID.attack == AT_DSTRONG hit_player_obj.depth = depth-1;

if my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_DSTRONG {
	var angle = random_func_2(1,360,true);
	var spark = spawn_hit_fx(hit_player_obj.x +lengthdir_x(32,angle),hit_player_obj.y-hit_player_obj.char_height/2 +lengthdir_y(32,angle),fx_darkness_spark[random_func_2(3,2,true)]);
	spark.depth = hit_player_obj.depth-1;
	spark.hit_angle = angle;
}
if my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1 {
	var i = 0;
	repeat(4){
		var trail = spawn_hit_fx(x+ease_sineInOut(32,-32,random_func_2(i,40,true),40),y-16,fx_fatal_ray_debris_longer);
		trail.depth = depth-1;
		trail.hsp = lengthdir_x(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
		trail.vsp = lengthdir_y(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
		trail.grav = .45;
		trail.draw_angle = random_func_2(10+i,360,true);
		i++;
	}
}

if my_hitboxID.attack == AT_TAUNT {
	sound_play(sound_get("sfx_goblet_impact"));
	repeat(3){
		var trail = spawn_hit_fx(my_hitboxID.x+ease_sineInOut(8,-8,random_func_2(i,40,true),40),my_hitboxID.y,fx_glass_part[i]);
		trail.depth = depth+1;
		trail.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
		trail.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
		trail.grav = .25;
		trail.draw_angle = random_func_2(10+i,360,true);
		i++;
	}
}

var fx = -1;
if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2 sound_play(asset_get("sfx_forsburn_reappear_hit"),false,noone,1,0.75);
if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num < 5 { fx = fx_darkness_hit1; sound_play(asset_get("sfx_forsburn_reappear_hit"),false,noone,1,0.75); }
if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 5 { fx = fx_darkness_hit2; }
if my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 fx = 251;
if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1 { fx = fx_darkness_hit1; sound_play(asset_get("sfx_forsburn_reappear_hit"),false,noone,1,0.75); }
if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2 fx = fx_darkness_hit2;
if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 3 { fx = fx_darkness_hit1; sound_play(asset_get("sfx_forsburn_reappear_hit"),false,noone,1,0.75); }
   
if fx != -1 spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2,fx).depth = hit_player_obj.depth-1;