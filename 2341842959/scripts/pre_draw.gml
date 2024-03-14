//post-draw

shader_start();

if (attack == AT_DTILT && window > 1 && gas_dtilt_cont < 5 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("gas_DTILT"), gas_dtilt_cont, gas_dtilt_posx, gas_dtilt_posy, 1, 1, 0, c_white, 1 );
}

if (attack == AT_USTRONG && window > 2 && gas_ustrong_cont < 5 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("gas_USTRONG"), gas_ustrong_cont, gas_ustrong_posx, gas_ustrong_posy, 1, 1, 0, c_white, 1 );
}

if (gas_fair_cont > 0 && gas_fair_cont < 5){
    draw_sprite_ext(sprite_get("gas_FAIR"), gas_fair_cont, gas_fair_posx, gas_fair_posy, gas_dir, 1, 0, c_white, 1 );
}

//if (gas_dair_cont > 0 && gas_dair_cont < 5){
//    draw_sprite_ext(sprite_get("gas_DAIR"), gas_dair_cont, gas_dair_posx, gas_dair_posy, gas_dir, 1, 0, c_white, 1 );
//}

if (gas_bair_cont > 0 && gas_bair_cont < 5){
    draw_sprite_ext(sprite_get("gas_BAIR"), gas_bair_cont, gas_bair_posx, gas_bair_posy, gas_dir, 1, 0, c_white, 1 );
}

if (gas_nspecial_cont > 0){

    if (gas_nspecial_cont < 6){
		draw_sprite_ext(sprite_get("gas_NSPECIAL_HOLD"), gas_nspecial_cont, gas_nspecial_posx, 
    	gas_nspecial_posy, spr_dir, 1, uspecial_rot, c_white, 1 );	
	}
}

if (gas_djump == 1){
    draw_sprite_ext(sprite_get("gas_DOUBLEJUMP"), gas_djump_cont, gas_djumpx, gas_djumpy, 1, 1, 0, c_white, 1 );
}

shader_end();

if state == PS_PARRY && jestermode == true{
    flash = draw_sprite_ext(sprite_get("jestermodeparryfx"), state_timer/6, x - 110, y - 150, 1, 1, 0, c_white, 1);
}