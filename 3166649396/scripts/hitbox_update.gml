//hitbox_update

//default bolt
if attack == AT_NSPECIAL && hbox_num == 1 {
    if hitbox_timer > 20 {
        destroyed = true
    }
    if was_parried {
    	if parried_timer == 0 {
    		proj_angle += 180
    		hitbox_timer = 0
    	}
    	parried_timer++
    }
}

if attack == AT_USTRONG {
	if was_parried {
    	if parried_timer == 0 {
    		proj_angle += 180
    		vsp = 20
    	}
    	parried_timer++
    }
}

//earth bolt
if attack == AT_NSPECIAL && hbox_num == 5 {
    if hitbox_timer mod 8 == 0 {
        for (var i = 0; i < array_length(can_hit); i++) {
            can_hit[i] = 1
        }
    }
    hsp = clamp(hsp + spr_dir*0.25, -16, 16)
    if hitbox_timer mod 8 == 0 && !hitpause {
        var bolt_hbox = create_hitbox(AT_NSPECIAL, 6, x, y)
        bolt_hbox.hsp = hsp
    }
    
    if hitbox_timer mod 6 == 1 {
        array_push(player_id.bolt_holograms, [x, y, 16, sprite_index, image_index])
    }
    
    if hitbox_timer >= 60 {
        destroyed = true
    }
}

//ice
if attack == AT_NSPECIAL && hbox_num == 6 {
    proj_angle -= 10*spr_dir
    if hitbox_timer >= 60 {
        spawn_explosion = true
    }
    
    if hitbox_timer > 1 {
        if !free || (vsp < 0 && sign(prev_vsp) != sign(vsp)) {
            num_bounces--
        }
    }
    
    if num_bounces < 0 {
        spawn_explosion = true
    }
    
    
    if was_parried || spawn_explosion {
    	with player_id var icesfx = sound_get("BearBolt_AOE") 
        sound_play(icesfx)
        spawn_hit_fx(x, y, player_id.vfx_bolt_ice)
        create_hitbox(AT_NSPECIAL, 7, x, y)
        destroyed = true
    }
    
    prev_vsp = vsp
    prev_hsp = hsp
}

//water
if attack == AT_NSPECIAL && hbox_num == 8 {
    proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir);
    if place_meeting(x, y, asset_get("par_block")) {
        spawn_hit_fx(x, y, HFX_ORC_WATER_LIGHT)
        destroyed = true
    }
}

//shadow
if attack == AT_NSPECIAL && hbox_num == 10 {
    proj_angle -= 15*spr_dir
    if place_meeting(x, y, asset_get("par_block")) {
        sound_play(sound_get("DefaultBoltHitWall"))
        //spawn_hit_fx(x, y, HFX_GEN_OMNI)
        destroyed = true
    }
}

//blade proj
if attack == AT_FSPECIAL && hbox_num == 1 {
    switch state {
        //throw
        case 0:
        hsp -= 0.8*spr_dir
        if position_meeting(x, y, asset_get("par_block")) {
            hsp = 0
            vsp = 0
            sprite_index = sprite_get("blade_proj_idle")
            if !player_id.fspec_wall_rush {
                sound_play(sound_get("BladesAttackHit"))
                spawn_hit_fx(x, y, 305)
            }
            player_id.fspec_wall_rush = true
            player_id.fspec_wall_rush_x = x
            player_id.fspec_wall_rush_y = y
        } else if ("scythe_head_obj" in player_id) && player_id.scythe_head_obj != noone && instance_exists(player_id.scythe_head_obj) && position_meeting(x, y, player_id.scythe_head_obj) {
        	hsp = 0
            vsp = 0
            sprite_index = sprite_get("blade_proj_idle")
            if !player_id.fspec_scythe_rush {
                sound_play(sound_get("BladesAttackHit"))
                spawn_hit_fx(x, y, 305)
            }
            player_id.fspec_scythe_rush = true
            player_id.fspec_scythe_rush_x = x
            player_id.fspec_scythe_rush_y = y
        }
        if player_id.fspec_has_hit || player_id.fspec_wall_rush || player_id.fspec_scythe_rush {
            state = 2
            state_timer = 0
            player_id.window = 3
            player_id.window_timer = 60
        } else if state_timer > 20 {
            sprite_index = sprite_get("blade_proj_idle")
            state = 1
            state_timer = 0
            player_id.window = 4
            player_id.window_timer = 0
        }
        break;
        
        //retract
        case 1:
        hit_priority = 0
        x = lerp(x, player_id.x, retract_speed)
        y = lerp(y, player_id.y - 42, retract_speed)
        if state_timer == retract_duration {
            destroyed = true
            player_id.window = 5
            player_id.window_timer = 0
        }
        break;
        
        //hit
        case 2:
        retract_speed = 0.15
        retract_duration = 10
        
        hit_priority = 0
        hsp = 0
        vsp = 0
        sprite_index = sprite_get("blade_proj_idle")
        
        if state_timer == 12 && player_id.window < 6 {
            if !player_id.fspec_goto_rush {
                state = 1
                state_timer = 0
            }
            player_id.window = 4
            player_id.window_timer = 0
        }
        break;
    }    
    
    state_timer++
    
    if player_id.fspec_hit_player != noone {
        x = lerp(x, player_id.fspec_hit_player.x, 0.5)
    }
    
    if !(player_id.state_attacking && player_id.attack == AT_FSPECIAL) {
        destroyed = true
    } else {
        if player_id.window >= 7 {
            destroyed = true
        }
    }
}

//scythe head
if attack == AT_DSPECIAL && hbox_num == 2 {
    if !instance_exists(owner) {
        destroyed = true
        exit;
    }
    x = owner.x + owner.hsp
    y = owner.y + owner.vsp
    hsp = owner.hsp
    vsp = owner.vsp
    
    if was_parried {
    	if parried_timer == 0 {
    		owner.spr_dir *= -1
    		spr_dir *= -1
    	}
    	parried_timer++
    }
    
    if sign(owner.hsp) == sign(x - player_id.x) hit_flipper = 6
    else if sign(owner.hsp) == -sign(x - player_id.x) hit_flipper = 7
    
    if owner.launch && owner.launch_timer == 1 {
        for (var i = 0; i < array_length(can_hit); i++) {
            can_hit[i] = true
        }
    }
}
/*
//avalanche
if attack == AT_EXTRA_1 && hbox_num == 1 {
	//omen_frozen_id = noone
	hit_player_obj.omen_frozen_timer = -1
	hit_player_obj.omen_draw_ice = true
	hit_player_obj.omen_draw_ice_timer = 0
}
*/