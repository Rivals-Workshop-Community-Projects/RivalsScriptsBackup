///


if "cosmicman" in self {
	
	if cosmicmusic > 0 { 
 	var volume = 0;
        volume = get_local_setting(3);
        
 	if cosmicmusic == 120 {
 	   switch uped	{
 	   	case 1 :
 	   	sound_play(sound_get("cosmicman1"),false,noone,min(2*volume, 1),1)
 	   	cosmicmusic -- 
 	   	comextended = 50
 	   	break;
 	   	
 	   	case 2 :
 	   	sound_stop(sound_get("cosmicman1"))
 	   	sound_play(sound_get("cosmicman2"),false,noone,min(2*volume, 1),1)
 	   	cosmicmusic -- 
 	   	comextended = 60*4
 	   	break;
 	   	
 	   	case 3 :
 	   	sound_stop(sound_get("cosmicman2"))
 	   	sound_play(sound_get("cosmicman3"),false,noone,min(2*volume, 1),1)
 	   	cosmicmusic -- 
 	   	comextended = 60*45
 	   	break;
 	   	
 	   	case 4 :
 	   	sound_stop(sound_get("cosmicman3"))
 	   	sound_play(sound_get("cosmicman4"),false,noone,min(2*volume, 1),1)
 	   	cosmicmusic -- 
 	   	comextended = 60*80
 	   	break;
 	   }
 	}
 	
 	
 	if comextended == 0 {
 	 cosmicmusic --
 	 suppress_stage_music( 0, 0.006 )
 	} else {
 	 comextended --
 	 suppress_stage_music( 0, 0.05 )
 	}
   }
	if playhitsound > 0 && uped >= 3{
		playhitsound -- 
		if playhitsound == 50 {
			sound_play(echo,false,noone,0.6,0.9)
		}
		if playhitsound == 40 {
			sound_play(echo,false,noone,0.3,0.8)
		}
		if playhitsound == 30 {
			sound_play(echo,false,noone,0.15,0.7)
		}	
	}
	
	if uped >= 4 && state != PS_PRATFALL and state != PS_PRATLAND and visible {
		if get_gameplay_time() % 2 == 0 {
		          	gsfx1 = spawn_hit_fx(floor(x), floor(y) - 24 - random_func(2,51,true) , sgf1)
                      gsfx1.spr_dir = 0.3
                      gsfx1.image_yscale = 0.3
                      gsfx1.draw_angle = random_func(1,360,true)
                      gsfx1.depth = depth + 4
		}
		if get_gameplay_time() % 4 == 2 {
		              gsfx2 = spawn_hit_fx(floor(x), floor(y) - 24 - random_func(2,51,true) , sgf2)
                      gsfx2.spr_dir = 0.3
                      gsfx2.image_yscale = 0.3
                      gsfx2.draw_angle = random_func(1,360,true)
                      gsfx2.depth = depth + 4
		}
	}
	
			
	with oPlayer {
		if "cosmicman" not in self {
			if state_cat == SC_HITSTUN && state_timer % 2 == 0 && other.uped >= 3 {
				if !hitpause{
				with other {
					 switch random_func(player,2,true) {
                      case 0:
                      gsfx1 = spawn_hit_fx(other.x, other.y - 40 , sgf1)
                      gsfx1.spr_dir = 0.4
                      gsfx1.image_yscale = 0.4
                      gsfx1.draw_angle =  random_func(1,360,true)
                      gsfx1.depth = other.depth + 2
                      break;
                      
                      case 1:
                      gsfx2 = spawn_hit_fx(other.x, other.y - 40 , sgf2)
                      gsfx2.spr_dir = 0.4
                      gsfx2.image_yscale = 0.4
                      gsfx2.draw_angle =  random_func(1,360,true)
                      gsfx2.depth = other.depth + 2
                      break;
      
                    
                    }
				}
			  } else {
			  	with other {
                       if uped >= 4 {
                          gfx3 = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 50 , fgf3)
                          gfx3.spr_dir = max( 0 , max((min(1.3,abs(hit_player_obj.old_hsp/12) + abs(hit_player_obj.old_vsp/12))),0.7) - ((60/playhitsound)/2))
                          gfx3.image_yscale = max( 0 , max((min(1.3,abs(hit_player_obj.old_hsp/12) + abs(hit_player_obj.old_vsp/12))),0.7) - ((60/playhitsound)/2))
                          gfx3.draw_angle = get_gameplay_time()*2
                          gfx3.depth = other.depth + 2
                        }
			  	}
			  }
			}
		}
	}
	
}

