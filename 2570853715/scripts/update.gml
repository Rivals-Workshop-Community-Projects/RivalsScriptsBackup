user_event(14);

if(free and (state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP) and taunt_pressed){
   set_attack(AT_TAUNT);
}

if(nspecial_charge_level >= nspecial_charge_max and get_gameplay_time()%32 == 0){
	white_flash_timer_set(8);
	
}
if(free){
	hud_offset = 10;
}

with(pHitBox){
	if(player == other.player and attack == AT_DSPECIAL and other.move_cooldown[AT_DSPECIAL] <= 2){
		other.move_cooldown[AT_DSPECIAL] = 2;
	}
}
#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}