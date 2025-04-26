// pre-draw
shader_start()
if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_NAIR:
        //draw_sprite_ext(sprite_get("nair_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, image_index <= 5 ? 1 : 1-(image_index-5)*0.25)
        draw_sprite_ext(sprite_get("nair_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1)
        break;
    }
}
shader_end()

//shuriken vfx
var slot = get_player_color(player)
var slot_r = get_color_profile_slot_r(slot, 5)
var slot_g = get_color_profile_slot_g(slot, 5)
var slot_b = get_color_profile_slot_b(slot, 5)
var shuriken_colour = make_color_rgb(slot_r, slot_g, slot_b)

gpu_set_alphatestenable(true);
gpu_set_fog(1, shuriken_colour, 0, 1);
for (var i = 0; i < array_length(shuriken_vfx_array); i++) {
    if shuriken_vfx_array[i][2] > 0 {
        var draw_x = shuriken_vfx_array[i][0]
        var draw_y = shuriken_vfx_array[i][1]
        var draw_alpha = shuriken_vfx_array[i][2]
        var draw_index = shuriken_vfx_array[i][3]
        var draw_spr = shuriken_vfx_array[i][4]
        var draw_dir = shuriken_vfx_array[i][5]
        
        draw_sprite_ext(draw_spr, draw_index, draw_x, draw_y, draw_dir, 1, 0, c_white, draw_alpha)
    }
}

//fully charged shuriken visuals
var player_col = get_player_color(player)
var shade = nspec_empowered ? 6 : 5
var col = make_color_rgb(get_color_profile_slot_r(player_col, shade), get_color_profile_slot_g(player_col, shade), get_color_profile_slot_b(player_col, shade))
gpu_set_fog(1, col, 0, 1);
if shuriken_charge == 3 && timer mod 60 < 12 {
    var spr = sprite_index
    var rot = 0
    var _x = x
    var _y = y
    
    if sprite_index == sprite_get("uspecial") && image_index > 3 {
        spr = uspec_rotate_spr
        rot = uspec_draw_dir-90
        _y = y-35
    }
    draw_sprite_ext(spr, image_index, _x+2, _y+2, spr_dir, 1, rot, c_white, 1)
    draw_sprite_ext(spr, image_index, _x-2, _y+2, spr_dir, 1, rot, c_white, 1)
    draw_sprite_ext(spr, image_index, _x+2, _y-2, spr_dir, 1, rot, c_white, 1)
    draw_sprite_ext(spr, image_index, _x-2, _y-2, spr_dir, 1, rot, c_white, 1)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

//shadow sneak indicator
if ss_type == 0 && (ss_start || ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && image_index < 5)) {
    if ss_start var _spr = sprite_index
    else var _spr = sprite_get("airdodge")
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_black, 0, 1);
    draw_sprite_ext(_spr, image_index, ss_x, y, spr_dir, 1, 0, c_white, 0.1 + (0.15*ss_timer/90))
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}
if ss_start {
    var w = 40
    var h = 8
    var a = ss_type == 0 ? 0.4 + (0.2*ss_timer/90) : 0.6
    draw_set_alpha(a)
    draw_rectangle_color(ss_x + w/2, ss_y, ss_x - w/2, ss_y+h, c_black,c_black,c_gray,c_gray,false)
    draw_set_alpha(1)
}

//uspec holograms
gpu_set_alphatestenable(true);

for (var i = 0; i < array_length(uspec_holograms); i++) {
    var hologram = uspec_holograms[i]
    var _x = hologram[0]
    var _y = hologram[1]
    var _alpha = hologram[2]/10
    var spr = hologram[3]
    var spr_index = hologram[4]
    var col = hologram[5]
    var rot = hologram[6]
    
    gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(spr, spr_index, _x, _y, image_xscale, image_yscale, rot, c_white, _alpha)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

//dspec vfx
if dspec_coords[0] != undefined {
    var _x = dspec_coords[0];
    var _y = dspec_coords[1] - 30;
    var num_lines = 10;
    var len = 16;
    for (var i = 0; i < num_lines; i++) {
        var angle = i*360/num_lines;
        draw_line_width_color(
            _x + lengthdir_x(dspec_dist, angle),
            _y + lengthdir_y(dspec_dist, angle), 
            _x + lengthdir_x(dspec_dist + len, angle), 
            _y + lengthdir_y(dspec_dist + len, angle),
            2, c_white, c_white);
    }
}

//draw_circle_color(x + 90, y-30, 2, c_white,c_white,false)
//draw_circle_color(x + 60, y-30, 2, c_white,c_white,false)
//draw_circle_color(x + 30, y-30, 2, c_white,c_white,false)