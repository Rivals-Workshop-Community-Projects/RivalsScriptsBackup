//hitbox update, FOR PROJECTILES ONLY

if attack == AT_NSPECIAL {
    
    if hbox_num == 1 {
    if (hitbox_timer == 1){
        player_id.nspec_small_cooldown = player_id.nspec_cooldown_max;
    }
    if hitbox_timer mod 4 == 0 {
        var xx = 16 - random_func(10, 32, true)-hsp;
        var yy = 16 - random_func(9, 32, true)-vsp;
        spawn_hit_fx(x+xx,y+yy,player_id.nspecial_trail).depth = depth + 1
    }
    }
    else {
    	transcendent = true;
        var xx = 16 - random_func(10, 32, true)-hsp;
        var yy = 16 - random_func(9, 32, true)-vsp;
        
        var type = random_func(9, array_length(player_id.part_shapes), true)
        spawn_hit_fx(x+xx,y+yy,player_id.part_shapes[type]).depth = depth + 1
        
        with (pHitBox){
            projectile_destroy();
        }
    }
}

if attack == AT_FSPECIAL_2 && hbox_num == 2{
	through_platforms = length;
	if (hitbox_timer % 8 == 0 || hitbox_timer == 1){
        var xx = 16 - random_func(10, 32, true)-hsp;
        var yy = 16 - random_func(9, 32, true)-vsp;
        
        spawn_hit_fx(x+xx,(y+yy) - 6,player_id.nspecial_trail).depth = depth + 1
	}
        
	if (vsp >= 4){
		vsp = 4;
	}
	if (hitbox_timer % 8 == 0 || hitbox_timer == 1){
		spawn_hit_fx(x,y + 10, player_id.fspec2_proj_trail);
	}
	if (has_hit){
		tick_timer++;
		if (!is_multihitting){
			spawn_hit_fx(x,y, player_id.hfx_tiny);
		}
		is_multihitting = true;
	}
	if (tick_timer == 15){
		tick_timer = 0;
		has_hit = false;
		is_multihitting = false;
		for (var i = 0; i < 20; i++) can_hit[i] = true;
	}
	if (y > room_height){
		destroyed_next = true;
	}
	if (!free){
		destroyed = true;
	}
}


if attack == AT_DSPECIAL and hbox_num == 3 {
	if detonating {
		detonation_timer--;
	}
	proj_angle += (2 + (point_distance(0,0,hsp,vsp)*2) )*(!in_hitpause)*spr_dir
	if !free or detonation_timer < 0 or place_meeting(x, y, asset_get("par_block")){
		sound_play(asset_get("sfx_mol_flare_explode"), false, noone, 1, 1.1);
		spawn_hit_fx(x,y,player_id.bobomb_explosion)
		with create_hitbox(attack, 4, x, y) {
			can_hit_self = other.was_parried
		}
		sound_stop(sound)
		destroyed = true
	}
}

if attack == AT_DSPECIAL and hbox_num == 2 {
	//print(die_on_ground)
	if (place_meeting(x,y+vsp,asset_get("par_block")) or place_meeting(x,y+vsp,asset_get("par_jumpthrough"))) and die_on_ground and !free {
		with player_id {
            ds_list_add(kamek_particles_obj.particles, {
                sprite: other.sprite_index,
                x: other.x,
                y: other.y,
                hsp: 0,
                vsp: -3,
                xaccel: 0,
                yaccel: 0.4,
                angle: 0,
                torque: 6,
                lifetime: 300,
                xscale: spr_dir,
                yscale: 1
            })
            
		}
		destroyed_next = true;
	}
}

#define projectile_destroy() //destroys weak projectiles, like elli nspec

if (place_meeting(x, y, other)) && (player != other.player) && (hit_priority != 0) && (type == 2 && damage >= 8 || type == 1){
	with (other) transcendent = false;
}