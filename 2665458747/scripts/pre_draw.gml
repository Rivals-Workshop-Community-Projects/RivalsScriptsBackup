//pre_draw

switch (croagstance)
{
   case 1://Toxic Stance
   {
       draw_sprite_ext(sprite_get("toxic_indic"),toxicstance_indic_timer,x, y, 2*toxicstance_indic_side, 2, 0, c_white, stance_indicator_timer)
    }break;
    
   case 2://Punish Stance
    {
        draw_sprite_ext(sprite_get("punish_indic"),punishstance_indic_timer,x, y, 2, 2, 0, c_white, stance_indicator_timer)
    }break;
}

if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    if attack == AT_FSPECIAL && ((window_timer >= 1 && window == 2) || (window == 3 && window_timer <= 3))
    {
        gpu_set_blendmode(bm_inv_src_color)
        draw_sprite_ext(sprite_get("fspecial_a"),image_index,x-10*spr_dir, y, 2*spr_dir, 2, 0, c_purple, .9)
        gpu_set_blendmode(bm_normal)
        
        if window_timer >= 2 || (window == 3)
        {
            gpu_set_blendmode(bm_add)
            draw_sprite_ext(sprite_get("fspecial_a"),image_index,x-35*spr_dir, y, 2*spr_dir, 2, 0, c_purple, 1)
            gpu_set_blendmode(bm_normal)
        }
        
        if window_timer >= 3 || (window == 3)
        {
            gpu_set_blendmode(bm_inv_src_color)
            draw_sprite_ext(sprite_get("fspecial_a"),image_index,x-55*spr_dir, y, 2*spr_dir, 2, 0, c_purple, .5)
            gpu_set_blendmode(bm_normal)
        }
        
        if window_timer >= 4 || (window == 3)
        {
            gpu_set_blendmode(bm_add)
            draw_sprite_ext(sprite_get("fspecial_a"),image_index,x-80*spr_dir, y, 2*spr_dir, 2, 0, c_purple, 1)
            gpu_set_blendmode(bm_normal)
        }
    }
}

if state == PS_RESPAWN
{   
    draw_sprite_ext(sprite_get("platbox"), get_gameplay_time()/8, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(sprite_get("platboxtxt"), croagrespawntxtbox, x, y, 2, 2, 0, c_white, 1)
}