if "standon" in self {
	
	if !hitpause {
	standx += round((x - abs(standtime)*o_spr_dir - standx)/4)
	standy += round((y - ofree*15 - standy )/4)
	}
	
	if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack != AT_USPECIAL and get_gameplay_time() > 140 and attack != AT_BAIR{
		if standtime > -10 {
			o_spr_dir = spr_dir
			ofree = free
			sound_play(asset_get("sfx_sand_yell"),false,noone,.5, 0.45 + random_func(1,20,true)/100)
			sound_play(asset_get("sfx_forsburn_reappear"),false,noone,.8, 0.75 + random_func(2,15,true)/100)
		}
		
		if standtime > -40 standtime = -40
		
	} else {
		if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
			if standtime < 0 standtime += 2
		}
	}
}

if (get_gameplay_time() == 90 or get_gameplay_time() == 91)  && get_player_color(player) == 16 {
	

	set_color_profile_slot( 16, 0, 255, 211, 0 ); //Energy
    set_color_profile_slot( 16, 1, 255, 226, 158 ); //Skin
    set_color_profile_slot( 16, 2, 255, 142, 110 ); //Skinshade
    set_color_profile_slot( 16, 3, 204, 166, 0 ); //Hair
    set_color_profile_slot( 16, 4, 0, 191, 0 ); //pant
    set_color_profile_slot( 16, 5, 0, 132, 255 ); //Eyes
    set_color_profile_slot( 16, 6, 250, 0, 0 ); //Shirt
    set_color_profile_slot( 16, 7, 255, 218, 41 ); //Shine
    
	
	if string_lower(get_player_name(player)) == "stand"{
		standon = true 
		standtime = 30
		standx = x
		standy = y
		o_spr_dir = spr_dir
		ofree = free
	     sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,0.6)
		sound_play(asset_get("sfx_sand_yell"),false,noone,.6,0.55)
		sound_play(asset_get("sfx_sand_yell"),false,noone,.6,0.45)
        set_color_profile_slot( 16, 0, 82, 40, 166 ); //Energy
        set_color_profile_slot( 16, 1, 175, 64, 230 ); //Skin
        set_color_profile_slot( 16, 2, 108, 36, 224 ); //Skinshade
        set_color_profile_slot( 16, 3, 28, 34, 125 ); //Hair
        set_color_profile_slot( 16, 4, 57, 28, 125 ); //pant
        set_color_profile_slot( 16, 5, 125, 50, 166 ); //Eyes
        set_color_profile_slot( 16, 6, 255, 255, 255 ); //Shirt
        set_color_profile_slot( 16, 7, 255, 23, 231 ); //Shine
	}
	
	if string_lower(get_player_name(player)) == "sai" or string_lower(get_player_name(player)) == "cosmic"{
		cosmicmusic = 120
		set_victory_theme(sound_get("cosmicman3"));
		var volume = 0;
        volume = get_local_setting(3);
		sound_stop(sound_get("cosmicman2"))
 	   	sound_play(sound_get("cosmicman2"),false,noone,min(2*volume, 1),1)
 	   	cosmicmusic -- 
 	   	comextended = 60*4
		cosmicman = true 
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.4)
        set_color_profile_slot( 16, 0, 62, 6, 153 ); //Energy
        set_color_profile_slot( 16, 1, 9, 0, 13 ); //Skin
        set_color_profile_slot( 16, 2, 0, 0, 0 ); //Skinshade
        set_color_profile_slot( 16, 3, 12, 0, 18 ); //Hair
        set_color_profile_slot( 16, 4, 12, 0, 18 ); //pant
        set_color_profile_slot( 16, 5, 255, 255, 255 ); //Eyes
        set_color_profile_slot( 16, 6, 12, 0, 18 ); //Shirt
        set_color_profile_slot( 16, 7, 62, 6, 153 ); //Shine
	}
	
	if string_lower(get_player_name(player)) == "ded" {
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.4)
        set_color_profile_slot( 16, 0, 255, 55, 55 ); //Energy
        set_color_profile_slot( 16, 1, 196, 143, 77 ); //Skin
        set_color_profile_slot( 16, 2, 161, 81, 63 ); //Skinshade
        set_color_profile_slot( 16, 3, 0, 0, 0 ); //Hair
        set_color_profile_slot( 16, 4, 5, 5, 5 ); //pant
        set_color_profile_slot( 16, 5, 8, 0, 163 ); //Eyes
        set_color_profile_slot( 16, 6, 71, 2, 2 ); //Shirt
        set_color_profile_slot( 16, 7, 82, 2, 2 ); //Shine
	}
	

	
	init_shader()
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}


