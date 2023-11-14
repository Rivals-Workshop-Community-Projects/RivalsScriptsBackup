//draw_debug_text( temp_x, temp_y - 100, string(x) );
//draw_debug_text( temp_x, temp_y - 80, string(get_stage_data(SD_X_POS)) );
//draw_debug_text( temp_x, temp_y - 60, string(voiced) );
//draw_debug_text( temp_x + 40, temp_y - 80, string(room_width - get_stage_data(SD_X_POS)) );
//draw_debug_text( temp_x + 80, temp_y - 100, string(y) );
//draw_debug_text( temp_x + 80, temp_y - 80, string(get_stage_data(SD_Y_POS)) );

if (!exhausted) {
    draw_sprite(spr_hud, 0, temp_x - 18, temp_y - 78);
}
else {
    draw_sprite(spr_empty, exhausted_index, temp_x - 18, temp_y - 78);
}


// Animate Changing spells
if (spell_change_anim) {
    //spawn_hit_fx(temp_x - 18, temp_y - 78, vfx_icon_change);
    draw_sprite(spr_change, spell_change_timer, temp_x - 18, temp_y - 78);
    if (state_timer % 4 == 0) spell_change_timer += 1;
    if (spell_change_timer >= 3) {
        spell_change_timer = 0;
        spell_change_anim = false;
    } 
    //spell_change_anim = false;
}

// Draw Spell Icon
draw_sprite(spr_icons, active_spell, temp_x + 2, temp_y - 48);
// Draw meter
draw_sprite_ext(spr_meter, 0, temp_x + 64, temp_y - 14, stamina, 1, 0, c_white, 1);
// Draw Indicator to show mana cost
var base_start = 58;
if (active_spell == 0) {
    draw_sprite(spr_cost, active_spell, temp_x + base_start + ((max_stamina - spell_one_cost) * 2), temp_y - 22);
}
if (active_spell == 1) {
    draw_sprite(spr_cost, active_spell, temp_x + base_start + ((max_stamina - spell_two_cost) * 2), temp_y - 22);
}
if (active_spell == 2) {
    draw_sprite(spr_cost, active_spell, temp_x + base_start + ((max_stamina - spell_three_cost) * 2), temp_y - 22);
}