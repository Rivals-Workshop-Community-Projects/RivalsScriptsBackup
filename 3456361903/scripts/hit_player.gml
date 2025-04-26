//hitbox init, FOR PROJECTILES SPECIFICALLY
switch (attack) {
    case AT_DATTACK: sound_play(sound_get("car_hit"), false, noone, 1, 1); sound_play(sound_get("car_vrum"), false, noone, 1, 0.8) break;
    
    case AT_FSTRONG: sound_play(sound_get("crash_cymbal_2"), false, noone, 0.8, 1); break;
    case AT_DSTRONG: sound_play(sound_get("crash_cymbal_2"), false, noone, 0.7, 0.7); break;
    case AT_USTRONG: sound_play(sound_get("crash_cymbal_2"), false, noone, 0.9, 1.4); break;
    
    case AT_FSPECIAL:
        if (my_hitboxID.hbox_num == 1) {
            sound_play(sound_get("tambourine_fspec_true"), false, noone, 1, 0.9 + (random_func(0, 6, true) / 10))
        } else {
            sound_play(asset_get("sfx_mol_flare_explode"), false, noone, 0.5, 1)
            sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1.3)
            //if (spotlight == noone && spot_cd_on == false) spotlight = instance_create(x, y+56, "obj_article1"); // spawn spotlight
        }
    break;
    }


if ((attack == AT_NAIR || attack == AT_DAIR && (my_hitboxID.hbox_num == 6) || attack == AT_FAIR ||attack == AT_BAIR ||attack == AT_UAIR) && bboost_counter == 3 ) {  //vfx on bboost
    spawn_hit_fx(other.x, other.y - (other.char_height/2), hfx_sound);
}

if (attack == AT_NSPECIAL ){
	sound_play(sound_get("smw_lost_a_life"), false, noone, 1, 1 + (random_func(1,  5, 1) /10 ))
    if (my_hitboxID.hbox_num > 1) {
        old_vsp = clamp(old_vsp, -4, -4.5)
        old_hsp = 0;
        move_cooldown[AT_NSPECIAL] = 60;
        window = 8;
        window_timer = 0;
        if (in_spotlight) nspec_hit_in_spotlight = true;
        if (bboost_counter == 3) {
        	sound_play(jump_sound_bboost)
        	count = spawn_hit_fx(x, y-8, vfx_count_fant)
			count.spr_dir = 1;
			count.depth = depth-1;
			count.grav = .05
			old_vsp = clamp(old_vsp, -7, -7.5)
        }
        	
    }
    else if my_hitboxID.hbox_num == 1 and !hit_player_obj.clone
	{
	    print_debug("got here")
    	hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*16),1)
    	hit_player_obj.y = lerp(hit_player_obj.y,y+60+vsp,1)
	}
}