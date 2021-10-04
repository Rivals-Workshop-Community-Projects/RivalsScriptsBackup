//set_attack

//prevents taunt from playing when holding up or down
//if (attack == AT_TAUNT && down_down) set_state(PS_CROUCH);

//changing around dash attack to do my bidding
if (attack == AT_DATTACK)
{
    if (up_down) attack = AT_UTILT
    else if (down_down) attack = AT_DTILT;
    else if (left_down || right_down) attack = AT_FTILT;
    else attack = AT_JAB;
}

//skill selection itself
//NEUTRAL SPECIAL
switch (selected_nspec) {
    case 0:
        if (attack == AT_NSPECIAL) attack = AT_SKILL0;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL0_AIR;
    break;
    case 1:
        if (attack == AT_NSPECIAL) attack = AT_SKILL1;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL1_AIR;
    break;
    case 2:
        if (attack == AT_NSPECIAL) attack = AT_SKILL2;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL2;
    break;
    case 3:
        if (attack == AT_NSPECIAL) attack = AT_SKILL3;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL3;
    break;
    case 4:
        if (attack == AT_NSPECIAL) attack = AT_SKILL4;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL4;
    break;
    case 5:
        if (attack == AT_NSPECIAL) attack = AT_SKILL5;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL5;
    break;
    case 6:
        if (attack == AT_NSPECIAL) attack = AT_SKILL6;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL6;
    break;
    case 7:
        if (attack == AT_NSPECIAL) attack = AT_SKILL7;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL7;
    break;
    case 8:
        if (attack == AT_NSPECIAL) attack = AT_SKILL8;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL8;
    break;
    case 9:
        if (attack == AT_NSPECIAL) attack = AT_SKILL9;
        if (attack == AT_NSPECIAL_AIR) attack = AT_SKILL9;
    break;
}
//FORWARD SPECIAL
switch (selected_fspec) {
    case 0:
        if (attack == AT_FSPECIAL) attack = AT_SKILL0;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL0_AIR;
    break;
    case 1:
        if (attack == AT_FSPECIAL) attack = AT_SKILL1;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL1_AIR;
    break;
    case 2:
        if (attack == AT_FSPECIAL) attack = AT_SKILL2;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL2;
    break;
    case 3:
        if (attack == AT_FSPECIAL) attack = AT_SKILL3;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL3;
    break;
    case 4:
        if (attack == AT_FSPECIAL) attack = AT_SKILL4;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL4;
    break;
    case 5:
        if (attack == AT_FSPECIAL) attack = AT_SKILL5;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL5;
    break;
    case 6:
        if (attack == AT_FSPECIAL) attack = AT_SKILL6;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL6;
    break;
    case 7:
        if (attack == AT_FSPECIAL) attack = AT_SKILL7;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL7;
    break;
    case 8:
        if (attack == AT_FSPECIAL) attack = AT_SKILL8;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL8;
    break;
    case 9:
        if (attack == AT_FSPECIAL) attack = AT_SKILL9;
        if (attack == AT_FSPECIAL_AIR) attack = AT_SKILL9;
    break;
}
//UP SPECIAL
switch (selected_uspec) {
    case 0:
        if (attack == AT_USPECIAL) attack = AT_SKILL0;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL0_AIR;
    break;
    case 1:
        if (attack == AT_USPECIAL) attack = AT_SKILL1;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL1_AIR;
    break;
    case 2:
        if (attack == AT_USPECIAL) attack = AT_SKILL2;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL2;
    break;
    case 3:
        if (attack == AT_USPECIAL) attack = AT_SKILL3;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL3;
    break;
    case 4:
        if (attack == AT_USPECIAL) attack = AT_SKILL4;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL4;
    break;
    case 5:
        if (attack == AT_USPECIAL) attack = AT_SKILL5;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL5;
    break;
    case 6:
        if (attack == AT_USPECIAL) attack = AT_SKILL6;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL6;
    break;
    case 7:
        if (attack == AT_USPECIAL) attack = AT_SKILL7;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL7;
    break;
    case 8:
        if (attack == AT_USPECIAL) attack = AT_SKILL8;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL8;
    break;
    case 9:
        if (attack == AT_USPECIAL) attack = AT_SKILL9;
        if (attack == AT_USPECIAL_GROUND) attack = AT_SKILL9;
    break;
}
//DOWN SPECIAL
switch (selected_dspec) {
    case 0:
        if (attack == AT_DSPECIAL) attack = AT_SKILL0;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL0_AIR;
    break;
    case 1:
        if (attack == AT_DSPECIAL) attack = AT_SKILL1;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL1_AIR;
    break;
    case 2:
        if (attack == AT_DSPECIAL) attack = AT_SKILL2;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL2;
    break;
    case 3:
        if (attack == AT_DSPECIAL) attack = AT_SKILL3;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL3;
    break;
    case 4:
        if (attack == AT_DSPECIAL) attack = AT_SKILL4;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL4;
    break;
    case 5:
        if (attack == AT_DSPECIAL) attack = AT_SKILL5;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL5;
    break;
    case 6:
        if (attack == AT_DSPECIAL) attack = AT_SKILL6;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL6;
    break;
    case 7:
        if (attack == AT_DSPECIAL) attack = AT_SKILL7;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL7;
    break;
    case 8:
        if (attack == AT_DSPECIAL) attack = AT_SKILL8;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL8;
    break;
    case 9:
        if (attack == AT_DSPECIAL) attack = AT_SKILL9;
        if (attack == AT_DSPECIAL_AIR) attack = AT_SKILL9;
    break;
}

