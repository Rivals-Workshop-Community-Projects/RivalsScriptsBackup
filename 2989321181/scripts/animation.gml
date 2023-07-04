//sprite_index = sprite_get("taunt")
//image_index = 0
if (state == PS_RESPAWN || get_gameplay_time() < 120){
	hud_offset = 32;
	y = y;
	vsp = 0;
}

if (!free && pastVSP > 1.2 && beyTimer){
    vsp = -pastVSP*0.5;
    sound_play(asset_get("sfx_blow_weak1"), false, noone, abs(pastVSP)/20, 1);
}

if(position_meeting(x+32,y-2,asset_get("par_block")) && beyTimer && pastHSP >= 0 && !hitpause){
        if (pastHSP >= 4)
        	hsp = -pastHSP - 1;
        else if (pastHSP = 0 || pastHSP > -4)
        	hsp = -4;
        spawn_hit_fx(x+20, y-16, 302);
        sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, abs(pastHSP)/20, 0.9 + clangRandom);
        sound_play(sound_get("bb-clang"), false, noone, 0.1, 0.9 + clangRandom)
}
    if(position_meeting(x-32,y-2,asset_get("par_block")) && beyTimer && pastHSP <= 0 && !hitpause){
        if (pastHSP <= -4)
        	hsp = -pastHSP + 1;
        else if (pastHSP = 0 || pastHSP < 4)
        	hsp = 4;
        spawn_hit_fx(x-20, y-16, 302);
        sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, abs(pastHSP)/20, 0.9 + clangRandom);
        sound_play(sound_get("bb-clang"), false, noone, 0.1, 0.9 + clangRandom)
}

if (jump_down && !free && get_gameplay_time() > 120 && beyTimer){
    vsp = (-pastVSP-1) * 1.2;
    sound_play(asset_get("sfx_spin"), false, noone, abs(pastVSP)/20, 1);
    if (pastVSP > 5){
        spawn_hit_fx(x-12, y, 14);
        if (!has_rune("C")){
            if (!has_rune("K") || (has_rune("K") && get_player_damage(player) != 0))
                beyTimer -= round(abs(pastVSP*5));
        }
    }
}

if (get_gameplay_time() % 8 == 0 && beyTimer && get_gameplay_time() > 120 && state != PS_DEAD && state != PS_RESPAWN){
    sound_play(asset_get("sfx_spin"),false,noone,0.05,0.7 + (beyTimer/1800)/10);
}
if (has_rune("O"))
	beyTimer = clamp(beyTimer, 1, 31600);
	
if (free && has_rune("L") && doublejump && jump_pressed){
    clear_button_buffer(PC_JUMP_PRESSED);
    vsp = -10;
    sound_play(asset_get("sfx_ori_uptilt_single"));
    spawn_hit_fx(x, y, 111);
    doublejump --;
}

if (!free)
    doublejump = 3;
    
if (deathTimer > 360 && get_gameplay_time() % 9 == 0){
    sound_play(asset_get("sfx_shop_move"));
}
if (deathTimer > 360 && get_gameplay_time() % 4 <= 1)
    outline_color = [255,0,0];
else
	outline_color = [0,0,0];
	init_shader();