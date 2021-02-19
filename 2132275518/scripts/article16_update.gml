timer++;

bg_x += bg_spd;
bg_y += bg_spd;

if (timer >= 90) {
    
    obj_stage_main.shake_amount = 0;
    space_alpha = lerp(1, 0, (timer - 90) / 15);
    
    if (space_alpha <= 0) {
        instance_destroy();
        exit;
    }
}
else {
    if (timer < 30)
        obj_stage_main.shake_amount = 16;
}



with (pHitBox) {
    if (orig_player = obj_stage_main.player) {
        instance_destroy(id);
        continue;
    }
}