if ("powerpoints" in self) {
 draw_sprite(sprite_get( "meter" ), powerpoints -1, temp_x, temp_y)
  draw_debug_text( temp_x+120, temp_y-40, "" + string(powerpoints));
}