if cheapmode == 0 && get_gameplay_time() < 60 {
 
 with(asset_get("oPlayer")){ 
 	if url != "2273636433" && url != "1870768156"
	&& url != "1869351026" && url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("OP ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("Jo", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or url == "2159023588"
	or url == "1980469422"
	){
       other.cheapmode = 1 
       other.hit_player_obj = self
     }    
 }
} 
 
 
 if cheapmode == 1 && get_gameplay_time() < 600 {
 	
 	if attack == AT_DSTRONG && window == 2 or get_player_damage(player) > 50 or state == PS_RESPAWN {
 		htrain = 100
 	    btrain = 100
 	    atrain = 100
 	    ltrain = 100
 		cheapmode = 3 
        shake_camera(10,10)
 	}
 }


 if cheapmode == 3 {
 	
 	with oPlayer  {
 		super = 0 
 	}
 	
 	if state == PS_RESPAWN {
 				state_timer = 120
 				visible = true 
 				with oPlayer  {
 					if self != other {
 						set_player_stocks(other.player, get_player_stocks(player) + 1)
 					    end_match()
 					}
 				}
   }
 			
 	create_hitbox(AT_NSPECIAL,2,x,y - 50)
    djumps = 0
 	visible = true 
 	perfect_dodging = true

 	
 	with pHitBox {
 		if player_id = other.id {
 		kb_value = 10
 		kb_scale = 1
 		damage = get_gameplay_time()%50 + 50
 		} else {
	
 		}
 		
 	}
 	
 	if attacking && attack == AT_USPECIAL && state_timer = 4 {
 		with pHitBox {
 		  if player_id = other.id {
 		  	destroyed = true
 		  }
 		}
 		
 		sound_play(sound_get("powerup"),false,noone,1,2)
 		tefx = spawn_hit_fx(x,y - 40,306)
 		tefx.pause = 4
 		x = hit_player_obj.x 
 		y = hit_player_obj.y - 40
 		attack_end() 
 		set_attack(AT_DAIR)
 		window = 1
 		window_timer = 8
 	}
 	
 	init_shader()
 }
 
 
 
/*
if move_cooldown[AT_DSTRONG] > 0 {
	perfect_dodging = true
	
}

if state == PS_PARRY {
	
	if window_timer == 4 && state_timer < 30 {
		window_timer -= 1
	}
	
	if state_timer = 40 {
		set_state(PS_PRATLAND)
		state_timer = 0
	}
	
}
*/


if djumps == 1 {
	djump_speed = 9;
} else {
	djump_speed = 11;
}

