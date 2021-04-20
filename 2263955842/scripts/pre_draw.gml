
//pre_draw



/*
if(hurtboxID.visible && grazeBox != noone){
    var gpuBlendMode = gpu_get_blendmode();
    gpu_set_fog(true, state == PS_HITSTUN ? c_aqua : c_blue, 0, 0);
    draw_sprite_ext(grazeBox.sprite_index, grazeBox.image_index, grazeBox.x, grazeBox.y, grazeBox.spr_dir*grazeBox.image_xscale, grazeBox.image_yscale, 0, c_white, hurtboxID.image_alpha);
    gpu_set_fog(false, c_white, 0, 0);
}
*/


if ((attack == AT_NSPECIAL_2) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    if (window == 2) or (window == 3)
    {
        var yinyang_id = noone;
        
        with (obj_article2)
        {
            if(player_id == other)
            {
                yinyang_id = self;
            }
        }
        if (yinyang_id != noone)
        {
            draw_sprite_ext(sprite_get("arrow"),0,yinyang_id.x,yinyang_id.y,1,1,nspe2_rot,c_white,1);
        }
    }
}