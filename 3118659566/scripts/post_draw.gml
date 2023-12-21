if state == PS_ATTACK_AIR && attack == AT_EXTRA_1 && window == 1 {


shader_start();    
if spr_dir = 1 { 
    if snapped_angle = 90  { 
        draw_sprite_ext(sprite_get("maildash_charge_up"), airdash_frame, x, y, 1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_up_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x, y - 70, 1, 1, 1, c_white, 1);
    } else if snapped_angle = 360 || snapped_angle = 0 { 
        draw_sprite_ext(sprite_get("maildash_charge_left"), airdash_frame, x, y, 1, 1, 1, c_white, 1);
    	hurtboxID.sprite_index = sprite_get("maildash_charge_left_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 20, y - 50, 1, 1, -90, c_white, 1);
    } else if snapped_angle = 180 { 
        draw_sprite_ext(sprite_get("maildash_charge_right"), airdash_frame, x, y, 1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_right_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 20, y - 50, 1, 1, 90, c_white, 1);
    } else if snapped_angle = 135 { 
        draw_sprite_ext(sprite_get("maildash_charge_upleft"), airdash_frame, x, y, 1, 1, 1, c_white, 1); 
		hurtboxID.sprite_index = sprite_get("maildash_charge_upleft_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 15, y - 75, 1, 1, 45, c_white, 1);
    } else if snapped_angle = 45 { 
        draw_sprite_ext(sprite_get("maildash_charge_upright"), airdash_frame, x, y, 1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_upright_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 30, y - 75, 1, 1, -45, c_white, 1);
    } else if snapped_angle = 225 { 
        draw_sprite_ext(sprite_get("maildash_charge_downleft"), airdash_frame, x, y, 1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_downleft_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 25, y - 33, 1, 1, 135, c_white, 1);
    } else if snapped_angle = 315 { 
        draw_sprite_ext(sprite_get("maildash_charge_downright"), airdash_frame, x, y, 1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_downright_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 25, y - 33, 1, 1, -135, c_white, 1);
    } else if snapped_angle = 270 { 
        draw_sprite_ext(sprite_get("maildash_charge_down"), airdash_frame, x, y, 1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_down_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 0, y - 10, 1, 1, 180, c_white, 1);
    }
    
} else if spr_dir = -1 {
    if snapped_angle = 90 { 
        draw_sprite_ext(sprite_get("maildash_charge_up"), airdash_frame, x, y, -1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_up_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x, y - 70, 1, 1, 1, c_white, 1);
    } else if snapped_angle = 360 || snapped_angle = 0 { 
        draw_sprite_ext(sprite_get("maildash_charge_right"), airdash_frame, x, y, -1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_right_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 20, y - 50, 1, 1, -90, c_white, 1);
    } else if snapped_angle = 180 { 
        draw_sprite_ext(sprite_get("maildash_charge_left"), airdash_frame, x, y, -1, 1, 1, c_white, 1);
 		hurtboxID.sprite_index = sprite_get("maildash_charge_left_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 20, y - 50, 1, 1, 90, c_white, 1);
    } else if snapped_angle = 135 { 
        draw_sprite_ext(sprite_get("maildash_charge_upright"), airdash_frame, x, y, -1, 1, 1, c_white, 1); 
		hurtboxID.sprite_index = sprite_get("maildash_charge_upright_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 35, y - 75, 1, 1, 45, c_white, 1);
    } else if snapped_angle = 45 { 
        draw_sprite_ext(sprite_get("maildash_charge_upleft"), airdash_frame, x, y, -1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_upleft_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 20, y - 75, 1, 1, -45, c_white, 1);
    } else if snapped_angle = 225 { 
        draw_sprite_ext(sprite_get("maildash_charge_downright"), airdash_frame, x, y, -1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_downright_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 20, y - 33, 1, 1, 135, c_white, 1);
    } else if snapped_angle = 315 { 
        draw_sprite_ext(sprite_get("maildash_charge_downleft"), airdash_frame, x, y, -1, 1, 1, c_white, 1); //DONE
		hurtboxID.sprite_index = sprite_get("maildash_charge_downleft_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x + 25, y - 33, 1, 1, -135, c_white, 1);
    } else if snapped_angle = 270 { 
        draw_sprite_ext(sprite_get("maildash_charge_down"), airdash_frame, x, y, -1, 1, 1, c_white, 1);
		hurtboxID.sprite_index = sprite_get("maildash_charge_down_hurt");
        draw_sprite_ext(sprite_get("arrow"), arrow_frame, x - 0, y - 10, 1, 1, 180, c_white, 1);
    }
}
}
shader_end();