if state == PS_PRATFALL {
	can_fast_fall = true
}

if (get_player_color(player) == 11) {
	
if uped == 4 {
	sound_stop(sound_get("drip"))
	sound_play(sound_get("dripshort"))
	uped = 5
}

}

if (get_player_color(player) == 15) {
	
if uped == 4 {
	sound_play(sound_get("nanomachine"))
	sound_play(sound_get("nanomachine"))
	uped = 5
}

if hitpause or state_cat == SC_HITSTUN {
	 move_cooldown[AT_USPECIAL_GROUND] = 20
}

}


if hitpause {
   if move_cooldown[AT_DSPECIAL] > 0 {
   	move_cooldown[AT_DSPECIAL] += 1
   }

}

if !hitpause {
	
	if state != PS_CROUCH and state != PS_LAND and state != PS_LANDING_LAG{
    croutime += random_func(1,5,true)
	}
	
	if get_gameplay_time() %2 == 0 {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
	}
}

if htrain >= 100 && htrain < 300 {
	if (get_player_color(player) == 11) {
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.15)
	} else {
		 sound_play(asset_get("sfx_ice_shatter_big"))	
		 sound_play(asset_get("sfx_kragg_rock_pillar"))	
	}
	spawn_hit_fx(x,y - 50,156)
	fx = spawn_hit_fx(x,y - 50,306)
	fx.pause = 6
	uped += 1
	cosmicmusic = 120
	sound_play(asset_get("sfx_abyss_explosion_start"))	
	sound_play(asset_get("sfx_abyss_hazard_burst"))	
	htrain = 420
	initial_dash_speed = 6.5;
    dash_speed = 6;
    //+2dmg
    set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 11);
    set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 11);
    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
    set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
    set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
    set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 3);
    
    air_dodge_speed = 7.50;
    

    init_shader()
}

if htrain > 300 {
    spawn_hit_fx( x + 40 - random_func(6, 80, true) - (30*spr_dir), y - 20 - random_func(7, 90, true) , esp )
	htrain -= 1
}

if atrain >= 100 && atrain < 300 {
	if (get_player_color(player) == 11) {
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.15)
	} else {
		 sound_play(asset_get("sfx_ice_shatter_big"))	
		 sound_play(asset_get("sfx_kragg_rock_pillar"))	
	}
	spawn_hit_fx(x,y - 50,156)
	fx = spawn_hit_fx(x,y - 50,306)
	fx.pause = 6
	uped += 1
	cosmicmusic = 120
	sound_play(asset_get("sfx_abyss_explosion_start"))		
	sound_play(asset_get("sfx_abyss_hazard_burst"))	
	atrain = 420
	max_djumps = 2;
	//+2dmg
	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_ori_sein_fstrong_hit_final"));
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 18);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
	set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 6);
	
	
	init_shader()
}
if atrain > 300 {
	spawn_hit_fx( x + 40 - random_func(6, 80, true) - (30*spr_dir), y - 20 - random_func(7, 90, true) , esp )
	atrain -= 1
}

if btrain >= 100 && btrain < 300 {
	if (get_player_color(player) == 11) {
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.15)
	} else {
		 sound_play(asset_get("sfx_ice_shatter_big"))	
		 sound_play(asset_get("sfx_kragg_rock_pillar"))	
	}
	spawn_hit_fx(x,y - 50,156)
	fx = spawn_hit_fx(x,y - 50,306)
	fx.pause = 6
	uped += 1
	cosmicmusic = 120
	sound_play(asset_get("sfx_abyss_explosion_start"))		
	sound_play(asset_get("sfx_abyss_hazard_burst"))	
	btrain = 420
	knockback_adj = .92;
	
	//+3 dmg nipples, +1 dmg other, grab + 4dmg
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 8);
	//reflector stuff in attack update
	
