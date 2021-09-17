switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}



//intro
if (state == PS_SPAWN && !was_reloaded && !allow_bibical)
{
    if (intro_timer < 19 && intro_timer >= 0)
    {
        sprite_index = sprite_get("intro");
        image_index = intro_timer;
    }
    else if (intro_timer < 0)
    {
        sprite_index = sprite_get("intro");
        image_index = 0;
    }
    else
    {
        sprite_index = sprite_get("idle");
    }
}

//if bar is in his falling animation, make the animation loop
if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP && state_timer >= 26)
{
    if (state_timer % 4 == 0) //4: anim speed || 4 = 0.25
    {
        if (switch_spr) switch_spr = false;
        else switch_spr = true;
    }

    if (switch_spr) image_index = 6;
    else image_index = 5;
}

//force leap bar draw angle changer
if (attack == AT_SKILL2)
{
    if (window == 4)
    {
        if (forceleap_up)
        {
            if (spr_dir) spr_angle = 10;
            else spr_angle = -10;
        }
        else if (forceleap_down)
        {
            if (spr_dir) spr_angle = -10;
            else spr_angle = 10;
        }
    }
    else if (window > 4) spr_angle = 0;
}

//ember fist draw logic
if (attack == AT_SKILL8)
{
    switch (window)
    {
        case 3:
            if (window_timer <= 1)
            {
                if (emberfist_up) image_index = 9;
                if (emberfist_down) image_index = 14;
            }
            else if (window_timer > 1)
            {
                if (emberfist_up) image_index = 10;
                if (emberfist_down) image_index = 15;
            }
            break;
        
        case 4:
            if (window_timer <= 5)
            {
                if (emberfist_up) image_index = 11;
                if (emberfist_down) image_index = 16;
            }
            else if (window_timer > 5 && window_timer <= 10)
            {
                if (emberfist_up) image_index = 12;
                if (emberfist_down) image_index = 17;
            }
            else if (window_timer > 10)
            {
                if (emberfist_up) image_index = 13;
                if (emberfist_down) image_index = 18;
            }
            break;
    }
}

//light hookshot special launch air idle
if (attack == AT_SKILL9 && window == 5) hookshot_launch = true;
else if (!free || jump_pressed || attack_pressed || special_pressed || shield_pressed) hookshot_launch = false;

if (hookshot_launch && state == PS_IDLE_AIR)
{
    sprite_index = sprite_get("lighthookshot");
    image_index = 12 + state_timer/8;

    if (image_index >= 15.85 || image_index == 0) hookshot_launch = false;
}

// hover animation loop
if (hovering)
{
    sprite_index = sprite_get("hover");
    image_index = 0 + ((state_timer * hover_anim_speed) % 4);
}

// strongs loops
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    if (attack == AT_DSTRONG && window == 2 && window_timer == 8) //normal D-strong
    {
        image_index = 2 + (strong_charge / 3) % 4;
        //image_index = 2: starting frame
        //(strong_charge/3): animation speed
        //% 4: amount of frames
    }
    if (attack == AT_USTRONG_2 && window == 2 && window_timer == 3) //theikos U-strong
    {
        image_index = 1 + (strong_charge / 4) % 2;
    }
    if (attack == AT_DSTRONG_2 && window == 2 && window_timer == 8) //theikos U-strong
    {
        image_index = 2 + (strong_charge / 3) % 4;
    }
}

//taunt attack stuff
if (attack == AT_TAUNT)
{
    if (has_hit_player)
    {
        if (window == 7) suppress_stage_music(0, 5);

        if (window == 9) set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 10);

        if (window == 10) window = 10;
    }
    else if (!has_hit_player)
    {
        if (window == 10) window = 13;
    }

    //change the hurtbox to ex_guy_hurt_box if you are trying to use mana debug or the skill select
    if (training_mode)
    {
        if (up_down || down_down) set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
        else if (!up_down && !down_down) reset_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE);
    }
}

//doing inputs on phone
if (attack == AT_PHONE)
{
    if (image_index == 4)
    {
        if (special_down || attack_down)
        {
            image_index = 5;
        }
    }
}

//air dash rune
if (has_rune("A"))
{
    if (runeA_dash && free)
    {
        image_index ++;

        if (runeA_dash_timer == 2) sound_play(sound_get("sfx_forceleap_jump"));
        if (runeA_dash_timer == 3)
        {   
            var boost = spawn_hit_fx(x+16*spr_dir, y-12, fx_boost);
            boost.depth = -6;
            boost.draw_angle = -90*spr_dir;
        }
    }
}

//OVERDRIVE greatsword
if (attack == AT_OVERDRIVE)
{
    if (window >= 12 && window < 14)
    {
        OD_sword_image = image_index-19;
    }
    else if (window == 14)
    {
        if (window_timer == 0) OD_sword_image = 7;
        else
        {
            OD_sword_image += 0.4;
            if (OD_sword_image >= 13) OD_sword_image = 13;
        }
        
    }
    else if (window == 15)
    {
        if (window_timer < 3) OD_sword_image = 14;
        else OD_sword_image = 15;
    }
    else if (window == 16) OD_sword_image = 16;
    else if (window == 17 && window_timer == 0) OD_sword_image = 17;
    else if (window >= 17 && window < 19) OD_sword_image += 0.2;
    else OD_sword_image = 0;

    //slash
    if (window == 17 && window_timer > 0) OD_slash_alpha -= 0.1;
    else OD_slash_alpha = 1;
}
// theikos music
if (bossMusic_count > 0) suppress_stage_music(0, 100);