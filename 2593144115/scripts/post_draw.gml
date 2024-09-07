shader_start();
if (attack == AT_FSPECIAL && window >= 2 && window <= 3)
{
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
if (spr_dir = 1) draw_sprite_ext(sprite_get("fspecial_fx"), floor(hadoken_fx_frame/8 + window*3 - 6 + free*6), x, y, 1, 1, 0, c_white, 1);
else draw_sprite_ext(sprite_get("fspecial_fx_2"), floor(hadoken_fx_frame/8 + window*3 - 6 + free*6), x, y, 1, 1, 0, c_white, 1);
}
}
shader_end();


if (amaya_venom && id == amaya_venom_id){
            amaya_venom_sprite = sprite_get("venom_mark");
        shader_start();
    if (amaya_venom_sprite != -1)
        draw_sprite(amaya_venom_sprite, amaya_venom_count-1, x, y-char_height-22);
        shader_end();
}