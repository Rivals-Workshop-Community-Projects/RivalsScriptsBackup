// use this to draw stuff

/*
//temp, i just wanna see how it looks - Shear, if you could, the timer should be moved to update.gml (obviously) 
if blocktimer > 0 {
    blocktimer = blocktimer - 3;
    if blocktimer < 0 blocktimer = 0
    print(blocktimer)
    draw_sprite_ext(sprite_get("blocked"), 0, x - 60, y - 115 + (blocktimer/25), 1, 1, 0, c_white, blocktimer/100)
}*/


//#region respawn plat 
    if state == PS_RESPAWN {
        draw_sprite(sprite_get("tele"), 0, x, y)
    }
//#endregion 

//#region Tri-shop selector
if (instance_exists(chest_obj) && chest_obj.state == 32 && chest_obj.trishop_vis_timer >= 0) with chest_obj {
    var progress = clamp(trishop_vis_timer / 5, 0, 1);
    var _x = x;
    var _y = other.y-50;
    
    if (other.object_index != oTestPlayer) {
        if (_x+90 < get_instance_x(asset_get("camera_obj"))-half_width) _x = get_instance_x(asset_get("camera_obj")) - half_width + 90;
        else if (get_instance_x(asset_get("camera_obj"))+half_width < _x-90) _x = get_instance_x(asset_get("camera_obj")) + half_width - 90;
    }

    draw_sprite_ext(sprite_get("trishop_bg_sidefill"), 0, _x, _y, 2, 2, 0, c_white, trishop_vis_opacities[0]*progress);
    draw_sprite_ext(sprite_get("trishop_bg_centerfill"), 0, _x, _y, 2, 2, 0, c_white, trishop_vis_opacities[1]*progress);
    draw_sprite_ext(sprite_get("trishop_bg_sidefill"), 0, _x, _y, -2, 2, 0, c_white, trishop_vis_opacities[2]*progress);
}
//#endregion

//#region Classified Access Codes signal
if (instance_exists(chest_obj) && state == PS_ATTACK_GROUND && window == 2 && chest_obj.cac_repositioning && special_down && object_index != oTestPlayer) {
    var far_x = chest_obj.x;
    var far_y = get_stage_data(SD_TOP_BLASTZONE_Y)+40;
    var dir = point_direction(x, y-24, far_x, far_y);
    var _x = x+lengthdir_y(16, dir);
    var _y = y-24;
    draw_sprite_ext(sprite_get("vfx_item_cac_signal"), get_gameplay_time()/2, _x, _y, 4, 32, dir, get_player_hud_color(player), 0.5);
}

//#endregion

//#region obj_article2 pre_draw
// (because text draw functions are unstable in article code)
with (obj_article2) if (other == player_id && !is_hud_element) {
    
    switch state {
        
        case 1:
            
            var cac_off = (item_id == 36) ? -20 : 0;

            draw_set_alpha(draw_alpha);
            
            if (string_length(player_id.item_grid[item_id][6]) < 50) {
                draw_sprite(sprite_get("item_bgpanel"), 0, x, y - 20)
            } else {
                draw_sprite(sprite_get("item_bgpanel_big"), 0, x - 52, y - 20)
            }
            
            draw_sprite_ext(sprite_get("item"), item_id, x + _x + 34 + cac_off, y + 4, 2, 2, 0, c_black, 0.5 * draw_alpha)
            draw_sprite_ext(sprite_get("item"), item_id, x + _x + 32 + cac_off, y + 0, 2, 2, 0, c_white, draw_alpha)
            
            draw_set_font( font_get("_rfont") );
            draw_set_halign( fa_center );
            draw_text_color( x + 180, y, player_id.item_grid[item_id][0], c_white, c_white, c_white, c_white, draw_alpha );
            
            draw_set_font( asset_get("fName") );
            draw_set_halign( fa_center );
            draw_text_color( x + 180, y + 36, player_id.item_grid[item_id][6], c_black, c_black, c_black, c_black, draw_alpha );
            draw_text_color( x + 182, y + 36, player_id.item_grid[item_id][6], c_white, c_white, c_white, c_white, draw_alpha );
            
            draw_set_alpha(draw_flash);
            gpu_set_fog(1, c_white, 0, 1);
            draw_sprite(sprite_get("item_bgpanel"), 0, x, y - 20);
            gpu_set_fog(0, c_white, 0, 1);
            
            draw_set_alpha(1);
            
            break;
        
    }
    
}
//#endregion

