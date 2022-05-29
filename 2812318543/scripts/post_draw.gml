
shader_start();

//draw sword to match zeke's alt colors
init_UNshader = false;
init_shader();

if(pandoria.pandy_control){
	gpu_set_fog(true,c_black,0,1);
	var overlay = draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, c_black, 0.25 );
	gpu_set_fog(false,c_white,0,0);
}

//pandoria sword when held
if(pandoria.pandy_control){
    for(var i = 0; i < array_length_1d(pandoria.swordhold_sprites); i++){
        if(pandoria.swordhold_sprites[i] == pandoria.sprite_index){
            draw_sprite_ext(swordhold_swords[i], pandoria.image_index, pandoria.x, pandoria.y, pandoria.spr_dir * 2, 2, 0, c_white, 1);
        }
    }
}

//projectile!!
with(pHitBox){
	if(player_id == other && attack == AT_NSPECIAL_2 && hbox_num == 1){
		var x_adj = -70 * sin(degtorad(targ_angle));
		var y_adj = 70 * cos(degtorad(targ_angle));
		
		draw_sprite_ext(sprite_get("pandy_nproj"), frame, x - x_adj, y + y_adj, 2, 2, targ_angle, c_white, 1);
	}
	if(player_id == other && attack == AT_FSPECIAL_2 && hbox_num == 1){
		draw_sprite_ext(sprite_get("pandy_fproj"), frame, x, y, spr_dir, 1, 0, c_white, 1);
	}
}

//dspec sword throw
for(var k = 0; k < 2; k++){
    if(dspec_sword_handler[k] != -1){
        draw_sprite_ext(dspec_swords[k], dspec_sword_handler[k].anim_frame, dspec_sword_handler[k].x, dspec_sword_handler[k].y, 
            2*dspec_sword_handler[k].spr_dir, 2, 0, c_white, 1);
    }
}


shader_end();

//pandy hurtbox visual
if(get_match_setting(SET_HITBOX_VIS) && pandoria.pandy_control){
	if(pandoria.state == 17){
		draw_sprite_ext(asset_get("ex_guy_crouch_box"), 0, pandoria.x, pandoria.y + 2, 1, 1, 0, c_white, 0.5);
	}else{
		draw_sprite_ext(asset_get("ex_guy_hurt_box"), 0, pandoria.x, pandoria.y + 2, 1, 1, 0, c_white, 0.5);
	}
}

