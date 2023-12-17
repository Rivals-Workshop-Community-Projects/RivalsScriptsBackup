//article1_update
timer++

mask_index = sprite_get("fault_hurt")

if (surface_id == undefined || surface_id == noone || !instance_exists(surface_id)) {
    instance_destroy()
    exit;
}

if timer == 1 {
    segment_index = floor(surface_offset_x/32)
    if segment_index > array_length(segment_array) {
        segment_array = array_create(segment_index+1, 0)
    }
    
    //segment_array = array_create(arr_size, undefined)
    segment_array[segment_index] = {
        timer: 0,
        state: 0
    }
}

if timer == 2 {
    with obj_article1 if player_id == other.player_id && id != other.id && segment_index != undefined {
        //check for same surface id and old article is older
        //var surface_check = check_surface(surface_id, other.surface_id)
        if surface_id == other.surface_id {
            //add to old array
            for (var i = 0; i < array_length(other.segment_array); i++) {
                if other.segment_array[i] != undefined && other.segment_array[i] != 0 {
                    segment_array[i] = other.segment_array[i]
                }
            }
            segment_array[other.segment_index].timer = 0
            
            //print(segment_array)
            
            instance_destroy(other);
            exit;
        }
    }
}

surface_x = get_instance_x(surface_id)
surface_y = get_instance_y(surface_id)


if surface_prev_x != surface_x || surface_prev_y != surface_y {
    x = surface_x + surface_offset_x
    y = surface_y + surface_offset_y
}

surface_prev_x = surface_x
surface_prev_y = surface_y
/*
if timer mod 30 == 0 {
    with oPlayer if id != other.player_id {
        if !free && y == other.y {
            var offx = x - other.surface_x
            var _index = floor(offx/32)
            if _index < array_length(other.segment_array) && other.segment_array[_index] != 0 && other.segment_array[_index] != undefined {
                take_damage(player, other.player, 1)
            }
            rhyolis_fault_id = other.id
        } else if rhyolis_fault_id == other.id {
            rhyolis_fault_id = noone
        }
    }
}
*/

var delete_article = true
//if timer <= 8 delete_article = false
for (var i = 0; i < array_length(segment_array); i++) {
    if segment_array[i] != undefined && segment_array[i] != 0 {
        delete_article = false
        segment_array[i].timer++
        
        var seg_timer = segment_array[i].timer
        var seg_x = surface_x + i*32
        var seg_y = surface_y
        
        //dspec attack
        if segment_array[i].state == 1 {
            if segment_array[i].timer >= 0 {
                create_rock(i, seg_x + 16, seg_y)
                spawn_shards_ellipse(i, 4, 10, 2, 0, seg_x + 16, seg_y, 8)
                sound_stop(asset_get("sfx_flareo_rod"))
                sound_play(asset_get("sfx_flareo_rod"), false, 0)
                segment_array[i] = undefined
                continue;
            }
        } else if segment_array[i].state == 2 { //nspec attack
            if segment_array[i].timer == 3 {
                var on_edge = true
                if i > 0 && segment_array[i-1] != undefined && segment_array[i-1] != 0 {
                    segment_array[i-1].state = 2
                    segment_array[i-1].timer = 0
                    on_edge = false
                }
                if i < array_length(segment_array) - 1 && segment_array[i+1] != undefined && segment_array[i+1] != 0 {
                    segment_array[i+1].state = 2
                    segment_array[i+1].timer = 0
                    on_edge = false
                }
 
                if on_edge { //big erupt
                    segment_array[i].state = 4
                    segment_array[i].timer = 0
                } else { //small erupt
                    segment_array[i].state = 3
                    segment_array[i].timer = 0
                }
                continue;
            }
        } else if segment_array[i].state == 3 {
            erupt_small(i, seg_x, seg_y)
            continue;
        } else if segment_array[i].state == 4 {
            erupt_big(i, seg_x, seg_y)
            continue;
        } else if segment_array[i].state == 5 { //explode and consume nearby faults
            if segment_array[i].timer >= 0 {
                spawn_hit_fx(seg_x, seg_y, vfx_explode)
                create_hitbox(AT_NSPECIAL, 3, seg_x, seg_y - 40)
                sound_play(asset_get("sfx_kragg_rock_shatter"), false, 0)
                segment_array[i] = undefined
                if i-1 >= 0 segment_array[i-1] = undefined
                if i-2 >= 0 segment_array[i-2] = undefined
                if i+1 < array_length(segment_array) segment_array[i+1] = undefined
                if i+2 < array_length(segment_array) segment_array[i+2] = undefined
            }
            continue;
        }
        
        //surface collision detection
        if segment_array[i].state == 0 && timer mod 2 == 0 {
            var block_check = position_meeting(seg_x, seg_y, asset_get("par_block"))
            var plat_check = position_meeting(seg_x, seg_y, asset_get("par_jumpthrough"))
            
            if !block_check && !plat_check {
                segment_array[i] = undefined
                continue;
            }
        }
        
        //death after time
        if seg_timer >= die_threshold {
            spawn_shards_ellipse(id, 4, 10, 2, 0, seg_x, seg_y, 8)
            segment_array[i] = undefined
            continue;
        }
    }
}

