//post-draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

if state_attacking && attack == AT_NSPECIAL && loadout[0] == LIGHTNING {
    if window == 2 {
        var spr = sprite_get("bolt_lightning")
        draw_sprite_general(spr, clamp(floor(window_timer/3),0, 6), 0, 0, lightning_wall_distance - 25, 62, x + 25*spr_dir - sprite_get_xoffset(spr), y - 40 - sprite_get_yoffset(spr), spr_dir, 1, 0, c_white,c_white,c_white,c_white, 1)
    }
}

if electrified_timer > 0 {
    draw_sprite_ext(sprite_get("electrified_vfx"), floor(timer/4), x, y, 1, 1, 0, c_white, 0.8)
}

if state_attacking && attack == AT_USPECIAL {
    switch loadout[2] {
        case MOON:
        if state_timer >= 4 {
            draw_sprite_ext(sprite_get("dash_moon_vfx"), (state_timer - 6)/4, x, y - 30, 1, 1, angle_index*45, c_white, 1)
        }
        break;
        
        case EARTH:
        var draw_index = 0
        if window == 1 {
            draw_index = 0
        } else if window == 2 {
            draw_index = 1 + clamp(floor(window_timer/4), 0, 1)
        } else {
            draw_index = 2 + clamp(floor(window_timer/2), 0, 5)
        }
        if window > 1 draw_sprite_ext(sprite_get("dash_earth_vfx"), draw_index, x, y - 30, 1, 1, angle_index*45, c_white, 1)
        break;
    }
}

if state_attacking && (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) && window == 2 {
    //uspec holograms
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_yellow, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 0.6 - (window_timer/20))
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

if loadout_apply_timer > 0 {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, spirit_col, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, loadout_apply_timer/20)
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

if scythe_get_flash {
    gpu_set_alphatestenable(true);
    gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, scythe_get_timer/20)
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

//fspec vfx
var blade_vfx_proj = sprite_get("blade_vfx_default")
var blade_vfx = sprite_get("blade_vfx_default")
switch loadout[1] {
    case DEFAULT:
    blade_vfx_proj = sprite_get("blade_vfx_default")
    blade_vfx = sprite_get("rush_default")
    break;
    
    case MOON: 
    blade_vfx_proj = sprite_get("blade_vfx_moon")
    blade_vfx = sprite_get("rush_moon")
    break;
    
    case FIRE: 
    blade_vfx_proj = sprite_get("blade_vfx_fire")
    blade_vfx = sprite_get("rush_fire")
    break;
    
    case EARTH: 
    blade_vfx_proj = sprite_get("blade_vfx_earth")
    blade_vfx = sprite_get("rush_earth")
    break;
    
    case ICE: 
    blade_vfx_proj = sprite_get("blade_vfx_ice")
    blade_vfx = sprite_get("rush_ice")
    break;
    
    case WATER: 
    blade_vfx_proj = sprite_get("blade_vfx_water")
    blade_vfx = sprite_get("rush_water")
    break;
    
    case LIGHTNING: 
    blade_vfx_proj = sprite_get("blade_vfx_lightning")
    blade_vfx = sprite_get("rush_lightning")
    break;
    
    case SHADOW: 
    blade_vfx_proj = sprite_get("blade_vfx_shadow")
    blade_vfx = sprite_get("rush_shadow")
    break;
}

with pHitBox if player_id == other.id && attack == AT_FSPECIAL && hbox_num == 1 && state == 0 {
    draw_sprite_ext(blade_vfx_proj, image_index, x, y, spr_dir, 1, 0, c_white, 1)
}

if state_attacking && attack == AT_FSPECIAL && window >= 7 {
    draw_sprite_ext(blade_vfx, image_index - 8, x, y, spr_dir, 1, 0, c_white, 1)
}

if state_attacking && attack == AT_DSPECIAL {
    var index = image_index + loadout[3]*25
    draw_sprite_ext(sprite_get("dspec_vfx"), index, x, y, spr_dir, 1, 0, c_white, 1)
}
if state_attacking && attack == AT_DSPECIAL_2 {
    var index = image_index + loadout[3]*25
    draw_sprite_ext(sprite_get("dspec_staff_vfx"), index, x, y, spr_dir, 1, 0, c_white, 1)
}