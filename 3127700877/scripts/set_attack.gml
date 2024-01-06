// set_attack.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#in-response
// Called at the beginning of every attack. Used to replace the attack in special conditions.


dstrong_mobile = false;
geyser_fail = false;

reset_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER);
reset_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH);
reset_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME);

if(attack == AT_DSPECIAL && free && move_cooldown[AT_DSPECIAL] <= 0){
    attack = AT_DSPECIAL_AIR;
}

if(attack == AT_DSTRONG && has_rune("O") && rune_respawn == -1){
    rune_respawn = 0;
    window = 3;
    window_timer = 12;
	sludge_puddle_id.state = 69;
    sludge_puddle_id.state_timer = 0;
    sludge_puddle_id = noone;
    sound_play(asset_get("sfx_orca_absorb"));
}

if(has_rune("I") && attack == AT_NAIR && move_cooldown[AT_NAIR] <= 0){
	attack = AT_NSPECIAL_AIR;
	nair_spins = 0;
    set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 99);
    set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 99);
}