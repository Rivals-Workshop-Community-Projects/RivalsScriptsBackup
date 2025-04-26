// UPDATE
if (get_gameplay_time() < 4)
{
    if (shield_down) or (attack_down) or (special_down) or (jump_down)
    {
        is_fumo = false; // so you can still actually play 
    }
}



// entrance
if (get_gameplay_time() < 5)
{
    if (!has_enter) and (!instance_exists(oTestPlayer))
    {
        has_enter = true;
        set_attack(AT_NTHROW);
        
    }
}

if (attack == AT_NTHROW) and (window == 2) and (window_timer == 57)// magic number
{
    set_state(PS_SPAWN);
    state_timer += 66;// magic number
    
}



if (has_rune("G"))
{
    if (has_used_uspecial) and (!has_runeg_uspecial)
    {
        has_used_uspecial = false;
        has_runeg_uspecial = true;
    }
}
// uspecial
if (!free) //and !(((attack == AT_FSPECIAL) or (attack == AT_USPECIAL)) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    has_used_uspecial = false;
    has_runeg_uspecial = false;
    
    fspe_stall = 0;
}

if (has_used_uspecial) or (uspe_cooldown)
{
    move_cooldown[AT_USPECIAL] = 99;
}
else
{
    move_cooldown[AT_USPECIAL] = 0;
}

if (uspe_cooldown > 0)
{
    uspe_cooldown -= 1;
}

if(state == PS_WALL_JUMP)
{
    has_used_uspecial = false;
    has_runeg_uspecial = false;
}

// dspecial
if (!free) 
{
    has_used_dspecial = false;
}

if (has_used_dspecial) 
{
    move_cooldown[AT_DSPECIAL] = 99;
}
else
{
    move_cooldown[AT_DSPECIAL] = 0;
}


if(state == PS_WALL_JUMP)
{
    has_used_dspecial = false;
}


if !((attack == AT_FSPECIAL) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    
    fspe_extra_to_shot = floor(grazeMeter);
    
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
    
    fspe_charge = 0;
    fspe_is_charged = false;
    
}
else
{
    if (window >= 5)
    {
      
        fspe_extra_to_shot = floor(grazeMeter);
    
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
        
        fspe_charge = 0;
        fspe_is_charged = false;
    }
}


// USTRONG Landing things
if ((attack == AT_USTRONG) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    switch (window)
    {
        case 1:
        case 2:
            set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
        break;
        case 3:
            set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
        break
        case 4:
            set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
        break
        
    }

}
else
{
    set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
}

// airdodge second sound
if (state == PS_AIR_DODGE) and (state_timer == 13)
{
    sound_play(sound_get("airdodge2"))
}


// dspecial category
if ((attack == AT_DSPECIAL) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    switch (window)
    {
        case 1:
        case 2:
            set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
        break;
        case 3:
            set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
        break
    }
}


if !((attack == AT_NSPECIAL_2) and ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)))
{
    nspecial2_timer = 0;
    set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
    
    max_fall = max_fall_ref;
}
else
{
    if (window >= 3)
    {
        max_fall = max_fall_ref;
    }
    else
    {
        max_fall = max_fall_nspe2;
    }
    
}




