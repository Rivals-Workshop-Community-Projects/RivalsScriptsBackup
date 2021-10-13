//debug

//health bar
draw_sprite(sprite_get("hp_bar_empty"),0,x, y - 50)
draw_sprite_part(sprite_get("hp_bar_full"),sprite_get_width(sprite_get("hp_bar_full"))*(1 - (hp_rn/hp_max)),0,0,sprite_get_width(sprite_get("hp_bar_full"))*(hp_rn/hp_max),sprite_get_height(sprite_get("hp_bar_full")),x-25,y-70)
//draw_debug_text(x-20, y - 75,"array hit count: "+string(hit_array_count))
//draw_debug_text(x-20, y - 100,"array hit: "+string(hit_array))

/*
draw_debug_text(x-20, y - 75,"Last Hitbox ID: "+string(hit_hitbox))
draw_debug_text(x-20, y - 100,"Last Hitbox Group: "+string(hit_group))
draw_debug_text(x-20, y - 125,"Last Hitbox Attack: "+string(hit_attack))
draw_debug_text(x-20, y - 150,"Previous Hitbox ID: "+string(hit_hitbox_previous))
draw_debug_text(x-20, y - 175,"Previous Hitbox Group: "+string(hit_group_previous))
draw_debug_text(x-20, y - 200,"Previous Hitbox Attack: "+string(hit_attack_previous))
draw_debug_text(x-20, y - 225,"Last Hit Player ID: "+string(hit_player_id))
draw_debug_text(x-20, y - 250,"Previous Player ID: "+string(hit_player_id_previous))

//draw_debug_text(x-20, y - 225,"Hit Attack Cooldown: "+string(hit_attack_cooldown))
//draw_debug_text(x-20, y - 250,"Hit Cooldown: "+string(hit_cooldown))


draw_debug_text(x-20, y - 75,"Minion Spawned: "+string(minions_spawn_rn))
draw_debug_text(x-20, y - 100,"Minion Timer: "+string(minion_spawn_timer_rn))
draw_debug_text(x-20, y - 125,"Level: "+string(house_level))
draw_debug_text(x-20, y - 150,"State Timer: "+string(state_timer))
draw_debug_text(x-20, y - 175,"State: "+string(state))
*/
