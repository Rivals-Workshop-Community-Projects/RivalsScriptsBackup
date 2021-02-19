// Draw HUD - Determine active card
// The x position of your HUD element is 48*(i-1)

for (i = 0; i < 3; i++){
  draw_sprite_ext(CARD_SPRITE_SMALL, i, temp_x+162+(16*i),
    temp_y-6-(i == card_current)*4, 1, 1, 0,
    CARD_OBJ[i].card_state > 2 ? c_black : c_white,
    0.3 + (0.7 * CARD_OBJ[i].card_state == 0) );
}
