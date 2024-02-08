if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL and window == 2 {
    draw_sprite_ext(sprite_get("thoughtbubble"), 0, x + (42*spr_dir), y - 44, spr_dir, 1, 0, c_white, 1);
    draw_sprite(sprite_get("notes_small"), notes[note_pointer], x + (38*spr_dir) - (8 * (spr_dir == -1)), y - 68);
}

//G7 Glitch effect by Giik
shader_start();

if get_player_color(player) == 22 && random_func(4, 2, 1) == 0  && (state == PS_IDLE || state == PS_CROUCH){
    var fs = random_func(0, sprite_height -1, 1);
    draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+1, (x+(random_func(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir*1, y+fs*1 - sprite_get_yoffset(sprite_index)*1, spr_dir*1, 1, image_blend, 0.8);
}
shader_end();