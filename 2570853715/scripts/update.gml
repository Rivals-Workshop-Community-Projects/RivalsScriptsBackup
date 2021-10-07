user_event(14);

if(fx_article == noone){
	
}
if(get_player_color(player) == 16){
		if(get_gameplay_time() == 60){
			lightning_counter = 20;
            shake_camera(8, 10);
            spawn_hit_fx(x, y-30, 157);
            lightning_x = x;
            lightning_y = y;
		}
	if(get_gameplay_time()< 28){
		if(get_gameplay_time() == 1){
			sound_play(sound_get("intro"));
		}

		visible = false;
	} else {
		visible = true;
	}
}
if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) and taunt_pressed){
   set_attack(AT_TAUNT);
}

if(nspecial_charge_level >= nspecial_charge_max and get_gameplay_time()%32 == 0){
	white_flash_timer_set(8);
	
}
if(free and state != PS_ATTACK_AIR){
	//hud_offset = 10;
}

with(pHitBox){
	if(player == other.player and attack == AT_DSPECIAL and other.move_cooldown[AT_DSPECIAL] <= 2){
		other.move_cooldown[AT_DSPECIAL] = 2;
	}
}

if(lightning_counter > 0){
	lightning_counter--;
}
#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}