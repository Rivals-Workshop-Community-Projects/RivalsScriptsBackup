fspecial_stored = [-1, -1];

switch my_hitboxID.attack
{
    case AT_JAB:
        parry_lag = 0;
        break;
    case AT_NSPECIAL:
        nspecial_projectile.state = 2;
        nspecial_projectile.state_timer = 0;
        nspecial_projectile.lock_state = true;
        custom_parrystun(40,.08);
    break;
}

#define custom_parrystun
var base, multiplier, distance, extended;

//Some base number, applied regardless of distance
base = argument_count < 1 ? 40 : argument0;

//Multiplier to the distance
multiplier = argument_count < 2 ? 0.08 : argument1;

//Distance away from the player that parried you
distance = distance_to_object(hit_player_obj); 

//Extended parrystun calculation
extended = floor(distance * multiplier); 

//Apply to parrystun
parry_lag = base + extended;