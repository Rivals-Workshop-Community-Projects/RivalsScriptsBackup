//user_event1.gml

var _x = event_x
var _y = event_y
var has_hitbox = event_hbox
var goes_off_ledge = event_ledge

var spawnx = floor(_x/32)*32 + 16
//var spawnx = _x
var spawny = _y

var plat = position_meeting(spawnx, spawny, asset_get("par_jumpthrough"))
var block = position_meeting(spawnx, spawny, asset_get("par_block"))

if goes_off_ledge {
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
        exit;
    }
}

//surface collision snap detection
var block_check = position_meeting(spawnx, spawny, asset_get("par_block"))
var plat_check = position_meeting(spawnx, spawny, asset_get("par_jumpthrough"))

var surface_id = noone

if block_check {
    surface_id = instance_position(spawnx, spawny, asset_get("par_block"))
} else if plat_check {
    surface_id = instance_position(spawnx, spawny, asset_get("par_jumpthrough"))
}

if surface_id != noone {
    var surface_x = get_instance_x(surface_id)
    var surface_y = get_instance_y(surface_id)
    
    var surface_grid_offset_x = surface_x - (round(surface_x/32)*32)
    spawnx += surface_grid_offset_x
    
    var surface_offset_x = spawnx - surface_x
    var surface_offset_y = spawny - surface_y
    
    var surface_prev_x = surface_x
    var surface_prev_y = surface_y
} else {
    exit;
}

if has_hitbox {
    var fx = spawn_hit_fx(spawnx, spawny, vfx_fault)
        fx.depth = -10
    create_hitbox(AT_EXTRA_1, 1, spawnx, spawny - 16)
    sound_play(asset_get("sfx_flareo_rod"))
}

var segment_index = floor((surface_offset_x - 16)/32)

with obj_article1 if ("is_rhyolis_fault" in self) && is_rhyolis_fault == true {
    //check it exists on same surface
    if surface_id == self.surface_id {
        //new segment index doesnt exist in old
        if segment_array[segment_index] == undefined {
            segment_array[segment_index] = 0
            exit;
        }
    }
    
    
    /*
    //new exists directly right of old
    if abs(x_right + 32 - spawnx) <= 2 {
        x_right += 32
        update_collision = true
        exit;
    }
    //new exists directly left of old
    if abs(x_left - 32 - spawnx) <= 2 {
        x_left -= 32
        update_collision = true
        exit;
    }
    
    //new exists completely within old
    if spawnx >= x_left && spawnx <= x_right {
        update_collision = true
        exit;
    }
    */
}


var fault = instance_create(spawnx, spawny, "obj_article1");
    fault.surface_x = surface_x
    fault.surface_y = surface_y
    fault.surface_prev_x = surface_prev_x
    fault.surface_prev_y = surface_prev_y
    fault.surface_offset_x = surface_offset_x
    fault.surface_offset_y = surface_offset_y
    fault.surface_grid_offset_x = surface_grid_offset_x
    
    fault.surface_id = surface_id
    fault.segment_index = segment_index
    fault.segment_array = array_create(32, undefined)
    fault.segment_array[segment_index] = 0
