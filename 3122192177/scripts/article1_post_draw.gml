var col_w = c_white;
var col_b = c_black;

if(state < 3){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 6, y - 110, 1, 1, 0, get_player_hud_color(player), 1);
}
if(state == 1 || state == 2){
draw_sprite_ext(sprite_get("nspecial_ward_laurel"), 0, x, y, 1, 1, ring_turn_cycle, c_white, 1);
}

if(state == 0){
draw_sprite_ext(sprite_get("nspecial_ward_laurel"), 0, x, y, 0 + intro_ring_size, 0 + intro_ring_size, ring_turn_cycle, c_white, intro_ring_alpha);    
}

if(state == 5){
draw_sprite_ext(sprite_get("tempest"), image_index, x, y, 1, 1, 0, c_white, 1);    
}

with (player_id) shader_end();
if(state == 2){
  draw_set_alpha(field_alpha);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 1.5, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 1, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 0.5, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range, 0, c_white, c_white);
  draw_set_alpha(1);
}

if(hit_cooldown > 0 && state < 3){
draw_sprite_ext(sprite_get("core_weak"), image_index, x, y, 1, 1, 0, c_black, 0.45);        
}
if get_match_setting(SET_HITBOX_VIS) {
    if(mask_index != asset_get("empty_sprite") && state != 5){
    draw_set_alpha(0.5);
draw_debug_text(x-95, y + -70,string("NSPECIAL interaction radius"));
draw_circle_color(floor(x), floor(y), spell_radius, c_lime, c_lime, false); 
    draw_set_alpha(1);
    }
}

with (player_id) shader_start();


//draw_debug_text(x-7, y + -140,string(state_timer));
//draw_debug_text(x-7, y + -120,string(player_id.in_range_of_field));
//draw_debug_text(x-7, y + -140,string(player_in_field));
//draw_debug_text(x-7, y + -140,string(field_range));