set_window_value(AT_NAIR, 1, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_JAB, 1, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_INVINCIBILITY, 2);
	
	init_shader()
	
}
if btrain > 300 {
	spawn_hit_fx( x + 40 - random_func(6, 80, true) - (30*spr_dir), y - 20 - random_func(7, 90, true) , esp )
	btrain -= 1
}

if ltrain >= 100 && ltrain < 300 {
	if (get_player_color(player) == 11) {
		sound_stop(sound_get("powerup"))
		sound_play(sound_get("powerup"),false,noone,1,1.15)
	} else {
		 sound_play(asset_get("sfx_ice_shatter_big"))	
		 sound_play(asset_get("sfx_kragg_rock_pillar"))	
	}
	spawn_hit_fx(x,y - 50,156)
	fx = spawn_hit_fx(x,y - 50,306)
	fx.pause = 6
	uped += 1
	cosmicmusic = 120
	sound_play(asset_get("sfx_abyss_explosion_start"))		
	sound_play(asset_get("sfx_abyss_hazard_burst"))	
	ltrain = 420
	
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 11);
	set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 3);
	
	set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
	set_attack_value(AT_UAIR, AG_LANDING_LAG, 5);
	set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
	
	init_shader()
	
	leave_ground_max = 6.00; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 6.00; //the maximum hsp you can have when jumping from the ground
 
}


if ltrain > 300 {
	spawn_hit_fx( x + 40 - random_func(6, 80, true) - (30*spr_dir), y - 20 - random_func(7, 90, true) , esp )
	ltrain -= 1
}

if state == PS_SPAWN {

set_attack (AT_EXTRA_3)	
window = 1
window_timer = 0
	
}

if state == PS_RESPAWN && visible {
	if state_timer % 6 == 0 {
		spawn_base_dust(x,y + 2,"land",spr_dir)
	}
}


if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}


if !free or state_cat == SC_HITSTUN {
	move_cooldown[AT_FSPECIAL] = 0

	if hit_player_obj != self or !free {
		wjcap = 0
	}
}

if wjcap > 0 {
	has_walljump = false
}

if state_timer == 1 && !hitpause && (state == PS_LAND or state == PS_LANDING_LAG or state == PS_TECH_GROUND or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_HITSTUN_LAND) {

sound_play(asset_get("sfx_land_med"))	
sound_play(asset_get("sfx_land_light"))	
shake_camera(2, 4)
}

if state_timer == 1 && !hitpause && (state == PS_WALL_JUMP){
sound_play(asset_get("sfx_land_med"),false,noone,1.2,0.9)	
shake_camera(2, 4)
move_cooldown[AT_USPECIAL] = 0
move_cooldown[AT_FSPECIAL] = 0

wjcap += 1
}

if state == PS_WALK {
	
	if state_timer == 0 or state_timer% 30 == 0{
		shake_camera(1, 1)
		sound_play(asset_get("sfx_land_light"));
	}
}

if state == PS_WALK_TURN && left_down && right_down {

spr_dir = 1	
	
}

if state == PS_CROUCH {

   if state_timer == 1 {
   				sound_stop(asset_get("sfx_swipe_medium2"))
	sound_play(asset_get("sfx_swipe_medium2"),false,noone,.3,.4);
   }
	
}

if state == PS_PARRY {
   
   if state_timer == 1 && !hitpause {
   		sound_play(asset_get("sfx_forsburn_combust"),false,noone,.8,1.5)
   }
	
}

if  (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD)  {
   if state_timer == 1 {
   				sound_stop(asset_get("sfx_swipe_weak2"))
	sound_play(asset_get("sfx_swipe_weak2"),false,noone,1.2,.4);
   }
	
}

if  (state == PS_AIR_DODGE)  {
   if state_timer == 1 {
   				sound_stop(asset_get("sfx_boss_vortex_end"))
	sound_play(asset_get("sfx_boss_vortex_end"),false,noone,.8,1.2);
   }
	
}

