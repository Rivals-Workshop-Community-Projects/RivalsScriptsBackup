// set_attack is a script that runs before an attack is ran. Essentially in-game frame 0 of any attack.
user_event(13);


// Isaac grunt on Stomp

if (attack == AT_DTILT && window == 1) {
    sound_play(sound_get(gruntSound[random_func(1, 5, false)]));
	}

// Alternate victory music on taunt

if attack == AT_TAUNT{
    set_victory_theme(sound_get("isaac_victorytheme_alt"))
}else{
    set_victory_theme(sound_get("isaac_victorytheme"))
}

// DarkDakurai's functions

switch attack{
    case AT_NSPECIAL:
    if ammo ammo--;
    else attack = AT_EXTRA_1;
    break;
    case AT_DSPECIAL:
    if !move_cooldown[AT_DSPECIAL] with pHitBox if player_id == other && attack == AT_DSPECIAL{
        instance_destroy(self);
    }
    break;
}

