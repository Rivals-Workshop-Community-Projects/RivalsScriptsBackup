//rainbow alts user_event redirect
if (get_player_color(player) == 18){
    user_event(0);
}

//update
step += 1;


if (state == PS_DASH_START) or (state == PS_DASH) 
{
    hurtboxID.sprite_index = sprite_get("dash_hurtbox");
}

    
if( state == PS_IDLE) or ( state == PS_WALK) or ( state == PS_FIRST_JUMP) or ( state == PS_IDLE_AIR) or ( state == PS_PARRY_START)
{
        hurtboxID.sprite_index = sprite_get("hana_hurtbox");
}

if (!runeF)
{
    if (cd_level != 0) or ((attack == AT_NSPECIAL) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
    {
        char_height = char_height_cd;
    }
    else
    {
        
        char_height = char_height_ref;
    }
}

// Color effect
/*
var found = false;
with (obj_article1)
{
    if (player_id == other)
    {
        other.color_active = col;
        found = true;
    }
}
    
if (!found)
{
    color_active = -1;
}
   
*/

// ENTRANCE
if (!has_enter) and (!instance_exists(oTestPlayer))
{
    has_enter = true;
    set_attack(AT_NTHROW);
    
}

if (attack == AT_NTHROW) and (window == 2) and (window_timer == 55) // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
{
    set_state(PS_SPAWN);
    state_timer += 70;
    
}



if (!free)
{
    can_uspecial = true;
    move_cooldown[AT_FSPECIAL] = 0;
}

if (state != PS_ATTACK_AIR) and (state != PS_ATTACK_GROUND)
{
    can_uspecial_combo = false;
}




if (holding_turntable)
{
    max_djumps = max_djumps_turn;
}
else
{
    if (!runeJ)
    {
        max_djumps = max_djumps_ref;
    }
    else
    {
        max_djumps = max_djumps_runeJ;
    }
}




if (shield_pressed) and (holding_turntable) and (!(((attack == AT_DSPECIAL_AIR) or (attack == AT_DSPECIAL) or (attack == AT_DTHROW) or (attack == AT_UTHROW) or (attack == AT_FTHROW) or (attack == AT_DSPECIAL_2))  and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))))
{
    /*
   
    set_state(PS_IDLE);
    clear_button_buffer(PC_SHIELD_PRESSED);
    */
    
    if (!free)
    {
        var sta = state_timer;
        set_state(prev_state);
        state_timer = sta;
    }
    else
    {
        set_state(PS_IDLE_AIR);
    }
    
    
    holding_turntable = false;
    
    with (obj_article1)
    {
        if (player_id == other)
        {
            sprite_index = sprite_get("turntable");
        }
    }
    
    clear_button_buffer(PC_SHIELD_PRESSED);
    
    has_airdodge = has_really_airdodge;
    has_walljump = has_really_walljump;
}

// walljump and airdodge while holding turntable
if (holding_turntable)
{
    has_airdodge = false;
    has_walljump = false;
}

if (!free)
{
    has_really_airdodge = true;
    has_really_walljump = true;
}


if (state == PS_AIR_DODGE)
{
     has_really_airdodge = false;
}
if (state == PS_WALL_JUMP)
{
     has_really_walljump = false;
}



// resetting level charge
if (attack == AT_NSPECIAL)  and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{}
else
{
    cd_charge = 0;
}


// Yellow cd
if (ycd_id != noone)
{
    if (ycd_timer == 0)
    {
        var inst = create_hitbox( AT_NSPECIAL_2, 4, ycd_id.x, ycd_id.y );
        inst.hitbox_timer = ycd_id.hitbox_timer;
        inst.hsp = ycd_id.hsp;
        ycd_id.destroyed = true;
        
        ycd_id = noone;
    }
    else
    {
        ycd_timer -= 1;
    }
}

// walljumping
if (state == PS_WALL_JUMP)
{
    move_cooldown[AT_FSPECIAL] = 0;
}


if (timer_before_swipe)
{
    timer_before_swipe -= 1
    
    if (timer_before_swipe == 1)
    {
        timer_before_swipe = 0;
        sound_play(asset_get("sfx_quick_dodge"));
    }
}

/*
if (ustrong_pale)
{
    pale_timer += 1;
}

if (pale_timer < 0)
{
    pale_timer = 0;
}
*/

