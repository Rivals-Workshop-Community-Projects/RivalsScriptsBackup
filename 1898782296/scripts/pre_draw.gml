shader_start();

if(state == PS_ATTACK_GROUND){
    if(attack == AT_DSTRONG){
        if(window > 1){
            var ring_pos = (x + mace_position + mace_position)/3
            draw_sprite_ext(sprite_get("dstrong_ring"), 0, ring_pos, y - 20, 1*spr_dir, 1, 0, c_white, 1)
        }
    }
}

shader_end();