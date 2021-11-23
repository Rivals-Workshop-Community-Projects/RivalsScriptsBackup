//pre-draw

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
    if (attack == UNOWN_ATK.I)
    {
        //the prong is vertical on sprite: needs adjustment
        var angle = (360 + unown_i_angle - 90) % 180;
        shader_start();
        draw_sprite_ext(unown_i_prongs_spr, image_index, 
                        x, y-unown_eye_center_offset, 2, 2, angle, c_white, 1);
        shader_end();
    }
}