//set_attack

switch (attack)
{
    //changing around dash attack to do my bidding
    case AT_DATTACK:
        if (up_down) attack = AT_UTILT;
        else if (down_down) attack = AT_DTILT;
        else if (left_down || right_down) attack = AT_DATTACK;
        break;
    //skill select stuff - open for details
        // 1. change the attack to the correct skill values from init.gml
        // 2. take the air attack value into account when you do too
        // 3. if there is no air value (-1), change it to the value set on the ground version
    case AT_NSPECIAL:
        attack = free ? skill[cur_skills[0]].skill_attack_air : skill[cur_skills[0]].skill_attack;
        if (skill[cur_skills[0]].skill_attack_air == -1) attack = skill[cur_skills[0]].skill_attack;

        cur_skill_used = cur_skills[0];
        break;
    case AT_FSPECIAL:
        attack = free ? skill[cur_skills[1]].skill_attack_air : skill[cur_skills[1]].skill_attack;
        if (skill[cur_skills[1]].skill_attack_air == -1) attack = skill[cur_skills[1]].skill_attack;

        cur_skill_used = cur_skills[1];
        break;
    case AT_USPECIAL:
        attack = free ? skill[cur_skills[2]].skill_attack_air : skill[cur_skills[2]].skill_attack;
        if (skill[cur_skills[2]].skill_attack_air == -1) attack = skill[cur_skills[2]].skill_attack;

        cur_skill_used = cur_skills[2];
        break;
    case AT_DSPECIAL:
        attack = free ? skill[cur_skills[3]].skill_attack_air : skill[cur_skills[3]].skill_attack;
        if (skill[cur_skills[3]].skill_attack_air == -1) attack = skill[cur_skills[3]].skill_attack;

        cur_skill_used = cur_skills[3];
        break;
    //practice mode shenanigans
    case AT_TAUNT:
        if (training && !playtesting) // || room == 113 && playtesting (just in case online CSS messes up again)
        {
            if (up_down) //skill select
            {
                attack = AT_SELECT;
                menu_active = true;
                if (menu_type == 0) menu_type = 1;

                if (menu_type != 2) cur_select = 0;

                //revert changes from the single skill trying mode
                if (menu_type == 2 && menu_active) for (var g = 0; g <= 3; ++g) cur_skills[g] = prev_skills[g];
            }
            if (down_down) //infinite mana mode
            {
                infinite_mp_mode = !infinite_mp_mode;
                mp_current = mp_max;
                set_state(prev_state == PS_CROUCH ? PS_CROUCH : PS_IDLE);
                clear_button_buffer(PC_TAUNT_PRESSED);
            }
        }
        break;
}

//burning fury redirect
if ((attack == skill[1].skill_attack || attack == skill[1].skill_attack_air) && burnbuff_active)
{
    window = 6;
    window_timer = 0;
}
//polaris redirect
if (attack == skill[7].skill_attack && lightbuff_active)
{
    window = 5;
    window_timer = 0;
}

//if the move is lacking MP, put up notice
if (notice_time == -1 && (move_cooldown[attack] > 0 || attack == skill[7].skill_attack && polaris_cd > 0))
{
    notice_type = (
        dagger_spam_cd > 0 && (attack == skill[0].skill_attack || attack == skill[0].skill_attack_air) ||
        leap_used && attack == skill[2].skill_attack ||
        blast_used && attack == skill[3].skill_attack ||
        accel_used && attack == skill[6].skill_attack ||
        attack == skill[7].skill_attack && polaris_cd > 0
    );
    notice_time = notice_time_max;
}

//theikos bar can do strongs in the air
if (theikos_type > 0)
{ 
    if (up_strong_pressed) attack = AT_USTRONG;

    if (left_strong_pressed)
    {
        attack = AT_FSTRONG;
        spr_dir = -1;
    }
    else if (right_strong_pressed)
    {
        attack = AT_FSTRONG;
        spr_dir = 1;
    }

    if (down_strong_pressed) attack = AT_DSTRONG;
}

//theikos strongs / rune K strongs swap
switch (attack)
{
    case AT_USTRONG: case AT_USTRONG_2:
        attack = has_rune("K") ? (theikos_type > 0 ? AT_USTRONG : AT_USTRONG_2) : (theikos_type > 0 ? AT_USTRONG_2 : AT_USTRONG);
        break;
    case AT_FSTRONG: case AT_FSTRONG_2:
        attack = has_rune("K") ? (theikos_type > 0 ? AT_FSTRONG : AT_FSTRONG_2) : (theikos_type > 0 ? AT_FSTRONG_2 : AT_FSTRONG);
        break;
    case AT_DSTRONG: case AT_DSTRONG_2:
        attack = has_rune("K") ? (theikos_type > 0 ? AT_DSTRONG : AT_DSTRONG_2) : (theikos_type > 0 ? AT_DSTRONG_2 : AT_DSTRONG);
        break;
}