//draw_debug_text(temp_x,temp_y-20,string(happy_birthday));
///draw_debug_text(temp_x,temp_y-20,string(que_timer));
draw_sprite(sprite_get("pbcooldown"), pbc, temp_x+188, temp_y-14);
/*with (oPlayer) { //run through every player
  if (id != other.id) { // if this player is NOT you
    draw_debug_text(x,y,string(dance_timer));
  }
}

if attack == AT_UAIR{
    draw_debug_text(temp_x,temp_y,string(window));
    draw_debug_text(temp_x,temp_y-8,string(window_timer));
}