//#region NSpec charge visuals

if (do_turbine_recolor || (turbine_stored_charge > 0 && !(attack == AT_NSPECIAL && state == clamp(state, PS_ATTACK_AIR, PS_ATTACK_GROUND)))) {
    var col1 = make_color_rgb(140, 10, 10);
    var col2 = make_color_rgb(255, 140, 160);
}
else if (item_grid[31][4] > 0 && attack_speed > 1) {
    var col1 = make_color_rgb(140, 10, 130);
    var col2 = make_color_rgb(255, 120, 230);
}
else {
    var col1 = make_color_rgb(10, 10, 140);
    var col2 = make_color_rgb(120, 120, 255);
}

var progress = 1;
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL) {
    if (nspec_vis_timer < 20) {
        progress = nspec_vis_timer/20;
        var alpha = 0.3*(1-progress)*nspec_vis_level
        gpu_set_fog(true, col2, 0, 99);
        draw_sprite_ext(sprite_index, image_index, x-(20+10*nspec_vis_level)*spr_dir*progress, y, spr_dir, 1, 0, c_white, alpha);
        gpu_set_fog(true, col1, 0, 99);
        draw_sprite_ext(sprite_index, image_index, x-(10+5*nspec_vis_level)*spr_dir*progress, y, spr_dir, 1, 0, c_white, alpha);
        gpu_set_fog(false, c_white, 0, 0);
    }
}

var tsc = (turbine_stored_charge >= 90) ? 3 : 2*turbine_stored_charge/90;
var nspec_charge = max(tsc, nspec_charge_level);
if (nspec_charge > 0) {
    var vibrancy = progress*nspec_charge/3;
    var sin_val = sin(state_timer/15);
    gpu_set_fog(true, col2, 0, 99);
    draw_sprite_ext(sprite_index, image_index, x-(8-8*sin_val)*spr_dir*vibrancy, y, spr_dir, 1, 0, c_white, vibrancy*0.7);
    gpu_set_fog(true, col1, 0, 99);
    draw_sprite_ext(sprite_index, image_index, x-(8+8*sin_val)*spr_dir*vibrancy, y, spr_dir, 1, 0, c_white, vibrancy*0.7);
    gpu_set_fog(false, c_white, 0, 0);
}

//#endregion

//#region Lightweight particle drawing
for (var i = 0; i < ds_list_size(lfx_list); i++) {
    var lfx = ds_list_find_value(lfx_list, i);
    if (!lfx.lfx_foreground) {
    	var lfx_image_index = lfx.lfx_lifetime * (sprite_get_number(lfx.lfx_sprite_index) / lfx.lfx_max_lifetime);
        var lfx_alpha = (lfx.lfx_max_lifetime-lfx.lfx_lifetime)/lfx.lfx_max_lifetime/2;
    	draw_sprite_ext(lfx.lfx_sprite_index, lfx_image_index, lfx.lfx_x, lfx.lfx_y, 2*lfx.lfx_spr_dir, 2, 0, c_white, lfx_alpha );
    }
}
//#endregion

//#region Predatory Instincts/Energy Cell auras
if (instincts_timer > 0) {
    var col = make_color_hsv(250, 200, 150);
    var x_off = 16*sin(get_gameplay_time()/72);
    var y_off = 4*cos(get_gameplay_time()/30);
    var alpha = (instincts_timer > 20) ? 0.5 : (instincts_timer/20)*0.5;
    draw_sprite_ext(sprite_get("vfx_item_instincts"), 0, x+x_off, y-26+y_off, 2, 2, 0, col, alpha);
    draw_sprite_ext(sprite_get("vfx_item_instincts"), 0, x-x_off, y-26+y_off, 2, 2, 0, col, alpha);
}
if (cell_active_stacks > 0) {
    var col = make_color_rgb(140, 200, 250);
    var x_off = 4*cos(get_gameplay_time()/72);
    var y_off = -4*cos(get_gameplay_time()/30);
    var alpha = clamp(cell_active_stacks/10, 0, 0.5)
    draw_sprite_ext(sprite_get("vfx_item_cell"), 0, x+x_off, y-26+y_off, 2, 2, 0, col, alpha);
    draw_sprite_ext(sprite_get("vfx_item_cell"), 0, x-x_off, y-26+y_off, 2, 2, 0, col, alpha);
}
//#endregion

