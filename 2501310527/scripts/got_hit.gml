//Resets some stuff
move_cooldown[AT_NSPECIAL_AIR] = 0;

blaster_strong_draw = true;

torpedo_grab = false;

//If you get hit while using the Kamikaze
if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL_AIR){
    kamikaze_hitme = true;
    spawn_hit_fx( x+5*spr_dir, y-35, 139);
    take_damage(player, -1, 10);
    
    blaster.shoulddie = true;
    blaster.state_timer = 0;
    sound_play(sound_get("kamikazemiss_smw"));
}

//Getting hit when holding the blaster
if (torpedo_blaster == true){
    blaster.state = 0;
    torpedo_blaster = false;
}