// Cloud guy

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 15; // 15
    trummelcodecsprite1 = sprite_get("pale_codec");
    trummelcodecsprite2 = sprite_get("pale_codec");
    var page = 0;


    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Wait, who's that?";
    trummelcodecline[page,2] = "I don't have a start";
    trummelcodecline[page,3] = "of a clue!";
    trummelcodecline[page,4] = "";
    page++; 


    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "F";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's really bad! What's";
    trummelcodecline[page,2] = "my point if I cannot";
    trummelcodecline[page,3] = "give any sort of funny";
    trummelcodecline[page,4] = "commentary?";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Help? Someone.";
    trummelcodecline[page,2] = "need.help? I.am.begging";
    trummelcodecline[page,3] = "you,tell.me.you.need.";
    trummelcodecline[page,4] = "my.assistance!";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "my god its big fan boi";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "As.willing.as.I.am.";
    trummelcodecline[page,2] = "to.help.you,doing";
    trummelcodecline[page,3] = "so.will.be.detrimental.";
    trummelcodecline[page,4] = "to.my.sweet.sweet.Hana.";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Why then are you asking";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "Wait, how am i";
    trummelcodecline[page,4] = "saying this?";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "So.I.will.not.tell.";
    trummelcodecline[page,2] = "you.that.my.sweet.Hana.";
    trummelcodecline[page,3] = "is.pretty.agile.which.";
    trummelcodecline[page,4] = "translate.to.very.light.";
    page++; 
    
     //Page 8
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I.hope.you.like.being.";
    trummelcodecline[page,2] = "bounced.off.of.";
    trummelcodecline[page,3] = "like.a.trampoline!";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Well I'm a cloud and";
    trummelcodecline[page,2] = "during our entrance I";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Since.she.is.a.so.shy.";
    trummelcodecline[page,2] = "she.will.try.to.";
    trummelcodecline[page,3] = "stay.away.from.you.";
    trummelcodecline[page,4] = "Sometimes!How.cute!";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Wait, no she's is charging ";
    trummelcodecline[page,2] = "her nspecial! There's";
    trummelcodecline[page,3] = "no way I'm letting that";
    trummelcodecline[page,4] = "happend!";
    page++; 
    
    
    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "fan boi ive a serious";
    trummelcodecline[page,2] = "question for you";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "ya like jazz";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 14
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "...";
    trummelcodecline[page,2] = "Well.you.see.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
     //Page 15
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "I.am.a.huge.Metal.fan.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
}
// shut up alto
with(trummelcodec_id)
{
    if ((codectimer2 == 44) and (codecindex == 6))
    {
        codectimer2 = 0;
        codecindex += 1;
    }
    
    if ((codectimer2 == 38) and (codecindex == 9) and (currentcodecline == 2))
    {
        codecprint[2] = "";
        codectimer2 = 0;
        currentcodecline = 1;
        codecindex += 1;
    }
}
/*
if ((trummelcodec_id.codectimer2 == 44) and (trummelcodec_id.codecindex == 6))
{
    trummelcodec_id.codectimer2 = 0;
    trummelcodec_id.codecindex += 1;
}

if ((trummelcodec_id.codectimer2 == 38) and (trummelcodec_id.codecindex == 9) and (trummelcodec_id.currentcodecline == 2))
{
    trummelcodec_id.codecprint[2] = "";
    trummelcodec_id.codectimer2 = 0;
    trummelcodec_id.currentcodecline = 1;
    trummelcodec_id.codecindex += 1;
}
*/



// KIRBY
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt")
var ability_icon = sprite_get("kirby_icon")
var ability_cd = sprite_get("cd_blue") 


//edited
var ekid = enemykirby;
if enemykirby != noone { //if kirby is in a match & has swallowed the character
with oPlayer { //Run through all players
if (id == ekid){ //makes sure it's the kirby that has swallowed you



   set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 69); // arbitrary value;



    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);

    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);
    
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 25)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3)
    
    
    set_num_hitboxes(AT_EXTRA_3, 1);
        // BLUE
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2 )
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME,70);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 50);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 30);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(AT_EXTRA_3, 1, HG_GROUNDEDNESS, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 150);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_swish_medium"));
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_cd);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, false);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_FRICTION, 1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
        
        
    
    newicon = ability_icon


if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
//your code here

    move_cooldown[AT_EXTRA_3] = 100;
}
}
}
}




