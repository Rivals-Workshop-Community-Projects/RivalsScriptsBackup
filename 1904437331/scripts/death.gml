for (i = 0; i < 3; i++) {
  with(CARD_OBJ[i]){
    x = CARD_STARTX;
    y = CARD_STARTY;
    hsp = 0;
    vsp = 0;
    card_timer = 0;
    sprite_index = CARD_SPRITE_SMALL;
    image_index = CARD_TYPE;
    image_angle = 0;
    card_state = 0;
    card_count = 0;
    card_trapid = noone;
    ignores_walls = false;
    can_be_grounded = false;
  }
}

if (state == PS_DEAD){
  for (i = 0; i < 3; i++) {
    instance_destroy(CARD_OBJ[i]);
  }
}

if (charge_level > 0){
  charge_level = 0;
  outline_color = [0,0,0];
  init_shader();
}
