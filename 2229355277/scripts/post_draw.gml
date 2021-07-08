//Post-draw baybee
spellsy = y - 100;
spell1x = x - 32;
spell2x = spell1x + 32;
buttonsy = spellsy - 16;
reticlex = FOUR_TILES_POS

//draw_debug_text(x, y,string(AT_DTHROW));

//Draws reticle "4 grids" away from the player. Each grid is 64 pixels.
if (draw_reticle)
{
  var reticle_img = get_gameplay_time() / 6;
  if spr_dir == -1{
    draw_sprite_ext(sprite_get("temp_reticle"), reticle_img, x + ((reticlex + 64) * -1) , y - 2, 1, 1, 0, c_white, 1);
  } else {
    draw_sprite_ext(sprite_get("temp_reticle"), reticle_img, x + reticlex , y - 2, 1, 1, 0, c_white, 1);
  }
}

if attack == AT_NSPECIAL and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    draw_sprite_ext(sprite_get("buttons"), 0 , spell1x + 4, buttonsy, 1, 1, 0, slotone_col, 1);
    draw_sprite_ext(sprite_get("buttons"), 1 , spell2x + 4, buttonsy, 1, 1, 0, slottwo_col, 1);
}

// Slot 1
draw_sprite_ext(sprite_get("spells"), spellselect[0] , spell1x, spellsy, 1, 1, 0, slotone_col, 1);

// Slot 2
draw_sprite_ext(sprite_get("spells"), spellselect[1] , spell2x, spellsy, 1, 1, 0, slottwo_col, 1);
//}

if show_flashing_icon{
    draw_sprite_ext(sprite_get("spells"), prev_spell_icon , spell1x + 14, spellsy - 4, 1, 1, 0, col_flashing, 1);
}

if attack == AT_UAIR and (state == PS_ATTACK_AIR){
  draw_sprite_ext(sprite_get("uair_effect"), image_index, x, y, spr_dir, 1, 0, -1, 1);
}

if (attack == AT_DSTRONG and state == PS_ATTACK_GROUND){
    if spr_dir == 1{
        draw_sprite_ext(sprite_get("dstrong_effects"), image_index, x - 68, y, spr_dir, 1, 0, -1, 1);
        draw_sprite_ext(sprite_get("dstrong_effects"), image_index, x + 70, y, spr_dir * -1, 1, 0, -1, 1);
    } else {
        draw_sprite_ext(sprite_get("dstrong_effects"), image_index, x - 68, y, spr_dir, 1, 0, -1, 1);
        draw_sprite_ext(sprite_get("dstrong_effects"), image_index, x + 66, y, spr_dir * -1, 1, 0, -1, 1);
    }
}

if (attack == AT_TAUNT_2 and state == PS_ATTACK_GROUND){
    shader_start();
    draw_sprite_ext(sprite_get("champ"), image_index, x, y, spr_dir, 1, 0, -1, 1);
    shader_end();
}

// Santa Hat
/*
if wearing_hat && sprite_index == sprite_get("idle"){
  draw_sprite_ext(sprite_get("santahat"), image_index, x, y, spr_dir, 1, 0, -1, 1);
}
*/



if state == PS_PARRY{
  draw_sprite_ext(sprite_get("parryshield"), image_index, x, y, spr_dir, 1, 0, -1, 1);
}