if state == PS_FIRST_JUMP {

   if state_timer == 1 {
   				sound_stop(asset_get("sfx_swipe_heavy2"))
	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.7,.8);
   }
	
}

if state == PS_DOUBLE_JUMP {

   if state_timer == 1 {
   				sound_stop(asset_get("sfx_swipe_heavy2"))
	sound_play(asset_get("sfx_swipe_heavy2"),false,noone,.7,.7);
   }
	
}

if !hitpause && (state == PS_DASH or state == PS_DASH_STOP or state == PS_DASH_TURN) {
	
	if state == PS_DASH_STOP && state_timer == 1 {
			sound_stop(asset_get("sfx_land_light"))
	sound_play(asset_get("sfx_land_light"),false,noone,1,1.1);
	}
	
	if state == PS_DASH_TURN && state_timer == 1 {
		sound_stop(asset_get("sfx_land_light"))
	sound_play(asset_get("sfx_land_light"),false,noone,1,1.1);
	}
	
	if (state == PS_DASH && state_timer == 0 or state_timer% 20 == 0) && htrain < 100{
		sound_play(asset_get("sfx_land_light"),false,noone,1.2,0.95);
	}
}





if state == PS_WAVELAND {
	visible = true
}


if state == PS_PARRY && btrain = 100{

if window_timer == 1{
window_timer = 3
}

if state_timer < 10 {
window_timer = 3	
} 

if state_timer > 10 && window_timer != 20 {
	window_timer += 1
}
	
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) && htrain >= 100 {
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_ori_bash_use"));
}

	 
	 if state_timer < 9{
	     hsp = -5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}

if move_cooldown[AT_USPECIAL] > 0 && cheapmode != 3 {
    create_hitbox(AT_USPECIAL,3,x,y)
    spawn_hit_fx(x - 20 + random_func(1,40,true) ,y - 46 - 20 + random_func(2,50,true), i6)
	fall_through = true
	if place_meeting(x,y+vsp + 5,asset_get("par_block")) or !free {
		vsp = (abs(vsp)) * -0.5 - 2
		hsp /= 1.2
		sound_play(asset_get("sfx_absa_kickhit"));
		fx = spawn_hit_fx(x,y - 50,306)
    	fx.pause = 6
		y -= 10
		set_state(PS_PRATFALL)
	}
	
	
	if vsp < 0 {
		vsp *= 1.01
	}
}

if move_cooldown[AT_USPECIAL] == 1 && cheapmode != 3 {
	fx = spawn_hit_fx(x,y - 50,306)
	fx.pause = 6
	sound_play(asset_get("sfx_bird_sidespecial_start"));
	hsp /= 6 
	old_hsp /= 6
	vsp = -8
}
	
//Update.gml
with pHitBox {
	if (player_id == other.id && attack == AT_USPECIAL && hbox_num == 1) {
		uspecialHudX = clamp(x, view_get_xview() + uspecialMinX , (view_get_xview() + view_get_wview()) - uspecialMaxX )
		uspecialHudY = clamp(y, view_get_yview() + uspecialMinY, (view_get_yview() + view_get_hview()) - (44 + uspecialMaxY ))
		uspecialNum = 0
		if uspecialHudX == (view_get_xview() + uspecialMinX) { //Left
			uspecialNum = 3
		}
		if uspecialHudX == ((view_get_xview() + view_get_wview()) - uspecialMaxX) { //Right
			uspecialNum = 6
		}
		if uspecialHudY == (view_get_yview() + uspecialMinY) { //Up
			uspecialNum += 1
		}
		if uspecialHudY == ((view_get_yview() + view_get_hview()) - (44 + uspecialMaxY )) { //Down
			uspecialNum += 2
		}
		switch(uspecialNum) {
			//Cardinal
			case 0:
			break;
			case 1: //Up
				uspecialRot= 180
				uspecialShape = 0
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 2: //Down
				uspecialRot= 0
				uspecialShape = 0
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			case 3: //Left
				uspecialRot= 270
				uspecialShape = 0
				uspecialHudX = (view_get_xview() + 33)
			break;
			case 6: //Right
				uspecialRot= 90
				uspecialShape = 0
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
			break;
			
			//Diagonal
			case 4: //Left Up
				uspecialRot= 270
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 5: //Left Down
				uspecialRot= 0
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			
			case 7: //Right Up
				uspecialRot= 180
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 8: //Right Down
				uspecialRot= 90
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;
		}
		//print(string(uspecialNum))
		//print(string(uspecialHudX))
		//print(string(uspecialHudY))
	}
}
//Update.gml


