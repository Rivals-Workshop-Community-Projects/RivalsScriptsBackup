if (!custom_clone){

//print (state_timer);

shader_start();

if (hat_on == true){
    
switch (state) {
    case PS_IDLE:
        draw_sprite_ext(sprite_get("idle_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_PARRY_START:
        draw_sprite_ext(sprite_get("idle_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_CROUCH:
        draw_sprite_ext(sprite_get("crouch_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WALK:
        draw_sprite_ext(sprite_get("walk_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WALK_TURN:
        draw_sprite_ext(sprite_get("walkturn_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_DASH_START:
        draw_sprite_ext(sprite_get("dashstart_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_DASH_STOP:
        draw_sprite_ext(sprite_get("dashstart_hat"), image_index, x, y+2, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_DASH_TURN:
        draw_sprite_ext(sprite_get("dashturn_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_DASH:
        draw_sprite_ext(sprite_get("dash_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_JUMPSQUAT:
        draw_sprite_ext(sprite_get("jumpstart_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_FIRST_JUMP:
        draw_sprite_ext(sprite_get("jump_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_DOUBLE_JUMP:
    if (djump == 1){
        draw_sprite_ext(sprite_get("doublejump_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    }
    if (djump == -1){
        draw_sprite_ext(sprite_get("doublejump2_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    }    
    break;
    case PS_IDLE_AIR:
        draw_sprite_ext(sprite_get("jump_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WALL_JUMP:
        draw_sprite_ext(sprite_get("walljump_hat"), image_index, x+14*spr_dir, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WALL_TECH:
        draw_sprite_ext(sprite_get("walljump_hat"), image_index, x+14*spr_dir, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_ROLL_BACKWARD:
        draw_sprite_ext(sprite_get("roll_backward_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_ROLL_FORWARD:
        draw_sprite_ext(sprite_get("roll_forward_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_TECH_BACKWARD:
        draw_sprite_ext(sprite_get("roll_backward_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_TECH_FORWARD:
        draw_sprite_ext(sprite_get("roll_forward_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_LAND:
        draw_sprite_ext(sprite_get("land_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_PRATLAND:
        draw_sprite_ext(sprite_get("land_hat"), image_index, x, y, spr_dir*2, 2, 0, c_ltgray, 1 );
    break;
    case PS_LANDING_LAG:
        draw_sprite_ext(sprite_get("land_hat"), image_index, x, y+10, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_TECH_GROUND:
        draw_sprite_ext(sprite_get("land_hat"), image_index, x+15*spr_dir, y+20, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_AIR_DODGE:
        draw_sprite_ext(sprite_get("dashstart_hat"), image_index, x+4*spr_dir, y-10, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WAVELAND:
        draw_sprite_ext(sprite_get("dashstart_hat"), image_index, x+21*spr_dir, y+26, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_HITSTUN:
        if (hurt_img == 0){
        	draw_sprite_ext(sprite_get("land_hat"), image_index, x-5*spr_dir, y-3, spr_dir*2, 2, 0, c_white, 1 );
        }
        if (hurt_img == 1){
        	draw_sprite_ext(sprite_get("hurt_hat3"), image_index, x-14*spr_dir, y-64, spr_dir*2, 2, 0, c_white, 1 );
        }
        if (hurt_img == 2){
        	draw_sprite_ext(sprite_get("hurt_hat2"), image_index, x+4*spr_dir, y-43, spr_dir*2, 2, 270*spr_dir, c_white, 1 );
        }
        if (hurt_img == 3){
        	draw_sprite_ext(sprite_get("hurt_hat2"), image_index, x+16*spr_dir, y-15, spr_dir*2, -2, 90*spr_dir, c_white, 1 );
        }
        if (hurt_img == 4){
        	draw_sprite_ext(sprite_get("hurt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
        }
        if (hurt_img == 5){
        	draw_sprite_ext(sprite_get("spinhurt_hat"), image_index, x+6*spr_dir, y-4, spr_dir*2, 2, 0, c_white, 1 );
        }
    break;
    case PS_HITSTUN_LAND:
        draw_sprite_ext(sprite_get("hurt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_TUMBLE:
        draw_sprite_ext(sprite_get("spinhurt_hat"), image_index, x+6*spr_dir, y-4, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_WRAPPED:
        draw_sprite_ext(sprite_get("hurt_hat3"), image_index, x-14*spr_dir, y-64, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_FROZEN:
        draw_sprite_ext(sprite_get("hurt_hat3"), image_index, x-14*spr_dir, y-64, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_RESPAWN:
        draw_sprite_ext(sprite_get("idle_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    break;
    case PS_SPAWN:
    	if (state_timer >= 110){
    		draw_sprite_ext(sprite_get("idle_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    	}
    break;

 
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        switch (attack) {
            case AT_JAB:
                draw_sprite_ext(sprite_get("jab_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_DATTACK:
                draw_sprite_ext(sprite_get("dattack_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_FTILT:
                draw_sprite_ext(sprite_get("ftilt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_DTILT:
                draw_sprite_ext(sprite_get("dtilt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_UTILT:
                draw_sprite_ext(sprite_get("utilt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_FSTRONG:
                draw_sprite_ext(sprite_get("fstrong_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_USTRONG:
                draw_sprite_ext(sprite_get("ustrong_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_DSTRONG:
                draw_sprite_ext(sprite_get("dstrong_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_NAIR:
                draw_sprite_ext(sprite_get("nair_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_FAIR:
                draw_sprite_ext(sprite_get("fair_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_BAIR:
                if (free){
                    draw_sprite_ext(sprite_get("bair_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
                }
                else {
                    draw_sprite_ext(sprite_get("bair_hat"), image_index, x, y+8, spr_dir*2, 2, 0, c_white, 1 );
                }
                
            break;
            case AT_UAIR:
                draw_sprite_ext(sprite_get("uair_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_DAIR:
                draw_sprite_ext(sprite_get("dair_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_FSPECIAL:
                draw_sprite_ext(sprite_get("fspecial_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_FSPECIAL_AIR:
                draw_sprite_ext(sprite_get("fspecial_air_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_USPECIAL:
                draw_sprite_ext(sprite_get("uspecial_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_DSPECIAL:
                if (free){
                    draw_sprite_ext(sprite_get("dspecialg_air_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
                }
                else {
                    draw_sprite_ext(sprite_get("dspecial_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
                }
            break;
            case AT_DSPECIAL_AIR:
                draw_sprite_ext(sprite_get("dspecial_air_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            case AT_TAUNT:
                draw_sprite_ext(sprite_get("taunt_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
            break;
            
        }
    break; 
    default:
}

if (sprite_index == sprite_get("phone_open")){
	draw_sprite_ext(sprite_get("phone_open_hat"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
}

}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL_2){
    if ((window == 1 && window_timer > 9 && special_down) || (window == 4 || window == 5)){
        draw_sprite_ext(sprite_get("nspecial_interface"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    }
    if (window == 2 && window_timer < 9){
        draw_sprite_ext(sprite_get("nspecial_button"), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
    }
    
    if (window == 2 && window_timer == 9){
        draw_sprite_ext(sprite_get("idle_hologram"), 0, hologram.x, hologram.y, hologram.spr_dir*2, 2, 0, c_white, 1 );
    }
    
}

if (sprite_index == sprite_get("phone_open")){
	if (image_index > 1 && image_index < 5){
		draw_sprite_ext(sprite_get("nspecial_interface"), 0, x, y, spr_dir*2, 2, 0, c_white, 1 );
	}
}


if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL && dspecial_hit && window == 3){
	draw_sprite_ext(sprite_get("dspecial_effect"), get_gameplay_time()*.3, 
	x+70*spr_dir, y-55, spr_dir*2, 2, 0, c_white, 1 );
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL_AIR 
&& dspecial_air_hit && window == 2){
	
	draw_sprite_ext(sprite_get("dspecial_air_effect"), get_gameplay_time()*.3, 
	x+30*spr_dir, y-2, spr_dir*2, 2, 0, c_white, 1 );
}


shader_end();

if (hologram_is_alive == true && hologram_icon == 1){
	draw_debug_text(hologram.x+attack_holo_size, hologram.y-118, string(attack_holo_nome));
	draw_sprite_ext(sprite_get("arrow"), 0, hologram.x-7, hologram.y-104, 2, 2, 0, col_arrow, 1 );
	draw_sprite_ext(sprite_get("arrow_line"), 0, hologram.x-7, hologram.y-104, 2, 2, 0, c_white, 1 );
}

user_event(12);
}



shader_start();

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL 
&& image_index >= 2 && image_index < 6 && was_parried == false){
	draw_sprite_ext(sprite_get("fspecial_effect"), fspecial_cont, x, y, spr_dir*2, 2, 0, c_white, 1 );
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_AIR 
&& image_index >= 2 && image_index < 6 && was_parried == false){
	draw_sprite_ext(sprite_get("fspecial_effect"), fspecial_cont, x, y, spr_dir*2, 2, 0, c_white, 1 );
}

if (fspecial_hit >= 0){
    if (attack == AT_FSPECIAL){
        draw_sprite_ext(sprite_get("fspecial_hit"), fspecial_hit, x-10*spr_dir, y-160, spr_dir*2, 2, 0, c_white, 1 );
    }
    if (attack == AT_FSPECIAL_AIR){
        draw_sprite_ext(sprite_get("fspecial_hit"), fspecial_hit, x-30*spr_dir, y-60, spr_dir*2, 2, 0, c_white, 1 );
    }
    
}

shader_end();

if (attack == AT_FSTRONG || attack == AT_FSTRONG_2){
    if (window == 4 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast"), shotgun_cont, x+70*(spr_dir), y-70, spr_dir*2, 2, 0, c_white, 1 );
    }
}

if (attack == AT_USTRONG || attack == AT_USTRONG_2){
    if (window == 4 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast_up"), shotgun_cont, x+45*(spr_dir), y-205, spr_dir*2, 2, 0, c_white, 1 );
    }
}

if (attack == AT_DSTRONG || attack == AT_DSTRONG_2){
    if (window == 4 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast"), shotgun_cont, x+70*(spr_dir), y-25, spr_dir*2, 2, 270*spr_dir, c_white, 1 );
    }
}

if (attack == AT_BAIR || attack == AT_FTHROW){
    if (window == 4 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast"), shotgun_cont, x-65*(spr_dir), y-80, -spr_dir*2, 2, 0, c_white, 1 );
    }
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
    if (window == 4 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast"), shotgun_cont, x+130*(spr_dir), y-70, spr_dir*2, 2, 0, c_white, 1 );
    }
}

if (attack == AT_DSPECIAL_AIR || attack == AT_DTHROW){
    if (window == 3 && window_timer < 15){
        draw_sprite_ext(sprite_get("blast_up"), shotgun_cont, x+200*(spr_dir), y+25, spr_dir*2, 2, 270*spr_dir, c_white, 1 );
    }
}