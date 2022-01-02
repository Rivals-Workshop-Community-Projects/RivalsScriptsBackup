shader_start()
// with pHitBox
// {
//     if (attack == AT_NSPECIAL_2 and hbox_num == 2)
//     {
//         draw_sprite_ext(sprite_get("vblast"),get_gameplay_time()/2,x,y,1,1,point_direction(0,0,hsp,vsp),-1,1);
//     }
// }
//draw in front of char
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR
{
	switch attack
	{
		case AT_FSTRONG:
			if strong_powered_up
			{
				draw_sprite_ext(sprite_get("fstrong_enhance"),image_index,x,y,spr_dir,image_yscale,0,-1,1)
			}
			break;
		case AT_DSTRONG:
			draw_sprite_ext(sprite_get(strong_powered_up ? "dstrong_explosion" : "dstrong_selfdestruct"),image_index,x,y,spr_dir,image_yscale,0,-1,1)
		break;
	}
}



shader_end();

gpu_push_state();
gpu_set_fog(1,chargecol,1,0);
gpu_set_blendmode(bm_add)
if fspecial_charge == fspecial_max_charge
{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,(0.35*sin(get_gameplay_time() / 6)) + 0.25);
}

gpu_pop_state();