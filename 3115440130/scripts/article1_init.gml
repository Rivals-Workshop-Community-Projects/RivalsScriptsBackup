//article1_init

vfx_explode = hit_fx_create(sprite_get("dspecial_explosion_vfx_small"), 24)

die = false

//fault line
attack = 0
attack_timer = 0

is_rhyolis_fault = true

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

num_segments = 1;
segment_width = 32;

surface_id = noone
surface_x = 0
surface_y = 0

surface_offset_x = 0
surface_offset_y = 0

surface_prev_x = 0
surface_prev_y = 0

surface_grid_offset_x = 0 //offset from 32 pixel grid

timer = 0

eruption = false
eruption_timer = 0

absorb = false
absorb_timer = 0

fault_left = noone
fault_right = noone

//damage_flash_timer = 0 //flash when opponents take damage by stepping on faults
//damage_flash_index = 0

die_threshold = 600

x = floor(x/32)*32 + 16

//var arr_size = find_fault_array_size()
//segment_array = array_create(arr_size, undefined)
segment_array = []
segment_index = undefined

age = 0

//surface collision
var block_check = position_meeting(x, y, asset_get("par_block"))
var plat_check = position_meeting(x, y, asset_get("par_jumpthrough"))

if block_check {
    surface_id = instance_position(x, y, asset_get("par_block"))
} else if plat_check {
    surface_id = instance_position(x, y, asset_get("par_jumpthrough"))
}

if surface_id != noone {
    
    surface_x = get_instance_x(surface_id)
    surface_y = get_instance_y(surface_id)
    
    
    surface_grid_offset_x = surface_x - (round(surface_x/32)*32)
    x += surface_grid_offset_x
    
    surface_offset_x = x - surface_x
    surface_offset_y = y - surface_y
    
    surface_prev_x = surface_x
    surface_prev_y = surface_y
    
    consolidate_fault()
    
} else {
    instance_destroy()
    exit;
}

with obj_article1 if ("is_rhyolis_fault" in self) && is_rhyolis_fault == true && player_id != other.player_id && surface_id == other.surface_id {
    var _index = floor(other.surface_offset_x/32)
    if array_length(segment_array) > _index {
        //print(segment_array[_index])
        segment_array[_index] = undefined
    }
}

x_left = x - 16
x_right = x + 16

#define find_fault_array_size()
var size = 1
with obj_article1 if player_id == other.player_id && id != other.id && segment_index != undefined {
    size = array_length(segment_array)
}
return size;

#define consolidate_fault() //check if surface exists to the left and connected to surface_id, only if surface_id width is small enough

if !position_meeting(x - 32, y, surface_id) {
    var block_check = position_meeting(x - 32, y, asset_get("par_block"))
    var plat_check = position_meeting(x - 32, y, asset_get("par_jumpthrough"))
    var increment = 0
    var temp_x = x
    var temp_y = y
    var temp_offset_x = surface_offset_x
    if block_check {
        while block_check != 0 && increment <= 32 {
            temp_x -= 32
            temp_offset_x += 32
            block_check = position_meeting(temp_x - 32, temp_y, asset_get("par_block"))
            increment++
        }
    } else if plat_check {
        while plat_check != 0 && increment <= 32 {
            temp_x -= 32
            temp_offset_x += 32
            plat_check = position_meeting(temp_x - 32, temp_y, asset_get("par_jumpthrough"))
            increment++
        }
    }
    

    var temp_id = instance_position(temp_x, temp_y, asset_get("par_block"))
    if !temp_id temp_id = instance_position(temp_x, temp_y, asset_get("par_jumpthrough"))
    if temp_id {
        x = temp_x
        y = temp_y
        surface_id = temp_id
        surface_x = get_instance_x(surface_id)
        surface_y = get_instance_y(surface_id)
        surface_grid_offset_x = surface_x - (round(surface_x/32)*32)
        x += surface_grid_offset_x
        surface_offset_x = temp_offset_x
        //surface_offset_y = y - surface_y
        surface_prev_x = surface_x
        surface_prev_y = surface_y
    }

}
return;