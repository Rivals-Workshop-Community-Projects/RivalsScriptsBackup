
if move_cooldown[AT_DAIR] == 0{
    draw_sprite(sprite_get("red_ready"), 305, temp_x, temp_y - 27)
}

if move_cooldown[AT_FSPECIAL] == 0{
    draw_sprite(sprite_get("purple_ready"), 306, temp_x + 30, temp_y - 27)
}

if move_cooldown[AT_DSPECIAL] == 0{
    draw_sprite(sprite_get("blue_ready"), 307, temp_x + 60, temp_y - 27)
}

if move_cooldown[AT_USPECIAL] == 0{
    draw_sprite(sprite_get("u_ready"), 308, temp_x + 90, temp_y - 27)
}

if (yes && get_gameplay_time() >= 15 and get_gameplay_time() <= 16) {
        set_attack(AT_DSTRONG_2);
    }
    
if (trolled && get_gameplay_time() >= 21 and get_gameplay_time() <= 9999999) {
        draw_debug_text(temp_x+0,temp_y-92, "*Boss - Kaptain K. Rool");
    }
  
if (trolled && get_gameplay_time() >= 200 and get_gameplay_time() <= 400) {
        draw_debug_text(temp_x+0,temp_y-72, "* You and you're stupid Abyss runes won't help you ");
    }
      
if (trolled && get_gameplay_time() >= 420 and get_gameplay_time() <= 530) {
        draw_debug_text(temp_x+0,temp_y-72, "* I'm gonna have fun torturing you and making you ragequit");
    }

     
  if (trolled && get_gameplay_time() >= 3002 and get_gameplay_time() <= 3450) {
        draw_debug_text(temp_x+140,temp_y-172, "* !!!Boss Defeated!!!");
        draw_debug_text(temp_x+0,temp_y-52, " ");
    }   

    if (trolled && get_gameplay_time() >= 3480 and get_gameplay_time() <= 3750) {
        draw_debug_text(temp_x+140,temp_y-172, "* just kidding braintrust");
        draw_debug_text(temp_x+0,temp_y-52, " ");
    }

if (music && get_gameplay_time() >= 21 and get_gameplay_time() <= 200) {
        draw_debug_text(temp_x-140,temp_y-400, "*Now Playing - Crocodile Cacophony");
    }
  