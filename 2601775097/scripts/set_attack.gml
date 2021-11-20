//set_attack

//prevents taunt from playing when holding up or down
//if (attack == AT_TAUNT && down_down) set_state(PS_CROUCH);

//changing around dash attack to do my bidding
if (attack == AT_DATTACK)
{
    if (up_down) attack = AT_UTILT
    else if (down_down) attack = AT_DTILT;
    else if (left_down || right_down) attack = AT_DATTACK; // AT_FTILT
    //else attack = AT_JAB;
}

switch (attack) //skills setup
{
    case AT_NSPECIAL:   //light dagger    |     flashbang    |      ember fist
        if(specialnums[0] == 0) attack = AT_SKILL0;         //light dagger
        else if(specialnums[0] == 1) attack = AT_SKILL11;   //flashbang 
        else if(specialnums[0] == 2) attack = AT_SKILL8;    //ember fist
        break;
    case AT_FSPECIAL:   //burning fury    |    power smash   |   light hookshot
        if(specialnums[1] == 0) attack = AT_SKILL1;         //burning fury
        else if(specialnums[1] == 1) attack = AT_SKILL6;    //power smash
        else if(specialnums[1] == 2) attack = AT_SKILL9;    //light hookshot
        break;
    case AT_USPECIAL:   //force leap      |    accel blitz   |  searing descent
        if(specialnums[2] == 0) attack = AT_SKILL2;         //force leap
        else if(specialnums[2] == 1) attack = AT_SKILL4;    //accel blitz
        else if(specialnums[2] == 2) attack = AT_SKILL10;   //searing descent
        break;
    case AT_DSPECIAL:   //photon blast    |      polaris     |    chasm burster
        if(specialnums[3] == 0) attack = AT_SKILL3;         //photon blast
        else if(specialnums[3] == 1) attack = AT_SKILL7;    //polaris
        else if(specialnums[3] == 2) attack = AT_SKILL5;    //chasm burster
        break;
    
}

//what if i have no MP?
//this is just the move's activation, the other parts are on attack_update.gml
if (move_cooldown[attack] > 0 && show_player_info && (attack == AT_SKILL0 || attack == AT_SKILL1 ||attack == AT_SKILL2 ||
attack == AT_SKILL3 || attack == AT_SKILL4 || attack == AT_SKILL5 ||
attack == AT_SKILL6 || attack == AT_SKILL7 && !homing_post_buffer_counting && !polaris_active || attack == AT_SKILL8 ||
attack == AT_SKILL9 || attack == AT_SKILL10 ||attack == AT_SKILL11 ||
attack == AT_SKILL0_AIR || attack == AT_SKILL1_AIR)) mp_error_active = true;


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
muno_event_type = 2;
user_event(14);