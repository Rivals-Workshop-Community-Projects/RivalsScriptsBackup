///





if move_cooldown[AT_FTILT] > 1{
	if state != PS_HITSTUN {
		state = PS_HITSTUN
	}
	x = ohsp + (1 - (get_gameplay_time()%3))*5
	y = ovsp 
	state_timer -= 1
}

if move_cooldown[AT_FTILT] == 1{ 
	move_cooldown[AT_FTILT] = 0
}

if !hitpause {
	if get_gameplay_time() %2 == 0
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if get_gameplay_time() <= 1 {
	x += 40*spr_dir
	set_attack(AT_EXTRA_3)
	window = 1
	window_timer = 0
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if attackbar != 0 && !hitpause {
		if get_gameplay_time() % 2 == 0 {
		shake_camera (1,1)
		}
		suppress_stage_music( 0.3, 10 );	
		
	if barpause <= 0 {	
	attackbar += 1 
	} else {
		barpause -= 1
	}
	
if attackbar >= 20 && attackbar < 50 {
    dmgmul = 1.5
}

if attackbar >= 50 && attackbar < 75 {
    dmgmul = 2
}

if attackbar >= 75 && attackbar < 105 {
    dmgmul = 3
}

if attackbar >= 105 && attackbar < 128 {
    dmgmul = 2
}

if attackbar >= 128 && attackbar < 158 {
    dmgmul = 1.5
}

if attackbar < 20 or attackbar > 158 {
    dmgmul = 0
}

}

if attackbar == 180 {
	attackbar = 0
	shake_camera (2,4)
	sound_play(sound_get("nspecdis"))
	 move_cooldown [AT_NSPECIAL] = 180
}

if attackbar == 0 and attack != AT_TAUNT {
	sound_stop(cur_sound)
	barpause = 0
}

if move_cooldown [AT_NSPECIAL] = 179 && heartbroke = 0 {
	
	heartbroke = 1
	spawn_hit_fx (x,y + 16, hb1)
	 sound_play(sound_get("fstrong1"),false,noone,0.4)
	 	sound_stop(cur_sound)
}


if move_cooldown [AT_NSPECIAL] == 15 && heartbroke = 1{
	spawn_hit_fx (x,y + 16, hb2)
	 sound_play(sound_get("fstrong2"),false,noone,0.4)
}

if move_cooldown[AT_NSPECIAL] = 0 {
		heartbroke = 0
}

if move_cooldown[AT_NSPECIAL] > 1 && move_cooldown[AT_NSPECIAL] < 15 && heartbroke = 1{
alt = get_player_color(player);

Rline = get_color_profile_slot_r ( alt , 0 )
Gline = get_color_profile_slot_g ( alt , 0 )
Bline = get_color_profile_slot_b ( alt , 0 )

			outline_color = [move_cooldown[AT_NSPECIAL]/5 * Rline , 
			move_cooldown[AT_NSPECIAL]/15 * Gline, 
			move_cooldown[AT_NSPECIAL]/15 * Bline]

}
init_shader();

if move_cooldown[AT_NSPECIAL] == 1 {
				outline_color = [0,0,0]
}
init_shader();

if esave > 1 && !hitpause{
	esave -= 1
}

if hit_player_obj.state == PS_DEAD or hit_player_obj.state == PS_RESPAWN {

  esave = 0

}

if state == PS_AIR_DODGE && state_timer == 2{
	sound_play(sound_get("ting"))
}

if esave == 2 {
	shake_camera (2,4)
	sound_play(sound_get("ting"))
	spawn_hit_fx (hit_player_obj.x, hit_player_obj.y- 20, 302)
	saveid.x = esavex
	saveid.y = esavey
	esave = 0
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
	specialing = 0
}


if !free or (state_cat == SC_HITSTUN && hit_player_obj != self) {
	move_cooldown[AT_USPECIAL] = 0
	if state_cat == SC_HITSTUN {
	move_cooldown[AT_FSPECIAL] = 0
	}
	wjcap = 0
}


if (state == PS_WALL_JUMP){
	wjcap += 1
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0
}

if wjcap > 0 {
	has_walljump = false
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 13{
	 	if state_timer % 7 == 0 {
	 	sound_play(sound_get("click"));	
	 	}
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 13 and state_timer < 15 {
	     hsp = -50 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 18 {
	 }
	  
	 if state_timer == 18 {
	 	sound_play(sound_get("click"));	
	     hsp = 0
	 }
	 
}


if get_player_color(player) = 13 {
	hue += 4
	
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around
	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
}
init_shader();


/////////music

if songcd > 50 {
	songcd -= 1
	if !hitpause {
	shake_camera(1,10)
	}
	
	  suppress_stage_music(0.6, 1 );
}


if songcd == 120 {
	if songplay % 12 == 0 {
			sound_stop(sound_get("megalo12"))
	sound_play(sound_get("megalo1"),false,noone,1)
	}
	if songplay % 12 == 1 {
		sound_stop(sound_get("megalo1"))
	sound_play(sound_get("megalo2"),false,noone,1)	
	}
	if songplay % 12 == 2 {
			sound_stop(sound_get("megalo2"))
	sound_play(sound_get("megalo3"),false,noone,1)	
	}
	if songplay % 12 == 3 {
		sound_stop(sound_get("megalo3"))	
	sound_play(sound_get("megalo4"),false,noone,0.84)	
	}
	if songplay % 12 == 4 {
		sound_stop(sound_get("megalo4"))	
	sound_play(sound_get("megalo5"),false,noone,0.84)	
	}
		if songplay % 12 == 5 {
		sound_stop(sound_get("megalo5"))	
	sound_play(sound_get("megalo6"),false,noone,0.84)	
	}
		if songplay % 12 == 6 {
		sound_stop(sound_get("megalo6"))	
	sound_play(sound_get("megalo7"),false,noone,0.84)	
	}
		if songplay % 12 == 7 {
		sound_stop(sound_get("megalo7"))	
	sound_play(sound_get("megalo8"),false,noone,0.84)	
	}
		if songplay % 12 == 8 {
		sound_stop(sound_get("megalo8"))	
	sound_play(sound_get("megalo9"),false,noone,0.84)	
	}
		if songplay % 12 == 9 {
		sound_stop(sound_get("megalo9"))	
	sound_play(sound_get("megalo10"),false,noone,0.84)	
	}
		if songplay % 12 == 10 {
		sound_stop(sound_get("megalo10"))	
	sound_play(sound_get("megalo11"),false,noone,0.84)	
	}
		if songplay % 12 == 11 {
		sound_stop(sound_get("megalo11"))	
	sound_play(sound_get("megalo12"),false,noone,0.84)	
	}
}

if get_player_color(player) == 15 {
	
	if !free && hsp = 0 && state_cat != SC_HITSTUN && !attacking{
		songcd2 = 0
		sound_stop(sound_get("bl1"))
		sound_stop(sound_get("bl2"))
	}
	if (free or hsp != 0 or attacking) && state_cat != SC_HITSTUN {
				  suppress_stage_music(0.5, 40 );
    }
	if songcd2 != 0 {
		songcd2 -= 1
	}
	
	if (free or hsp != 0 or attacking) && state_cat != SC_HITSTUN{
		  suppress_stage_music(0.8, 1 );	
	}
	if (free or hsp != 0 or attacking) && songcd2 == 0 {
		sound_play(sound_get("bl1"),false,noone,0.6)
        songcd2 = 94
	} 
}


if get_gameplay_time() <= 120 && cosmetic == 1 {


	if taunt_down {
		sound_play(asset_get("sfx_gem_collect"));
		cosmetic = 0
	}
	
}

