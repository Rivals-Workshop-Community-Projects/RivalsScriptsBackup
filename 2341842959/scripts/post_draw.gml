//post-draw
/*
draw_debug_text( x+50, y - 60, string(cor_dir));

draw_debug_text( x+50, y - 40, string(corR));

draw_debug_text( x+50, y - 20, string(corG));

draw_debug_text( x+50, y - 1, string(corB)); */



shader_start();

if (attack == AT_FSPECIAL && window == 7 && window_timer < 12 
    && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("clawshotring"), window_timer/3, 
    x+ring_x*spr_dir, y-ring_y, 1, 1, ring_rot*spr_dir, c_white, 1 );
}

shader_end();