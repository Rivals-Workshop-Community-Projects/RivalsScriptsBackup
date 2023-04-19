var col_w = c_white;
var col_b = c_black;

if(state != 3){
draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 6, y - 110, 1, 1, 0, get_player_hud_color(player), 1);
}
if(state == 1 || state == 2){
draw_sprite_ext(sprite_get("nspecial_ward_laurel"), 0, x, y, 1, 1, ring_turn_cycle, c_white, 1);
}

if(state == 0){
draw_sprite_ext(sprite_get("nspecial_ward_laurel"), 0, x, y, 0 + intro_ring_size, 0 + intro_ring_size, ring_turn_cycle, c_white, intro_ring_alpha);    
}

if(state == 2){
  draw_set_alpha(field_alpha);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 1.5, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 1, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range + 0.5, 0, c_white, c_white);
  draw_circle_color(floor(x)- 1, floor(y) + 3, field_range, 0, c_white, c_white);
  draw_set_alpha(1);
}

//draw_debug_text(x-7, y + -120,string(player_id.in_range_of_field));
//draw_debug_text(x-7, y + -140,string(player_in_field));
//draw_debug_text(x-7, y + -140,string(field_range));