// TRUMMEL CODEC

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 24;
    trummelcodecsprite1 = sprite_get("codec");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "That's as far as you go!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "wait where are we goin?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "I've finally found you,";
    trummelcodecline[page,2] = "now be ready to pay for";
    trummelcodecline[page,3] = "the consequences of";
    trummelcodecline[page,4] = "your actions!";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "alto smh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Wait, wait, waiiit!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Ok, fine, I promise we";
    trummelcodecline[page,2] = "will be a fair and";
    trummelcodecline[page,3] = "balanced character from";
    trummelcodecline[page,4] = "now on.";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Don't try to fool me you";
    trummelcodecline[page,2] = "little Katsura-Otoko, I'm";
    trummelcodecline[page,3] = "talking about what you've";
    trummelcodecline[page,4] = "done to Gensokyo!";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "literally what?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "also japan";
    trummelcodecline[page,4] = "also who dis?";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "She's Reimu Hakurei, the";
    trummelcodecline[page,2] = "Shrine Maiden of the land";
    trummelcodecline[page,3] = "at the border of fantasy";
    trummelcodecline[page,4] = "and reality, Gensokyo.";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "She is to maintain the";
    trummelcodecline[page,2] = "balance of fantasy by";
    trummelcodecline[page,3] = "resolving various";
    trummelcodecline[page,4] = "incidents.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It's tiresome, y'know,";
    trummelcodecline[page,2] = "cleaning up the mess that";
    trummelcodecline[page,3] = "you've made.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "This weird animal";
    trummelcodecline[page,2] = "populated world has";
    trummelcodecline[page,3] = "happened to mix with my";
    trummelcodecline[page,4] = "own.";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "But I'm about to put an";
    trummelcodecline[page,2] = "end to all this, right ";
    trummelcodecline[page,3] = "here and now!";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "k";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 14
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "Do not worry Trummel, I";
    trummelcodecline[page,2] = "am well informed on this";
    trummelcodecline[page,3] = "opponnent.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 15
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Although Reimu may seem like";
    trummelcodecline[page,2] = "a Zoner, with how much space";
    trummelcodecline[page,3] = "she'll cover with her Ofuda and";
    trummelcodecline[page,4] = "Yin-Yang Orb...";
    page++; 
    
    //Page 16
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Her melee attacks and";
    trummelcodecline[page,2] = "fast air speed make her";
    trummelcodecline[page,3] = "quite deadly up close!";
    trummelcodecline[page,4] = "";
    page++; 
    
     //Page 17
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "If the orb is in a very";
    trummelcodecline[page,2] = "inconvenient spot, we can";
    trummelcodecline[page,3] = "always give it a good";
    trummelcodecline[page,4] = "smack!";
    page++; 
    
    //Page 18
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "It would be wise to be";
    trummelcodecline[page,2] = "careful around that orb too.";
    trummelcodecline[page,3] = "If she manages to land a clean";
    trummelcodecline[page,4] = "kick while we're too close..";
    page++; 
    
    //Page 19
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "It'll explode, and then";
    trummelcodecline[page,2] = "we'll be left wide open";
    trummelcodecline[page,3] = "for a counterattack from";
    trummelcodecline[page,4] = "her.";
    page++; 
    
    //Page 20
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Overall, managing the orb";
    trummelcodecline[page,2] = "is the most crucial thing";
    trummelcodecline[page,3] = "to remember!";
    trummelcodecline[page,4] = "";
    page++; 
    
     //Page 21
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "But anyway, why would";
    trummelcodecline[page,2] = "defeating us do any good";
    trummelcodecline[page,3] = "to your problems?";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 22
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "It probably won't...";
    trummelcodecline[page,2] = "But I've learned one";
    trummelcodecline[page,3] = "thing from experience.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 23
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "That incidents are";
    trummelcodecline[page,2] = "resolved easily enough by";
    trummelcodecline[page,3] = "knocking down everyone ";
    trummelcodecline[page,4] = "that I stumble across!";
    page++; 

    //Page 24
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "woag";
    trummelcodecline[page,4] = "";
    page++; 
   
    

    //repeat...
}


// RUNE A
if (has_rune("A"))
{
    hurtboxID.sprite_index = sprite_get("small_hurtbox");
}


// KIRBY
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt")
var ability_icon = sprite_get("kirby_icon")
var ability_yy = sprite_get("kirby_yinyang") 
var ability_sfx = sound_get("yinyang");
var ability_nothing = effect_nothing;


//edited
var ekid = enemykirby;
if enemykirby != noone { //if kirby is in a match & has swallowed the character
with oPlayer { //Run through all players
if (id == ekid){ //makes sure it's the kirby that has swallowed you



   set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 69); // arbitrary value;



    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);

    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0)
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 11);
    
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1)
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 5)
    
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0)
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10)
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1)
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6)
    
    
    set_num_hitboxes(AT_EXTRA_3, 1);
    
    
        // yinyang
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2)
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 100);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_GROUNDEDNESS, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE,  ability_yy);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK,  ability_yy);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, 0.01);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, false);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, ability_nothing);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, true);
        
    
    newicon = ability_icon


if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
//your code here

    move_cooldown[AT_EXTRA_3] = 120;
}
}
}
}

/*
if (fspe_is_charged)
{
    set_num_hitboxes(AT_FSPECIAL, 0);
}
else
{
    set_num_hitboxes(AT_FSPECIAL, 1);
}

*/

// dspe stall
if (dspe_stall > 0)
{
    dspe_stall -= 0.04;
    if (dspe_stall < 0)
    {
        dspe_stall = 0
    }
}


    






