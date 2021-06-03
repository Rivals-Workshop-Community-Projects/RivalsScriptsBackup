//debug

//health bar
draw_sprite(sprite_get("hp_bar_empty"),0,x, y - 50)
draw_sprite_part(sprite_get("hp_bar_full"),sprite_get_width(sprite_get("hp_bar_full"))*(1 - (hp_rn/hp_max)),0,0,sprite_get_width(sprite_get("hp_bar_full"))*(hp_rn/hp_max),sprite_get_height(sprite_get("hp_bar_full")),x-25,y-70)


/*
draw_debug_text(x-20, y - 75,"Minion Spawned: "+string(minions_spawn_rn))
draw_debug_text(x-20, y - 100,"Minion Timer: "+string(minion_spawn_timer_rn))
draw_debug_text(x-20, y - 125,"Level: "+string(house_level))
draw_debug_text(x-20, y - 150,"State Timer: "+string(state_timer))
draw_debug_text(x-20, y - 175,"State: "+string(state))
*/
