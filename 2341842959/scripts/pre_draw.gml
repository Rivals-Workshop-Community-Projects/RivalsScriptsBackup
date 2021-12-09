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

if (gas_dair_cont > 0 && gas_dair_cont < 5){
    draw_sprite_ext(sprite_get("gas_DAIR"), gas_dair_cont, gas_dair_posx, gas_dair_posy, gas_dir, 1, 0, c_white, 1 );
}

if (gas_bair_cont > 0 && gas_bair_cont < 5){
    draw_sprite_ext(sprite_get("gas_BAIR"), gas_bair_cont, gas_bair_posx, gas_bair_posy, gas_dir, 1, 0, c_white, 1 );
}

if (gas_nspecial_cont > 0 && gas_nspecial_cont < 6){
    draw_sprite_ext(sprite_get("gas_NSPECIAL_HOLD"), gas_nspecial_cont, gas_nspecial_posx, 
    gas_nspecial_posy, spr_dir, 1, uspecial_rot, c_white, 1 );
}

if (gas_djump == 1){
    draw_sprite_ext(sprite_get("gas_DOUBLEJUMP"), gas_djump_cont, gas_djumpx, gas_djumpy, 1, 1, 0, c_white, 1 );
}

shader_end();

if (get_player_color(player) == 5){
	FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
	FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
	FlagPart(c_white, 1/5, 2/5);
	gpu_set_fog(0, c_white, 0, 0);
}

if (get_player_color(player) == 16){
	FlagPart(make_colour_rgb(178, 23, 255), 1, 0); // mayablue
	FlagPart(make_colour_rgb(255, 0, 0), 1/2, 1/2); // pink
	gpu_set_fog(0, c_white, 0, 0);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
	for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
		draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}
