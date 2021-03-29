// Slots
slotx = temp_x + 164;
slots1y = temp_y - 32;
slots2y = slots1y - 32;
upcomingy = slots2y + 8;
debugx = temp_x - 200;
buttx = slotx + 34;

//Debug text!!
draw_sprite_ext(sprite_get("barempty"), 0 , temp_x + 22, temp_y-24, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("bar"), 0 , temp_x + 22, temp_y-24, 1 * (manabar / manabar_max), 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("managauge"), 0 , temp_x - 18, temp_y-40, 1, 1, 0, c_white, 1);

if debugmode{
  draw_debug_text(debugx, temp_y+20, "Spell slot 1 (A):" + debugspell[0]);
  draw_debug_text(debugx, temp_y+0, "Spell slot 2 (B):" + debugspell[1]);
  draw_debug_text(debugx, temp_y-20, "Spell slot 3:" + debugspell[2]);
  draw_debug_text(debugx, temp_y-40, "Spell slot 4:" + debugspell[3]);
  draw_debug_text(debugx, temp_y-60, "Spell slot 5:" + debugspell[4]);
  draw_debug_text(debugx, temp_y-80, "Spell slot 6:" + debugspell[5]);
}

draw_set_font(asset_get("roaLBLFont"));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_color(temp_x + 7, temp_y - 12, string(mana) + "/5", .6, .6, 0, c_white, c_white, c_white, c_white, 1);

// Spells
// Slot 1
draw_sprite_ext(sprite_get("spellslot"), 0 , slotx, slots1y, 1, 1, 0, slotone_col, 1);
draw_sprite_ext(sprite_get("buttons"), 0 , buttx, slots1y + 5, 1, 1, 0, slotone_col, 1);
draw_sprite_ext(sprite_get("spells"), spellselect[0] , slotx, slots1y, 1, 1, 0, slotone_col, 1);
draw_sprite_ext(sprite_get("spellcost"), spellcost[0] , slotx, slots1y, 1, 1, 0, c_white, 1);

// Slot 2
draw_sprite_ext(sprite_get("spellslot"), 0 , slotx, slots2y, 1, 1, 0, slottwo_col, 1);
draw_sprite_ext(sprite_get("buttons"), 1 , buttx, slots2y + 5, 1, 1, 0, slottwo_col, 1);
draw_sprite_ext(sprite_get("spells"), spellselect[1] , slotx, slots2y, 1, 1, 0, slottwo_col, 1);
draw_sprite_ext(sprite_get("spellcost"), spellcost[1] , slotx, slots2y, 1, 1, 0, c_white, 1);

// Upcoming Spells
draw_sprite_ext(sprite_get("spells"), spellselect[2] , slotx - 38, upcomingy, 1, 1, 0, c_gray, 1);
draw_sprite_ext(sprite_get("spells"), spellselect[3] , slotx - 74, upcomingy, 1, 1, 0, c_gray, 1);
draw_sprite_ext(sprite_get("spells"), spellselect[4] , slotx - 110, upcomingy, 1, 1, 0, c_gray, 1);
draw_sprite_ext(sprite_get("spells"), spellselect[5] , slotx - 146, upcomingy, 1, 1, 0, c_gray, 1);
