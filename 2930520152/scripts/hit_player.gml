var rof = variable_instance_exists(self, "superTrue");
var hitstun_check = hit_player_obj.state_cat == SC_HITSTUN && state_cat != SC_HITSTUN;
hit_player_obj.got_crit = false;

if(has_rune("M") && random_func_2(abs(floor(x%200)), 5, true) == 3){
	if(hit_player_obj.orig_knock > 8){
		hit_player_obj.orig_knock = 60;
		hit_player_obj.hitstun = 500;
		hit_player_obj.hitstun_full = 500;
		sound_play(sound_get("crit"), false, false, 200);
		sound_play(sound_get("crit"), false, false, 200);
		sound_play(sound_get("crit"), false, false, 200);
		hitstop *= 3;
		hitstop_full *= 3;
		hit_player_obj.hitstop *= 3;
		hit_player_obj.hitstop_full *= 3;
		hit_player_obj.can_bounce = true;
		hit_player_obj.can_tech = false;
		hit_player_obj.can_wall_tech = false;
		hit_player_obj.got_crit = true;
	}
}

if(my_hitboxID.effect == 200){
    sound_play(asset_get("sfx_forsburn_combust"), false, false, 1.5);
    eruption_stored = -1;
    with(hit_fx_obj){
        if(image_index == 0 && player_id == other && sprite_index == sprite_get("hfx_eruption_large") && !variable_instance_exists(self, "store_damage")){
            depth = other.depth + 1;
        }
    }
    if(rofSuperTimer > 0){
		take_damage(hit_player_obj.player, player, 4);
	}
}

if(my_hitboxID.effect == 201){
    sound_play(asset_get("sfx_forsburn_reappear_hit"), false, false);
    eruption_stored = -1;
    with(hit_fx_obj){
        if(image_index == 0 && player_id == other && sprite_index == sprite_get("hfx_eruption_small") && !variable_instance_exists(self, "store_damage")){
            depth = other.depth + 1;
        }
    }
    if(rofSuperTimer > 0){
		take_damage(hit_player_obj.player, player, 2);
	}
}

if(my_hitboxID.effect == 202){
    sound_play(asset_get("sfx_forsburn_combust"), false, false, 1.5);
    with(hit_fx_obj){
        if(image_index == 0 && player_id == other && sprite_index == sprite_get("hfx_eruption_large") && !variable_instance_exists(self, "store_damage")){
            depth = other.depth + 1;
        }
    }
    if(rofSuperTimer > 0){
		take_damage(hit_player_obj.player, player, 4);
	}
}

if(my_hitboxID.effect == 203 || (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 10 || my_hitboxID.hbox_num == 11))){
    sound_play(asset_get("sfx_forsburn_reappear_hit"), false, false);
    with(hit_fx_obj){
        if(image_index == 0 && player_id == other && sprite_index == sprite_get("hfx_eruption_small") && !variable_instance_exists(self, "store_damage")){
            depth = other.depth + 1;
        }
    }
    if(rofSuperTimer > 0){
		take_damage(hit_player_obj.player, player, 2);
	}
}

switch(my_hitboxID.attack){
    case AT_FTILT:
    {
        if(my_hitboxID.type == 2){
            var deep = 0;
            with(oPlayer){
                if(depth < deep){
                    deep = depth;
                }
            }
            with(hit_fx_obj){
                if(image_index == 0 && player_id == other && (sprite_index == sprite_get("hfx_eruption_small") || sprite_index == sprite_get("hfx_eruption_swirl"))
                && !variable_instance_exists(self, "store_damage")){
                    depth = deep - 1;
                }
            }
            if(my_hitboxID.max_mult_hits > 0 && my_hitboxID.hbox_num == 2){
                my_hitboxID.multi_hits--;
                my_hitboxID.hsp = 0;
                my_hitboxID.grav = 0;
                my_hitboxID.vsp = 0;
                my_hitboxID.length = my_hitboxID.hitbox_timer + 8;
                my_hitboxID.sprite_index = asset_get("empty_sprite");
            }
            if(my_hitboxID.hbox_num == 4){
                sound_play(asset_get("sfx_ori_charged_flame_hit"), false, false, 1.5);
            }
        }
    }
    break;
    case AT_USPECIAL:
    {
        if((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 9) && hitstun_check){
            hit_player_obj.aether_quick_grab = self;
            hit_player_obj.aether_quick_grab_crouch_cancel_prevention_id = my_hitboxID.hbox_num;
            if(my_hitboxID.hbox_num != 9){
            	hit_player_obj.can_wall_tech = false;
            }
        }
        if(my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num <= 5 && hitstun_check){
            hit_player_obj.aether_spin_grab = self;
        }
        if(my_hitboxID.hbox_num != 8 && my_hitboxID.hbox_num != 7 && my_hitboxID.hbox_num != 10){
            hit_player_obj.should_make_shockwave = false;
        }
        if(my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 11){
            hitstop = 0;
            hitstop_full = 0;
        }
    }
    break;
    case AT_DSPECIAL_2:
    {
        ike_grabbed_id = noone;
        if(!hit_player_obj.super_armor && state_cat != SC_HITSTUN){
            hit_player_obj.ike_got_grabbed_id = self;
            window = 4;
            window_timer = 0;
            hit_player_obj.x = my_hitboxID.x;
            hit_player_obj.y = y;
            var hfx = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 302);
            has_hit = false;
            has_hit_player = false;
            my_hitboxID.hit_priority = 0;
            if(countered){
            	var rng = 1 + random_func_2(abs(floor(x%200)), 3, true);
				sound_play(sound_get("vc_counter" + string(rng)), false, false, voice_brawl);
            } else {
	            sound_stop(sound_get("vc_fspecial"));
	            sound_play(sound_get("vc_grab"), false, false, voice_brawl);
            }
        }
        if(free){
            old_vsp = 0;
            
            throw_plat = instance_create(x, y, "obj_article_platform");
            
            var hfx = spawn_hit_fx(x + 30 * spr_dir, y, 303);
            hfx.spr_dir = spr_dir;
            hfx.pause = 6;
            
            var hfx = spawn_hit_fx(x - 30 * spr_dir, y, 303);
            hfx.spr_dir = spr_dir * -1;
            hfx.pause = 6;
        }
    }
    break;
}

if((my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_EXTRA_1) && my_hitboxID.hbox_num == 1){
    has_hit_player = false;
}

if((my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_EXTRA_1) && my_hitboxID.hbox_num == 2 && has_rune("N")){
	move_cooldown[AT_DSPECIAL_2] = 70;
}

if(my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 1){
    if(instance_exists(throw_plat)){
        var hfx = spawn_hit_fx(throw_plat.x, throw_plat.y, 303);
        hfx.spr_dir = throw_plat.spr_dir;
        hfx.pause = 6;
        
        var hfx = spawn_hit_fx(throw_plat.x, throw_plat.y, 303);
        hfx.spr_dir = throw_plat.spr_dir * -1;
        hfx.pause = 6;
        
        instance_destroy(throw_plat);
    }
}

if(my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 9)){
    hit_player_obj.grab_up_spiked = true;
} else {
    hit_player_obj.grab_up_spiked = false;
}

if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 6){
    hit_player_obj.grab_spiked = true;
    hit_player_obj.calculated_hitstun = get_hitstun_formula(get_player_damage(hit_player_obj.player), hit_player_obj.knockback_adj, 1, my_hitboxID.damage, 2, .7);
    if(has_rune("C")){
    	hit_player_obj.calculated_hitstun = 99999;
    }
} else {
    hit_player_obj.grab_spiked = false;
}

countered = false;