//what if i have no MP?
//this is just the move's activation, the other parts are on attack_update.gml
if (move_cooldown[attack] > 0 && show_player_info) mp_error_active = true;

//guard aura has a cooldown thing going on
if (cool_start && attack == AT_SKILL7 && show_player_info)
{
    if (cooldown > 0)
    {
        cd_error_active = true;
        mp_error_active = false;
    }
}

//aerial skills - for some reason it doesn't let me make aerial skills only aerial
if (free)
{
    if (attack == AT_SKILL0) attack = AT_SKILL0_AIR; //light dagger
    if (attack == AT_SKILL1) attack = AT_SKILL1_AIR; //burning fury
}

//THEIKOS MODIFYERS
//the theikos alt will have different strongs
if (theikos_active)
{
    if (attack == AT_FSTRONG) attack = AT_FSTRONG_2;
    if (attack == AT_USTRONG) attack = AT_USTRONG_2;
    if (attack == AT_DSTRONG) attack = AT_DSTRONG_2;

    if (free) //this alt can also use strongs in midair
    {
        if (left_strong_pressed || right_strong_pressed) attack = AT_FSTRONG_2;
        if (up_strong_pressed) attack = AT_USTRONG_2;
        if (down_strong_pressed) attack = AT_DSTRONG_2;
    }
}
else
{
    if (attack == AT_FSTRONG) attack = AT_FSTRONG;
    if (attack == AT_USTRONG) attack = AT_USTRONG;
    if (attack == AT_DSTRONG) attack = AT_DSTRONG;
}

if (has_rune("M")) //strong swapping rune
{
    if (theikos_active)
    {
        if (attack == AT_FSTRONG_2) attack = AT_FSTRONG;
        if (attack == AT_USTRONG_2) attack = AT_USTRONG;
        if (attack == AT_DSTRONG_2) attack = AT_DSTRONG;

        if (free) //this alt can also use strongs in midair
        {
            if (left_strong_pressed || right_strong_pressed) attack = AT_FSTRONG;
            if (up_strong_pressed) attack = AT_USTRONG;
            if (down_strong_pressed) attack = AT_DSTRONG;
        }
    }
    else
    {
        if (attack == AT_FSTRONG) attack = AT_FSTRONG_2;
        if (attack == AT_USTRONG) attack = AT_USTRONG_2;
        if (attack == AT_DSTRONG) attack = AT_DSTRONG_2;
    }
}

//F-strong reverses in midair
if ((attack == AT_FSTRONG_2 || attack == AT_FSTRONG) && free)
{
    if (left_strong_pressed && spr_dir) spr_dir = -1;
    else if (right_strong_pressed && -spr_dir) spr_dir = 1;
}

//munophone
user_event(13);