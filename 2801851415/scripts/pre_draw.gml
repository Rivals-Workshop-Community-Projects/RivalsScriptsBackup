shader_start();
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    switch(attack)
    {
    case AT_DSPECIAL_2:
        if(window == 1)
            draw_sprite_ext(sprite_get("dspecial2_proj"),0,x+ease_sineOut(30,0,window_timer,8)*spr_dir,y-30,1*spr_dir,1,0,c_white,1);
    break;
    }
}
if (state == PS_RESPAWN || state == PS_ATTACK_GROUND && attack == AT_TAUNT && initial_invince == 1)
    draw_sprite(sprite_get("platbg"), 0, x,y);
shader_end();