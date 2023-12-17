//article2_update
timer++

var die = false
var on_fault = false

if (surface_id == undefined || surface_id == noone || !instance_exists(surface_id)) {
    instance_destroy()
    exit;
}

surface_x = get_instance_x(surface_id)
surface_y = get_instance_y(surface_id)

if surface_prev_x != surface_x || surface_prev_y != surface_y {
    x = surface_x + surface_offset_x
    y = surface_y + surface_offset_y
}

surface_prev_x = surface_x
surface_prev_y = surface_y

if timer == 2 {
    with obj_article1 if player_id == other.player_id {
        for (var i = 0; i < array_length(segment_array); i++) {
            if segment_array[i] != undefined && segment_array[i] != 0 {
                var seg_x = surface_x + i*32
                var seg_y = surface_y
                if abs(seg_x - other.x) <= 32 && abs(seg_y - other.y) <= 2 {
                    on_fault = true
                    die = true
                    segment_array[i].timer = 0
                    segment_array[i].state = 2
                    break;
                }
            }
        }
    }
}
//crack
if timer >= 20 {
    if crack_timer == 0 {
        sound_play(asset_get("sfx_syl_dstrong"))
        spawn_shards_ellipse(id, 6, 10, 2, 0, x, y, 10, 0)
    }
    image_index = 1
    crack_timer++
}


if timer > 40 || die {
    spawn_shards_ellipse(id, 12, 20, 20, 0, x, y - 10, 8, 0)
    /*
    var fault = get_nearest_fault()
    if !(fault.ID != noone && fault.dist <= 16) {
        create_fault(x - 16, y, false, false)
        create_fault(x + 16, y, false, false)
    }
    */
    if !on_fault {
        create_fault(x - 64, y, false, false)
        create_fault(x - 32, y, false, false)
        create_fault(x, y, false, false)
        create_fault(x + 32, y, false, false)
        create_fault(x + 64, y, false, false)
        spawn_hit_fx(x, y, vfx_explode)
        create_hitbox(AT_NSPECIAL, 3, x, y - 40)
    }
    sound_play(asset_get("sfx_kragg_rock_shatter"))
    instance_destroy();
    exit;
}

#define spawn_shards_ellipse(rand_index, num_shards, ellipse_b, ellipse_h, ellipse_angle, ellipse_x, ellipse_y, shard_spd, shard_spd_bias)

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
return;

#define get_nearest_fault()
var cur_dist = 10000000
var cur_index = noone

with obj_article1 if player_id == other.player_id && id != other.id && segment_index != undefined {
    for (var i = 0; i < array_length(segment_array); i++) {
        if segment_array[i] != undefined && segment_array[i] != 0 {
            //print(i)
            var new_dist = abs(((x - surface_offset_x) + i*32 + 16) - other.x)
            if new_dist < cur_dist {
                cur_dist = new_dist
                cur_index = i
            }
        }
    }
}

return {
    index: cur_index,
    dist: cur_dist
};

#define create_fault(_x, _y, goes_off_ledge, has_hitbox)

var spawnx = floor(_x/32)*32 + 16
//var spawnx = _x
var spawny = _y

if goes_off_ledge {
    var plat = position_meeting(spawnx, spawny, asset_get("par_jumpthrough"))
    var block = position_meeting(spawnx, spawny, asset_get("par_block"))
    
    //check for solid below
    var ground_lowest_id = undefined
    var ground_lowest_y = spawny
    var ground_increment = 16
    for (var j = 0; j < 15; j++) {
        var cur_y = y + j*ground_increment
        if position_meeting(spawnx, cur_y, asset_get("par_block")) {
            ground_lowest_id = instance_position(spawnx, cur_y, asset_get("par_block"))
            ground_lowest_y = cur_y
            break;
        }
    }
    
    if !(plat || block) && ground_lowest_id != undefined {
        spawny = ground_lowest_y
    } else if ground_lowest_id == undefined && !(plat || block) {
        return;
    }
}

var fault = instance_create(spawnx, spawny, "obj_article1");
if instance_exists(fault) {
    fault.age = timer
}

if has_hitbox {
    var fx = spawn_hit_fx(spawnx, spawny, vfx_fault)
        fx.depth = -10
    create_hitbox(AT_EXTRA_1, 1, spawnx, spawny - 16)
    sound_play(asset_get("sfx_flareo_rod"))
}
return;