if delete_article {
    instance_destroy()
    exit;
}

#define check_surface(id1, id2)
var dir = 1
if id1 < id2 {
    dir = 1
} else {
    dir = -1
}

var x_1 = get_instance_x(id1)
var y_1 = get_instance_y(id1)
var x_2 = get_instance_x(id2)
var y_2 = get_instance_y(id2)
if get_instance_y(id1) == get_instance_y(id2) {
    var solid_exists = false
    var x_offset = 0
    while !position_meeting(x_1 + x_offset, y_1, id2) {
        x_offset += 32*dir
        if !position_meeting(x_1 + x_offset, y_1, asset_get("par_block")) && !position_meeting(x_1 + x_offset, y_1, asset_get("par_jumpthrough")) {
            return undefined;
        }
        if abs(x_offset) >= 600 {
            return undefined;
        }
    }
    
    return x_offset;
} else {
    return undefined;
}


#define spawn_shards_ellipse(rand_index, num_shards, ellipse_b, ellipse_h, ellipse_angle, ellipse_x, ellipse_y, shard_spd)

for (var i = 0; i < num_shards; i++) {
    
    var rand_b = random_func(i*rand_index, ellipse_b, true) - (ellipse_b/2)
    var rand_h = random_func(i*rand_index + 50, ellipse_h, true) - (ellipse_h/2)
    var rand_spd = random_func(i*rand_index + 100, 3*floor(shard_spd/4), true) + floor(shard_spd/4)
    
    var rand_angle = point_direction(0, 0, rand_b, rand_h)
    var rand_dist = point_distance(0, 0, rand_b, rand_h)
    
    var modified_angle = rand_angle + ellipse_angle
    var modified_x = ellipse_x + rand_dist*dcos(modified_angle)
    var modified_y = ellipse_y - rand_dist*dsin(modified_angle)
    
    //var shard_spd = 5
    var shard_hsp = rand_spd/2*dcos(modified_angle)
    var shard_vsp = -rand_spd/2*dsin(modified_angle)
    
    var shard = spawn_hit_fx(modified_x, modified_y, player_id.vfx_airdodge_shard)
        shard.depth = -10
        shard.hsp = shard_hsp
        shard.vsp = shard_vsp
        shard.spr_dir = ((i mod 2) - 0.5) * 2
}


#define erupt_big(_i, _x, _y)
var _timer = segment_array[_i].timer
var eruption_threshold = 12

if _timer == 2 {
    sound_stop(asset_get("sfx_burnend"))
    sound_play(asset_get("sfx_burnend"), false, noone, 1, 1.2)
}

if _timer == eruption_threshold - 5 {
    spawn_hit_fx(_x + 16, _y, player_id.vfx_eruption)
}

if _timer == eruption_threshold {
    sound_stop(asset_get("sfx_kragg_rock_shatter"))
    sound_play(asset_get("sfx_kragg_rock_shatter"), false, 0, 1, 0.9)
    sound_stop(asset_get("sfx_boss_fireball_land"))
    sound_play(asset_get("sfx_boss_fireball_land"), false, 0)
    sound_stop(asset_get("sfx_ell_strong_attack_explosion"))
    sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 1, 1.5)
    create_hitbox(AT_EXTRA_1, 2, _x + 16, _y - 70)
}

if _timer >= eruption_threshold + 2 {
    spawn_shards_ellipse(id, 4, 10, 2, 0, _x + 16, _y, 8)
    segment_array[_i] = undefined
}

return;

#define erupt_small(_i, _x, _y)
var fx = spawn_hit_fx(_x + 16, _y, player_id.vfx_fault)
    fx.depth = -10
create_hitbox(AT_EXTRA_1, 1, _x + 16, _y - 16)
//spawn_shards_ellipse(id, 4, 10, 2, 0, _x + 16, _y, 8)
sound_stop(asset_get("sfx_flareo_rod"))
sound_play(asset_get("sfx_flareo_rod"), false, 0)
segment_array[_i] = undefined
return;

#define create_rock(index, _x, _y)

var rock = create_hitbox(AT_EXTRA_1, 3, _x, _y)
    rock.target = player_id
    rock.spr_type = random_func(index, 3, true)
    rock.image_index = rock.spr_type
    rock.proj_angle = random_func(index + 1, 3, true)*90

create_hitbox(AT_EXTRA_1, 4, _x, _y - 15)
return;