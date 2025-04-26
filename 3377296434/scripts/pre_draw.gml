shader_start();

for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    
    var obj = afterimage_array[i];
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax); //col should be obj.col
}


if (state == PS_CROUCH && on_brick || state == PS_ATTACK_GROUND && attack == AT_DTILT && on_brick){
    draw_sprite_ext(sprite_get("brick_idle"), brick_frame, x, y - 2, 1*spr_dir, 1, 0, c_ltgray, 1);
}

shader_end();