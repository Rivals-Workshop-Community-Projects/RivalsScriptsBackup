//postdraw

shader_start();

//Duplicated for window 3 in pre_draw
if (attack == AT_EXTRA_3 && state == PS_ATTACK_AIR && window == 2) {
    var l_off = (spr_dir == -1) ? 2 : 0; // since we don't flip based on spr_dir, extra alignment is needed
    draw_sprite_stretched(sprite_get("uspec_claw_wire"), 0, claw_x-6+l_off, y-38, 10, claw_abs_y-y+36);
    draw_sprite(sprite_get("uspec_claw_tip"), 0, claw_x+l_off, claw_abs_y);
}

shader_end();