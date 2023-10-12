// attack_update is a script called when you're doing an attack. It runs for every in-game frame.

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Cooldown for Ripper Blade

if attack == AT_FSPECIAL && window == 2 {
	move_cooldown[AT_FSPECIAL] = 120 ;
}

// Cooldown for Detonator Mine

if attack == AT_DSPECIAL && window == 2 {
	move_cooldown[AT_DSPECIAL] = 100 ;
}

// Plasma Cutter Reload

switch attack{
    case AT_EXTRA_1:
    if window_timer >= 60 ammo = 6;
    break;
}

