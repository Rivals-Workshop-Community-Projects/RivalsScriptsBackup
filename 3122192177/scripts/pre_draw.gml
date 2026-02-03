
if(attack == AT_DSTRONG && state == PS_ATTACK_GROUND){
    if(dstrong_charged){
        shader_start();
        draw_sprite_ext(sprite_get("dstrong_vfx"), image_index, x + 0*spr_dir, y, 2 * spr_dir, 2, 0, c_white, 1);
        shader_end();
    }
}

if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    shader_end();
    draw_sprite(sprite_get("plat_behind"), image_index, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

//limit outline (code from rioku)
if(nspec_charge == 180 && played_fanfare){
	gpu_set_fog(true, rainbow_color, 0, 0);
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, spr_dir * 2, 2, 0 , c_black , 1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir * 2, 2, 0 , c_black , 1);
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, spr_dir * 2, 2, 0 , c_black , 1);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir * 2, 2, 0 , c_black , 1);
    gpu_set_fog(false, c_white, 0, 0);  
}

with(pHitBox){
	if(player == other.player and attack == AT_NSPECIAL and (hbox_num == 3 || hbox_num == 4)){
	gpu_set_fog(true, c_white, 0, 0);
	var outlinetrans = 0.5;
    draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    draw_sprite_ext(sprite_index, image_index, x + 2, y, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    draw_sprite_ext(sprite_index, image_index, x - 2, y, spr_dir * 1, 1, 0 , c_black , outlinetrans);
    gpu_set_fog(false, c_white, 0, 0);  
	}
}