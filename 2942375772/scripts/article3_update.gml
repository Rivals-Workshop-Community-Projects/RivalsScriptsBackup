lifetime = max(0, lifetime - loop)

if array_length(prefix_sum) == 0 {
    prefix_sum[0] = anim_frames[0];
    
    for (var j = 1; j < array_length(anim_frames); j++) {
        prefix_sum[j] = anim_frames[j] + prefix_sum[j-1]
    }
}

switch (projectile_number) {
    case 0:
        if current_section == 0 and state_timer == 2 {
            sound_play(sound_get("sfx_purple_nspecial_swipe"))
            sound_play(asset_get("sfx_ice_back_air"),false, noone, 0.9, 1.1)
        }
        if current_section == 1 and state_timer == 0 {
            
            hitbox = create_hitbox(AT_NSPECIAL, 2, x, y)
        }
    break;
    case 1:
        switch current_section {
            case 0:
                hsp = lerp( (7*spr_dir) + orig_hsp, 0, state_timer/lengths[current_section])
            break;
            case 1:
                if state_timer mod 9 == 0 {
                    sound_play(asset_get("sfx_ori_uptilt_single"))
                    hitbox = create_hitbox(AT_NSPECIAL, 3, x, y)
                }
                if state_timer == 14 {
                    sound_play(asset_get("sfx_ori_grenade_hit_ground"))
                }
            break;
            case 2:
                if state_timer == 0 {
                    hitbox = create_hitbox(AT_NSPECIAL, 4, x,y)
                }
            break;
        }
    break;
    case 2:
        if state_timer mod 4 == 0 {
            spawn_hit_fx(x,y + random_range(-20, 20),player_id.fire_trail);
        }
    
        if current_section == 0 and state_timer == 0 and !instance_exists(hitbox) {
            sound_play(asset_get("sfx_mol_norm_explode"))
            hsp = (12 * spr_dir) + orig_hsp
            hitbox = create_hitbox(AT_NSPECIAL,5, x,y)
        }
        
        if instance_exists(hitbox) {
            hitbox.x = x + hsp
            hitbox.y = y + vsp
            
            if hitbox.was_parried and !parried {
                hitbox.can_hit_self = true;
                parried = true;
                var dir = point_direction(x,y,player_id.x + player_id.hsp,player_id.y - player_id.char_height + player_id.vsp)
                
                vsp = lengthdir_y(17,dir)
                hsp = lengthdir_x(17,dir)
                hitbox.hitbox_timer = 0;
            }
            
        }
        else {
            should_die = true;
        }
        
    break;
}

var starting_point = prefix_sum[current_section] - anim_frames[current_section]

var increment = ( (state_timer / lengths[current_section] ) * anim_frames[current_section])

image_index = starting_point + increment

if image_index >= prefix_sum[current_section] {
    
    if !loop {
        current_section++;
    }
    else {
        image_index = 0;
    }
    state_timer = 0;
    lock_state = true;
    if current_section == array_length(anim_frames) and !loop {
        should_die = true;
    }
}

state_timer += !lock_state;
lock_state = false;

if should_die or lifetime == 0
{
    if instance_exists(hitbox) {
        instance_destroy(hitbox)
    }
    instance_destroy();
}

#define random_range()
/// @param {undefined} minimum
/// @param {undefined} maximum
var minimum = argument0, maximum = argument1;

var key = floor( abs(x - y + hsp - vsp) mod 10 );  

var range = (maximum - minimum)*100

return  (random_func(key, range, false)/100) + minimum