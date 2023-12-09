//pre_draw.gml
var temp_color = c_white;

//LANDING DUST
if(state == PS_ATTACK_GROUND ||state == PS_ATTACK_AIR){	
	if attack == AT_USPECIAL && window <3 {
		shader_start();
        if !free{
            draw_sprite_ext( sprite_get("dust1"), state_timer/1.5, x- 44*spr_dir, y, spr_dir, 1, 0, c_white, 1); 
            draw_sprite_ext( sprite_get("dust1"), state_timer/1.5, x+ 44*spr_dir, y, -spr_dir, 1, 0, c_white, 1); 
        } else {
            draw_sprite_ext( sprite_get("boost"), state_timer/1.5, x, y + 16, spr_dir, 1, 0, c_white, 1); 
        }
        shader_end();
	}
	if attack == AT_FSPECIAL && window ==2 {
		shader_start();
        draw_sprite_ext( sprite_get("dust1"), state_timer/2+3, x+ 54*spr_dir, y-2, -spr_dir, 1, 0, c_white, 1); 
        shader_end();
    }
	if attack == AT_DSPECIAL && window ==2  && !free{
		shader_start();
            if hsp >= 0{draw_sprite_ext( sprite_get("dust1"), state_timer/1.5, x- 44, y, 1, 1, 0, c_white, 1);}
            if hsp <= 0{draw_sprite_ext( sprite_get("dust1"), state_timer/1.5, x+ 44, y, -1, 1, 0, c_white, 1);} 
        shader_end();
    }
}