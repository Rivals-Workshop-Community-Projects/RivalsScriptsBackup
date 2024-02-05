var is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
if is_attacking switch attack{
    case AT_DATTACK:
    shader_start();
    if window == 2 draw_sprite_ext(sprite_get("vfx_dash_boom2"), window_timer/2, x, y, spr_dir*2, 2, 0, c_white, 1);
    shader_end();
    break;
}