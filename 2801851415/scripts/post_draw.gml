shader_start();
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch(attack)
    {
    case AT_DSPECIAL_2:
        if(window == 2)
            draw_sprite_ext(sprite_get("dspecial2_proj"),0,x-ease_sineOut(-10,25,window_timer,6)*spr_dir,y-30,1*spr_dir,1,clamp(ease_linear(0,45,window_timer,6),0,45)*spr_dir,c_white,1);
    break;
    }
}
shader_end();