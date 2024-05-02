shader_start();


if (state == PS_IDLE && window == 0 && hasAltCloth == true){

    if (get_player_color(player) == 1){
        draw_sprite_ext(sprite_get("outlaw_idle"), image_index, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
    
}

if (attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){

    if (get_player_color(player) == 1){
        draw_sprite_ext(sprite_get("outlaw_intro"), image_index, x, y, 2*spr_dir, 2, 0, -1, 1);
    }

}

shader_end();

if (state == PS_PARRY && perfect_dodged == false){
    if (window == 0){
        draw_sprite_ext(sprite_get("parryTarget" + string(vigiParryRNG)), 0, x, y, 2*spr_dir, 2, 0, -1, 1);
    }
    if (window == 1){
        draw_sprite_ext(sprite_get("parryTarget" + string(vigiParryRNG)), 1, x, y, 2*spr_dir, 2, 0, -1, 1);
    }
    if (window == 2){
        draw_sprite_ext(sprite_get("parryTarget" + string(vigiParryRNG)), min(5, floor((window_timer+3) /3)), x, y, 2*spr_dir, 2, 0, -1, 1);
    }
}


if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){

    switch (attack){

        case AT_DSPECIAL:
            
            if (state_timer > 1 && window != 3){
                draw_sprite_ext(sprite_get("cowWarning"), get_gameplay_time()/3, vigiCowTargetX, view_get_yview() + 116, 2, 2, 0, -1, 1);
            }

        break;
        
    }
}


if (get_match_setting(SET_HITBOX_VIS)){
	if (instance_exists(vigiGhost) && vigiGhost.state == "idle") then draw_sprite_ext(sprite_get("johnCheese_hurt"), 0, vigiGhost.x, vigiGhost.y, 2*vigiGhost.spr_dir, 2, 0, -1, 0.5);
    if (instance_exists(vigiWeenie) && vigiWeenie.state != 6) then draw_sprite_ext(sprite_get("weenieMask"), 0, vigiWeenie.x, vigiWeenie.y, 2*vigiWeenie.spr_dir, 2, 0, -1, 0.5);
}






