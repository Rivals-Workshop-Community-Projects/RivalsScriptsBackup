// pre-draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

//stored spirit
if stored_spirit != DEFAULT {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, spirit_col, 0, 1);
    var _a = (dsin(stored_timer*6) + 1)/2
    
    draw_sprite_ext(sprite_index, image_index, x + 2, y, spr_dir, 1, 0, c_white, _a)
    draw_sprite_ext(sprite_index, image_index, x - 2, y, spr_dir, 1, 0, c_white, _a)
    draw_sprite_ext(sprite_index, image_index, x, y + 2, spr_dir, 1, 0, c_white, _a)
    draw_sprite_ext(sprite_index, image_index, x, y - 2, spr_dir, 1, 0, c_white, _a)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

//earth armour
if earth_armour {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, get_spirit_col(EARTH), 0, 1);
    
    draw_sprite_ext(sprite_index, image_index, x + 2, y, spr_dir, 1, 0, c_white, 0.8)
    draw_sprite_ext(sprite_index, image_index, x - 2, y, spr_dir, 1, 0, c_white, 0.8)
    draw_sprite_ext(sprite_index, image_index, x, y + 2, spr_dir, 1, 0, c_white, 0.8)
    draw_sprite_ext(sprite_index, image_index, x, y - 2, spr_dir, 1, 0, c_white, 0.8)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
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
    
    gpu_set_fog(1, col, 0, 1);
    draw_sprite_ext(spr, spr_index, _x, _y, image_xscale, image_yscale, 0, c_white, _alpha)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

//bolt holograms
gpu_set_alphatestenable(true);

for (var i = 0; i < array_length(bolt_holograms); i++) {
    var hologram = bolt_holograms[i]
    var _x = hologram[0]
    var _y = hologram[1]
    var _alpha = hologram[2]/16
    var spr = hologram[3]
    var spr_index = hologram[4]
    
    gpu_set_fog(1, $26fb9e, 0, 1);
    draw_sprite_ext(spr, spr_index, _x, _y, image_xscale, image_yscale, 0, c_white, _alpha*0.8)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);

//fspec string
var hand_x = x + 38*spr_dir
var hand_y = y - 42
with pHitBox if ("omen_blade_owner" in self) && omen_blade_owner == other.id {
    draw_line_width_color(x, y, hand_x, hand_y, 2, c_white, c_white)
}


//bolt trail

with pHitBox if player_id == other.id && ("has_bolt_trail" in self) && has_bolt_trail {
    draw_primitive_begin(pr_trianglestrip)
    var w = 0
    var max_w = 8
    var scale_w = 0.5
    var col = c_white
    
    for (var i = 0; i < bolt_trail_segments; i++) {
        var cur_index = (i + bolt_trail_index) mod bolt_trail_segments
        var el = bolt_trail_arr[cur_index]
        
        if el[0] != undefined {
            var p1x = el[0] + w*dcos(el[2]+90)
            var p1y = el[1] - w*dsin(el[2]+90)
            var p2x = el[0] - w*dcos(el[2]+90)
            var p2y = el[1] + w*dsin(el[2]+90)
            
            col = el[3]
            max_w = el[4]
            scale_w = el[5]
            //col = merge_color(col, c_white, 0.1*i/bolt_trail_segments)
            
            //draw_circle_color(p1x, p1y, 2, c_white, c_white, false)
            //draw_circle_color(p2x, p2y, 2, c_blue, c_blue, false)
            draw_vertex_color(p1x, p1y, col, 0.8)
            draw_vertex_color(p2x, p2y, col, 0.8)
            
        }
        w = clamp(w + scale_w, 0, max_w)
    }
    draw_primitive_end()
}

if state_attacking && attack == AT_DSPECIAL && image_index >= 11 {
    var index = image_index + 7 + loadout[3]*25
    draw_sprite_ext(sprite_get("dspec_vfx"), index, x, y, spr_dir, 1, 0, c_white, 1)
}
if state_attacking && attack == AT_DSPECIAL_2 && image_index >= 11 {
    var index = image_index + 7 + loadout[3]*25
    draw_sprite_ext(sprite_get("dspec_staff_vfx"), index, x, y, spr_dir, 1, 0, c_white, 1)
}

#define get_spirit_col(s)
var col = c_white
switch s {
	case DEFAULT: col = c_white break;
	case MOON: col = $ff5eff break;
	case FIRE: col = $0000ff break;
	case EARTH: col = $00ff00 break;
	case ICE: col = $ffff00 break;
	case WATER: col = $ff5f00 break;
	case LIGHTNING: col = $00ffff break;
	case SHADOW: col = $c50076 break;
}
return col;