//ptooie code
if instance_exists(ptooie){
   move_cooldown[AT_NSPECIAL] = 2;
   ptooie_alone += 1;
}

if ptooie_alone > 2000{
    destroy_hitboxes();
    ptCheck = false;
    ptooie_alone = 0;
}
//end of ptooie code

if(attack == AT_USPECIAL && state == PS_ATTACK_AIR){
    if right_down{
        //spr_dir = 1;
        spr_angle = -5;
    }else if left_down{
        //spr_dir = -1;
        spr_angle = 5;
    }else{
        spr_angle = 0;
    }
}

if(attack != AT_TAUNT || state != PS_ATTACK_GROUND){
    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
	sound_stop(sound_get("Lullaby"));
	sleep_timer = 0;
}