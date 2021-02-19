///
shader_start();

if hhalo > 0 or ((state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_EXTRA_1 && window < 3) {
          if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 86, y - 98  );


}



if  spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x - 46, y - 98 );


}
}

if hhalo = 0 {
if fcharge >= 10 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_FSTRONG && window < 5 {
    
      if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 96, y - 90  );


}



if  spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x - 36, y - 90 );


}
    
}

if fcharge >= 10 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_USTRONG && window < 3 {
    
      if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 96, y - 90  );


}


if  spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x - 36, y - 90 );


}
    
}

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_TAUNT && window < 3 {
    
      if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 86, y - 100  );


}


if  spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x - 46, y - 100 );


}
    
}


if fcharge >= 15 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) && attack == AT_DSTRONG && window < 4 {
    
      if spr_dir == 1 {
     draw_sprite(sprite_get("halo1"), get_gameplay_time() / 3, x - 96, y - 90  );


}


if  spr_dir == -1 {
     draw_sprite(sprite_get("halo2"), get_gameplay_time() / 3, x - 36, y - 90 );


}
    
}
}


shader_end() 