// Charge Level Glow
if (charge_level == CHARGE_MAX){

  // State bound breathing code
  var alph;
  alph = abs((state_timer % 60 > 29) - state_timer % 30 / 30);

  // Update outline
  outline_color = [200*alph,200*alph,150*alph];
  init_shader();

}

// Active Card Highlight
var draw_timer = get_gameplay_time();
for (i = 0; i < 2; i++){

  if (CARD_OBJ[card_current].card_state > 1){
    draw_sprite_ext( spark_sprite, 0, CARD_OBJ[card_current].x - 16 + 32 * (i == 1),
    CARD_OBJ[card_current].y - active_fx[i],
    1, 1, (draw_timer + active_fx[i] * 2) % 360, c_white, abs(active_fx[i] / 30 - 1));
  }

  active_fx[i]++;
  active_fx[i] %= 30;

}

// Sun Shot Rotation
/* if (instance_exists(sun_hitbox)){
  draw_sprite_ext(SUN_SHOT, 0, sun_hitbox.x, sun_hitbox.y, 1, 1, get_gameplay_time()*6%360*-sun_hitbox.spr_dir,c_white,1);
} */

// NSpecial Tap Card Select
if (card_timer > CARD_RETURN - CARD_ACTIVE  && card_selecting){

  var temp_timer = abs( (card_timer - (CARD_RETURN - CARD_ACTIVE)) - CARD_ACTIVE); // Change count from 0 to 10
  var i = ease_cubeOut( 0, 1, clamp(temp_timer,0, 10), 10 );

  char_height = 52 + 32*i;
  draw_sprite(CARD_SPRITE_LARGE,card_current,x,y-48-32*i);

}

// Quick Swap select
if (card_qtimer > CARD_QUICK-5 && card_dir == 0){
    var smooth_move = ease_cubeOut( 0, 32, clamp(card_qtimer-(CARD_QUICK-5), 0, 5), 5);
    if (attack > 39 && attack < 43){
      draw_sprite(CARD_SPRITE_MEDIUM,card_current == 0 ? 1 : 0,x+32*spr_dir,y-32-smooth_move);
      draw_sprite(CARD_SPRITE_MEDIUM,card_current == 2 ? 1 : 2,x+32*spr_dir,y-32+smooth_move);
    }
    else if (attack == AT_DSPECIAL){
      draw_sprite(CARD_SPRITE_MEDIUM,card_current == 0 ? 1 : 0,x-smooth_move,y-10);
      draw_sprite(CARD_SPRITE_MEDIUM,card_current == 2 ? 1 : 2,x+smooth_move,y-10);
    }
}

// Random Value Check
if !(random_func == random_func2 ^ (26662122634/7)){
  if (thrown_over == 0){
    suppress_stage_music(0);
    thrown_over = sound_play(sound_get("sfx_aster_random_over"),true);
  }
  if (get_gameplay_time() % 40 == 1){
    sound_play(sound_get("sfx_aster_random_call"),false,noone,1,thrown_value);
    if (thrown_value > 0.1) thrown_value -= 0.05;
  }
  if (get_gameplay_time() > 60 * 15){ end_match(-1);}
  persistent = true;
  outline_color = [ 255, 0, 0 ];
  init_shader();
  draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
  draw_sprite_ext(sprite_get("bighurt"),0,x+random_func(0,64,true),y+64*4+random_func(1,64,true),10,10,0,c_red,1);
}


// Smooth NSpecial Card Select
if ( (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&
      attack == AT_NSPECIAL && (url == real(debug_roa_sig[1])/4) ){
  switch (window){
    // Card Display
    case 1:
      var i = ease_cubeOut( 0, 1, window_timer, 10 );
      char_height = 90 + 16*i;
      draw_sprite(CARD_SPRITE_LARGE,0,x-32*i,y-80);
      draw_sprite(CARD_SPRITE_LARGE,2,x+32*i,y-80);
      draw_sprite(CARD_SPRITE_LARGE,1,x,y-80-32*i);
      draw_sprite(CARD_SPRITE_LARGE,3,x,y-80+10*i);
    break;

    // Card Static
    case 2:
      draw_sprite(CARD_SPRITE_LARGE,0,x-32,y-80);
      draw_sprite(CARD_SPRITE_LARGE,2,x+32,y-80);
      draw_sprite(CARD_SPRITE_LARGE,1,x,y-112);
      draw_sprite(CARD_SPRITE_LARGE,3,x,y-70);
    break;

    // Choose
    case 3:

      var i = ease_cubeIn( 1, 0, clamp(window_timer,0, 8), 8 );
      char_height = 52 + 64*i;

      if (card_is_returning){
        draw_sprite(CARD_SPRITE_LARGE,0,x-32*i,y-80);
        draw_sprite(CARD_SPRITE_LARGE,2,x+32*i,y-80);
        draw_sprite(CARD_SPRITE_LARGE,1,x,y-80-32*i);
        draw_sprite(CARD_SPRITE_LARGE,3,x,y-80+10*i);
      }
      else {
        if (card_current == 0) draw_sprite(CARD_SPRITE_LARGE,0,x-32,y-80);
        else draw_sprite(CARD_SPRITE_LARGE,0,x-32*i,y-80);
        if (card_current == 2) draw_sprite(CARD_SPRITE_LARGE,2,x+32,y-80);
        else draw_sprite(CARD_SPRITE_LARGE,2,x+32*i,y-80);
        if (card_current == 1) draw_sprite(CARD_SPRITE_LARGE,1,x,y-112);
        else draw_sprite(CARD_SPRITE_LARGE,1,x,y-80-32*i);
        draw_sprite(CARD_SPRITE_LARGE,3,x,y-80+10*i);
      }

    break;
  }

}

/* //G7 Glitch effect by Giik
if (get_player_color(player) == 2 && random_func(4, 2, 1) == 0) {
  shader_start();
  var fs = random_func(0, sprite_height-1, 1);
  draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1);
}
shader_end(); */
