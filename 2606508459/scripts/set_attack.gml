//set_attack

//====> NSPECIAL/DSPECIAL SWAP #######################################################

if (dip_swapSpecial)
{
    if (attack == AT_NSPECIAL && fs_charge < 200) { attack = AT_NSPECIAL_2; }
    else if (attack == AT_DSPECIAL) { attack = AT_NSPECIAL; }
    
    /*
    */
    if (attack_pressed && special_down &&
        (
            state == PS_IDLE
            || state == PS_IDLE_AIR
            || state == PS_WALK
            || state == PS_WALK_TURN
            || state == PS_FIRST_JUMP
            || state == PS_DOUBLE_JUMP
            || state == PS_WALL_JUMP
            || (
                (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
                && (
                    attack == AT_JAB
                    || attack == AT_NSPECIAL_2
                )
            )
        ))
    {
        if (move_cooldown[AT_EXTRA_1] <= 0)
        {
            attack = 43;
        }
        else
        {
            //attack = 44;
        }
    }
}

//====> NEUTRAL B #######################################################

if (attack == AT_NSPECIAL)
{
    //If there's a fireball out there, call nspecial_2
    //Only active if dspecial is not swapped
    if (!dip_swapSpecial
        && fBall_obj != noone 
        && fBall_obj._currHB != noone 
        && !nspecial_hadoInput 
        && !attack_down)
    {
        attack = AT_NSPECIAL_2;
    }
}

//====> CATOOKEN INPUT #######################################################

if (attack_down && 
    special_down &&
    (
        (attack == AT_NSPECIAL_2 && window == 1) || 
        (attack == AT_JAB && window == 1)
    )
)

/*if (attack_down && 
    special_down &&
    (
        (attack == AT_NSPECIAL_2 && window == 1) || 
        (attack == AT_JAB && window == 1)
    )
)
{
    window = 1;
    window_timer = 0;
    if (move_cooldown[AT_EXTRA_1] <= 0)
    {
        set_attack(43);
    }
    else
    {
        //set_attack(44);
    }
}*/

//====> TAUNT #######################################################

if (attack == AT_TAUNT && get_player_color(player) == alt_gen8)
{
    attack = AT_TAUNT_2
}

//END