if (free == false && head_hit == false && was_parried == false && !super_armor 
&& (orig_knock < 12 || (enemy_hitboxID.kb_value < 5 && orig_knock < 14))){ //Change the orig_knock value to alter the armor threshold
	soft_armor = 12;
	state = prev_state;
	old_vsp = 0;
	old_hsp = 0;
	image_index = keep_image_index;
    state_timer = keep_state_timer;
    spr_dir = keep_spr_dir; //prevents projectiles with angle flippers from breaking armor.
    window = keep_window
    window_timer = keep_window_timer
    if (hitstop >= 10){
    	hitstop = 10;
    }
	
	//aesthetics
	var i = 0;
	var mist = spawn_hit_fx(x,max(round(enemy_hitboxID.y+enemy_hitboxID.hit_effect_y),y-char_height+48)-random_func_2(50,32,true),fx_mist_cloud_hit);
	mist.depth = depth-1;
	mist.grav = .01;
	mist.spr_dir = random_func_2(0,2,true)==0?-1:1;
	mist.scale = random_func_2(10,1,false)*.25;
	repeat(4){
		var dirto = get_hitbox_angle(enemy_hitboxID)+random_func_2(100+i,90,true)-45;
		var bat = create_hitbox(AT_EXTRA_5,random_func_2(110+i,2,true)+1,x,y-56);
		bat.length = bat.length-10;
		bat.depth = depth-1;
		bat.hsp = lengthdir_x(random_func_2(120+i,2,false)+1,dirto);
		bat.vsp = lengthdir_y(random_func_2(120+i,2,false)+1,dirto);
		i++;
	}
	sound_play(asset_get("sfx_ell_steam_hit"));
	sound_play(sound_get("sfx_bats_squeak_single"+string(random_func_2(0,3,true)+1)),0,0,.4);
	sound_stop(enemy_hitboxID.sound_effect);
	armorhit_shake_timer = 10;
}
else if (orig_knock > 1){
	head_hit = false;
	if (instance_exists(flame_pillar) && (flame_pillar.state == 0 || flame_pillar.state == 1)) flame_pillar.shoulddie = true;
	var random_voice;
	random_voice = random_func( 0, 17, true);
	if (got_hit_cooldown == 0 && synced_vars[0] == 1){
		got_hit_cooldown = 30;
		switch (random_voice){
			case 0:
			sound_play(damage1);
			break;
			case 1:
			sound_play(damage2);
			break;
			case 2:
			sound_play(damage3);
			break;
			case 3:
			sound_play(damage4);
			break;
			case 4:
			sound_play(damage5);
			break;
			case 5:
			sound_play(damage6);
			break;
			case 6:
			sound_play(damage7);
			break;
			case 7:
			sound_play(damage8);
			break;
			case 8:
			sound_play(damage9);
			break;
			case 9:
			sound_play(damage10);
			break;
			case 10:
			sound_play(damage11);
			break;
			case 11:
			sound_play(damage12);
			break;
			case 12:
			sound_play(damage13);
			break;
		}
	}
}

if attack == AT_DSTRONG {
	with pHitBox {
		if player_id == other {
			if attack == AT_DSTRONG {
				destroyed_next = 1;
			}
		}
		destroy_hitboxes();
	}
}

if attack == AT_DSPECIAL {
	sound_stop(sound_get("sfx_fire_pillar_charge"));
}