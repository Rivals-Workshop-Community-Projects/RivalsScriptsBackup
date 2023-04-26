if ((state == PS_RESPAWN) || (attack == AT_TAUNT && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")){
    shader_end();
    draw_sprite(sprite_get("plat_front"), image_index, x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

if(attack == AT_DSTRONG && state == PS_ATTACK_GROUND){
    if(window == 2 && strong_charge > 0){
        var anim = 2 + (strong_charge / 3) % 3;
        shader_start();
        //draw_sprite(sprite_get("dstrong_hold"), anim, x*2, y*2);
        draw_sprite_ext(sprite_get("dstrong_hold"), anim, x + -4*spr_dir, y - 8, 2 * spr_dir, 2, 0, c_white, 1);
        shader_end();
    }
}
if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        var anim = 2 + (strong_charge / 3) % 3;
        shader_start();
        //draw_sprite(sprite_get("dstrong_hold"), anim, x*2, y*2);
        draw_sprite_ext(sprite_get("fstrong_hold"), anim, x + spr_dir, y, 2 * spr_dir, 2, 0, c_white, 1);
        shader_end();
    }
}

var fx_image_index = get_gameplay_time() / 10;

var fire_cooldown = c_white
var ice_cooldown = c_white
var elec_cooldown = c_white

if(materia_fire_cooldown > 0){
    fire_cooldown = c_dkgray;
}if(materia_ice_cooldown > 0){
    ice_cooldown = c_dkgray;
}if(materia_elec_cooldown > 0){
    elec_cooldown = c_dkgray;
}

switch(materia_state){
    case 0: // no material, off on lightning
    draw_sprite_ext(sprite_get("materia_small_off"), 2, x - 10, y + 14, 1, 1, 0, elec_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 0, x - 20, y + 30, 1, 1, 0, fire_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 1, x - 0, y + 30, 1, 1, 0, ice_cooldown, draw_materia);
    break;
    case 1: // activate fire
    draw_sprite(sprite_get("materiaselect_fire"), materia_state_timer/2, x - 18, y + 10);
    break;
    case 2: //active fire
    draw_sprite_ext(sprite_get("materia_fire"), fx_image_index, x - 14, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 1, x - 20, y + 30, 1, 1, 0, ice_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 2, x - 0, y + 30, 1, 1, 0, elec_cooldown, draw_materia);
    break;
    case 3: // activate ice
    draw_sprite(sprite_get("materiaselect_ice"), materia_state_timer/2, x - 18, y + 10);
    break;
    case 4: //active ice
    draw_sprite_ext(sprite_get("materia_ice"), fx_image_index, x - 14, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 2, x - 20, y + 30, 1, 1, 0, elec_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 0, x - 0, y + 30, 1, 1, 0, fire_cooldown, draw_materia);
    break;
    case 5: // activate lightning
    draw_sprite(sprite_get("materiaselect_thunder"), materia_state_timer/2, x - 18, y + 10);
    break;
    case 6: //active lightning
    draw_sprite_ext(sprite_get("materia_thunder"), fx_image_index, x - 14, y + 8,1,1,0,c_white,draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 0, x - 20, y + 30, 1, 1, 0, fire_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small"), 1, x - 0, y + 30, 1, 1, 0, ice_cooldown, draw_materia);
    break;
    case 7: //turn off fire
    draw_sprite(sprite_get("materiaselect_fireoff"), materia_state_timer/2, x - 18, y + 10);
    break;
    case 8: // no material, off on fire
    draw_sprite_ext(sprite_get("materia_small_off"), 0, x - 10, y + 14, 1, 1, 0, fire_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 1, x - 20, y + 30, 1, 1, 0, ice_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 2, x - 0, y + 30, 1, 1, 0, elec_cooldown, draw_materia);
    break;
    case 9: //turn off ice
    draw_sprite(sprite_get("materiaselect_iceoff"), materia_state_timer/2, x - 18, y + 10);
    break;
    case 10: // no material, off on ice
    draw_sprite_ext(sprite_get("materia_small_off"), 1, x - 10, y + 14, 1, 1, 0, ice_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 2, x - 20, y + 30, 1, 1, 0, elec_cooldown, draw_materia);
    draw_sprite_ext(sprite_get("materia_small_off"), 0, x - 0, y + 30, 1, 1, 0, fire_cooldown, draw_materia);
    break;
    case 11: //turn off elec
    draw_sprite(sprite_get("materiaselect_thunderoff"), materia_state_timer/2, x - 18, y + 10);
    break;
}

if(has_shield = false){
    if draw_indicator{
	draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - char_height - hud_offset - 28, 1, 1, 0, c_dkgray, 1);
    }
}