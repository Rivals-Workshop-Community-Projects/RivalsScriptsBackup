// pre-draw

 shader_start();
//cappy taunt	(thanks kasu hearts)
if(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND)
{
    with(oPlayer)
    {
        if("msgw_compat" in self && id != other.id)
        {
            var smallmult = 1;
            if(small_sprites == 1)
                smallmult = 2;
            draw_sprite_ext(msgw_compat,-1,other.x,other.y,other.spr_dir*smallmult,smallmult,0,c_white,1)
            if("msgw_top_compat" in self) draw_sprite_ext(msgw_top_compat,-1,other.x,other.y,other.spr_dir*smallmult,smallmult,0,c_white,1)
            exit;
        }
    }
    draw_sprite_ext(sprite_get("taunt2"),-1,x,y,spr_dir,1,0,c_white,1);
}
shader_end();