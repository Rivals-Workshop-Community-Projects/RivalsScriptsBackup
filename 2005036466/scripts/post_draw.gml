if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
  switch(attack){
    case AT_DAIR:
      shader_start();
      draw_sprite_ext(sprite_get("powerdunk"), image_index, x, y, spr_dir, 1, 0, -1, 1);
      shader_end();
      break;
    default:
      break;
  }
}

if wearing_hat && sprite_index == sprite_get("idle"){
  draw_sprite_ext(sprite_get("halloweencostume"), image_index, x, y, spr_dir, 1, 0, -1, 1);
}