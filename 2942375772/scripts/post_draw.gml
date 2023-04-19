if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_NSPECIAL and window == 2 {
    draw_sprite_ext(sprite_get("thoughtbubble"), 0, x + (42*spr_dir), y - 44, spr_dir, 1, 0, c_white, 1);
    draw_sprite(sprite_get("notes_small"), notes[note_pointer], x + (38*spr_dir) - (8 * (spr_dir == -1)), y - 68);
}