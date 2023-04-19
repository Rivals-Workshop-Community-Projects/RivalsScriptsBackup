//

shader_start();

        draw_sprite( sprite_get("phits0"), 1, temp_x - 56, temp_y - 69);  
if move_cooldown[AT_DSPECIAL] >= 10{
  if !instance_exists(pig){
        draw_sprite( sprite_get("pigr"), 1, temp_x - 95, temp_y - 96);
}
}
        if move_cooldown[AT_DSPECIAL] <= 10{
          if !instance_exists(pig){
          draw_sprite( sprite_get("pigg"), 1, temp_x - 95, temp_y - 96);
          }
        }
if instance_exists(pig){
  draw_sprite( sprite_get("pigy"), 1, temp_x - 95, temp_y - 96);
        if (pig.pig_hit = 0){
          draw_sprite( sprite_get("phits3"), 1, temp_x - 56, temp_y - 69);
        }
        if (pig.pig_hit >= 2 && pig.pig_hit <= 70){
          draw_sprite( sprite_get("phits2"), 1, temp_x - 56, temp_y - 69);
        }
        if (pig.pig_hit >= 71 && pig.pig_hit <= 100){
          draw_sprite( sprite_get("phits1"), 1, temp_x - 56, temp_y - 69);   
        }
        if (pig.pig_hit >= 100 || pig.pig_state == 8){
          draw_sprite( sprite_get("phits0"), 1, temp_x - 56, temp_y - 69);   
        }
}

shader_end();