// RUNE
// rune A
if (runeA)
{
    set_hitbox_value( AT_DAIR, 2, HG_ANGLE, 290 );
    
    set_hitbox_value( AT_NAIR, 1, HG_ANGLE_FLIPPER,1 );
    set_hitbox_value( AT_NAIR, 2, HG_ANGLE_FLIPPER,1 );
    
    set_hitbox_value( AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.4 ); // 1.1
    set_hitbox_value( AT_UAIR, 2, HG_KNOCKBACK_SCALING, 1.2); // 1
    
    set_window_value( AT_BAIR, 1, AG_WINDOW_LENGTH, 14 );
    set_window_value( AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 13);
    
    set_hitbox_value( AT_FAIR, 1, HG_DAMAGE, 5 ); // 4
    set_hitbox_value( AT_FAIR, 2, HG_DAMAGE, 7 ); // 6
    
}
else
{
    reset_hitbox_value( AT_DAIR, 2, HG_ANGLE );
    
    reset_hitbox_value( AT_NAIR, 1, HG_ANGLE_FLIPPER );
    reset_hitbox_value( AT_NAIR, 2, HG_ANGLE_FLIPPER );
    
    reset_hitbox_value( AT_UAIR, 1, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_UAIR, 2, HG_KNOCKBACK_SCALING );
    
    reset_window_value( AT_BAIR, 1, AG_WINDOW_LENGTH);
    reset_window_value( AT_BAIR, 1, AG_WINDOW_SFX_FRAME);
    
    reset_hitbox_value( AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value( AT_FAIR, 2, HG_DAMAGE);
}

// rune B
if (runeB)
{
    
    set_hitbox_value( AT_NSPECIAL_2, 2, HG_LIFETIME, 92 ); // 70
    set_hitbox_value( AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 5 ); // 3
    
    set_hitbox_value( AT_NSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 17 ); // 12
    
    set_hitbox_value( AT_NSPECIAL_2, 4, HG_LIFETIME, 160 ); // 120

    set_hitbox_value( AT_NSPECIAL_2, 5, HG_DAMAGE, 9 ); // 7
    
    set_hitbox_value( AT_NSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 1.5 ); // 1.2
    
    set_hitbox_value( AT_NSPECIAL_2, 7, HG_BASE_HITPAUSE, 15 ); // 12
    set_hitbox_value( AT_NSPECIAL_2, 7, HG_PROJECTILE_HSPEED, 9 ); // 8
}
else
{
    reset_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME);
    reset_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_HSPEED);
    
    reset_hitbox_value(AT_NSPECIAL_2, 3, HG_EXTRA_HITPAUSE);
    
    reset_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME);
    
    reset_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE);
    
    reset_hitbox_value(AT_NSPECIAL_2, 6, HG_KNOCKBACK_SCALING);
    
    reset_hitbox_value(AT_NSPECIAL_2, 7, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_HSPEED);
    
}

// rune G
if (!free) or (state == PS_WALL_JUMP)
{
    runeG_can_uspecial = true;
}
// rune L
if (runeL)
{
    cd_charge_floor = cd_charge_floor_runeL;
}
else
{
    cd_charge_floor = cd_charge_floor_ref;
}

// Rune M turntable buff
if (runeM)
{
    
}

// RUNE C Fspecial
if (runeC)
{
    set_hitbox_value( AT_FSPECIAL, 1, HG_ANGLE, 270 ); // 150
}
else
{
    reset_hitbox_value( AT_FSPECIAL, 1, HG_ANGLE);
}

// rune D
if (runeD)
{
    air_accel = air_accel_runeD;
    air_max_speed = air_max_speed_runeD;
}
else
{
    air_accel = air_accel_ref;
    air_max_speed = air_max_speed_ref;
}



if (runeK)
{
    set_window_value( AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6 ); // 16
    
    set_window_value( AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 6 ); // 16
     
    set_hitbox_value( AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.5); // 1.1
    set_hitbox_value( AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.4); // 1
}
else
{
    reset_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH);
    reset_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH);
    
    reset_hitbox_value( AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value( AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING);
}



if (runeM)
{
    var turn_exist = false;
    with (obj_article1)
    {
        if (player_id == other)
        {
            var turn_exist = true;
            var lvl = col;
        }
    }
    if (turn_exist)
    {
        var fact = 0.3;
        initial_dash_speed = initial_dash_speed_ref + lvl * fact;
        dash_speed = dash_speed_ref + lvl * fact;
        if (runeD)
        {
             air_max_speed = air_max_speed_runeD + lvl * fact / 1.5;
             air_accel = air_accel_runeD + lvl * fact / 4;
        }
        else
        {
            air_max_speed = air_max_speed_ref + lvl * fact / 1.5;
            air_accel = air_accel_ref + lvl * fact / 4;
        }
       
         
    }
}
else
{
    initial_dash_speed = initial_dash_speed_ref;
    dash_speed = dash_speed_ref;
    air_max_speed = air_max_speed_ref;
}




/*
with (hit_fx_object)
{
    if (hit_fx == sprite_get("ustrong_pale_leaving"))
    {
        spr_dir = 1;
    }
    
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion