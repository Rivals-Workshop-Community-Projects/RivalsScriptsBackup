shader_start();

if gun == 0 {
      if redP < 50 {
        draw_sprite_ext(sprite_get("power"), 0, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      }
      
      if redP >= 50 && redP < 100 {
        draw_sprite_ext(sprite_get("power"), 1, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      } 
   
      if redP >= 100 && redP < 150 {
        draw_sprite_ext(sprite_get("power"), 2, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      } 
      
      if redP >= 150 && redP < 200 {
        draw_sprite_ext(sprite_get("power"), 3, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      }
      
      if redP >= 200 && redP < 250 {
        draw_sprite_ext(sprite_get("power"), 4, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      }
      
      if redP >= 250 && redP < 300 {
        draw_sprite_ext(sprite_get("power"), 5, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      }
      
      if redP >= 300 {
        draw_sprite_ext(sprite_get("power"), 6, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
      }
 
}

if gun == 1 {
    draw_sprite_ext(sprite_get("mag1"), 6 - bulletnum, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
}

if gun == 2 {
    draw_sprite_ext(sprite_get("mag2"), 12 - bulletnum, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
}

if gun == 3 {
    draw_sprite_ext(sprite_get("mag3"), 3 - bulletnum, Powx , Powy, 1,1, 0, -1, 0.5 + move_cooldown[AT_USPECIAL_GROUND]/30)
}

shader_end()