if "superTrue" in self {
if superTrue == 1 {
	
	if hit_player_obj == self {
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id
	}
	
	if hit_player_obj.state_cat == SC_HITSTUN {
			hit_player_obj.old_hsp = hit_player_obj.hsp
	     hit_player_obj.old_vsp = hit_player_obj.vsp
		hit_player_obj.hitpause = true
	   hit_player_obj.hitstop = 30
	}
	
	 superTrue = 0
	 hit_player_obj.canUseCounterTimer = 30
	move_cooldown [AT_FSTRONG] = 0
	move_cooldown [AT_NAIR] = 120 
	

	if left_down && !right_down {
		spr_dir = -1
	}
	if !left_down && right_down {
		spr_dir = 1
	}


set_attack(AT_FSPECIAL) 
window = 1
window_timer = 6

    sound_play(asset_get("sfx_burnconsume"),false,noone,1.2,0.9)
    
}    
}


if move_cooldown[AT_BAIR] > 0 {
	
	if move_cooldown[AT_BAIR] <= 85 {
	hsp = (hit_player_obj.x - x - 35*spr_dir)/6
	vsp = (hit_player_obj.y - y + 30)/6
	} else {
		hit_player_obj.x += 8*spr_dir
		hit_player_obj.y -= 2
		x -= 4*spr_dir
	}
	
	if move_cooldown[AT_BAIR] == 85 {
		spawn_hit_fx(x,y,304)
		shake_camera(6,6)
		sound_play(asset_get("sfx_blow_heavy2"))	
	}
	
	hit_player_obj.canUseCounterTimer = 5
	if move_cooldown[AT_BAIR] == 95 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
		attack_end();
		set_attack(AT_DSPECIAL)
		window = 1
		window_timer = 1
	}
	
	if move_cooldown[AT_BAIR] == 75 {
		attack_end();
		set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 8
	}
	
	if move_cooldown[AT_BAIR] == 55 {
		attack_end();
		set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 8
	}
	
	if move_cooldown[AT_BAIR] == 35 {
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 70);
		attack_end();
		set_attack(AT_FSPECIAL)
		window = 1
		window_timer = 8
	}
	
	if move_cooldown[AT_BAIR] == 15 {
		
		hit_player_obj.hitstop = 0
		
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
		move_cooldown[AT_BAIR] = 0
		
	}
	
}

if state == PS_PARRY && noparryedit == 0 {
		free = false 
		if state_timer > 2 && state_timer < 15 && !invincible{
			window_timer -= 0.5
		} else {
			if state_timer == 15 {
				window_timer = floor(window_timer) + 1
			}
			window_timer += .5
		}
}


#define spawn_base_dust(x, y, name, dir)
var dlen;
var dfx;
var dfg;
var dust_color = 0;

switch (name) {
    default:
    case "dash_start":
        dlen = 21;
        dfx = 3;
        dfg = 2626;
    break;
    case "dash":
        dlen = 16;
        dfx = 4;
        dfg = 2656;
    break;
    case "jump":
        dlen = 12;
        dfx = 11;
        dfg = 2646;
    break;
    case "doublejump":
    case "djump":
        dlen = 21;
        dfx = 2;
        dfg = 2624;
    break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg;
newdust.dust_color = dust_color;
newdust.spr_dir = dir;
