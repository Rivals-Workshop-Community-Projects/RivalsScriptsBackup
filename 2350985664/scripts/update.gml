//update


switch (state){
    case PS_FIRST_JUMP:
        if (state_timer <= 1)
        {
            if (jump_down)
            {
                is_last_jump_short = false;
            }
            else
            {
                is_last_jump_short = true;
            }
        }
    break;
    case PS_AIR_DODGE:
        // airdodge 
        if (state_timer == 13)
        {
            sound_play(sound_get("mystia_voice"))
            
            with (obj_article2)
            {
                if (player_id == other)
                {
                    sing_image = 0;
                    
                }
            }
        }
    break;
}

// jump update
djump_speed =  djump_speed_ref - djumps * 0.8;

if !((attack == AT_JAB) and (state == PS_ATTACK_GROUND))
{
    set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 17);
}



for (var i = 0; i < ds_list_size(caged_list); i += 1)
{
    var opp = caged_list[|i];
    cage_time_list[|i] += 1;
    
    opp.hitpause = true;
    opp.hitstop = 1;
    opp.hitstop_full = 2;
    opp.blind_immune_time = 24;
    
    if (cage_time_list[|i] % 4 == 0) and (cage_time_list[|i] < 30)
    {
        if (!has_rune("D"))
        {
            take_damage(caged_list[|i].player, player, 1);
        }
        else
        {
            take_damage(caged_list[|i].player, player, 2);
        }
    }
    
    if (cage_time_list[|i] >= cage_time_max)
    {
        var list_pos = ds_list_find_index(caged_list,opp);
        ds_list_delete(caged_list,list_pos);
        ds_list_delete(cage_time_list,list_pos);
    }
}

// USPECIAL
if (has_uspecial == 0)
{
    move_cooldown[AT_USPECIAL] = 3;
}
if (!free) or (grab_id != noone) or (state == PS_WALL_JUMP)
{
    has_uspecial = uspecial_max;
}

// FSPECIAL
if (has_fspecial == 0)
{
    move_cooldown[AT_FSPECIAL] = 3;
}
if (!free) or (grab_id != noone) or (state == PS_WALL_JUMP)
{
    has_fspecial = fspecial_max;
}


var mystia = self;
with (oPlayer)
{
    if (self!= other)
    {
        blinded -= 1;
        
        if (blind_immune_time > 0)
        {
            blind_immune_time -= 1
        }
    }
    switch(state)
    {
        case PS_RESPAWN:
            blinded = 0;
        break;
        case PS_HITSTUN:
        case PS_HITSTUN_LAND:
        // here for everyone, except Mystia, which is in hit_player
            if (hit_player_obj != mystia)
             {
                with (mystia)
                {
                    var list_pos = ds_list_find_index(caged_list,other);
                    ds_list_delete(caged_list,list_pos);
                    ds_list_delete(cage_time_list,list_pos);
                }
             }
        break;
        
    }
}



if ((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR))
{
     switch (attack)
    {
        case AT_FSPECIAL:
        case AT_USPECIAL:
            switch (window)
            {
                case 7:
                    set_attack_value(attack, AG_CATEGORY, 1);
                break
                default:
                    set_attack_value(attack, AG_CATEGORY, 2);
                break;
            }
        
        break;
    }
}






// TRUMMEL CODEC

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "bird";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "yummy";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Trummel, you know eating";
    trummelcodecline[page,2] = "your opponent isn't";
    trummelcodecline[page,3] = "allowed right?";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "what how?";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Anyway, here is Mystia";
    trummelcodecline[page,2] = "Lorelei, she comes from";
    trummelcodecline[page,3] = "the same place as Reimu.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "She's an aerial focus ";
    trummelcodecline[page,2] = "grabbler, using her speed";
    trummelcodecline[page,3] = "to catch her opponent";
    trummelcodecline[page,4] = "and throw them away.";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "As a night sparrow, she";
    trummelcodecline[page,2] = "can also blind people";
    trummelcodecline[page,3] = "using her annoying songs.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Once she grab a blinded";
    trummelcodecline[page,2] = "opponent, she'll use this";
    trummelcodecline[page,3] = "opportunity to wrap them";
    trummelcodecline[page,4] = "in cage, just like Maypul.";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "She's free to do any";
    trummelcodecline[page,2] = "follow up after that";
    trummelcodecline[page,3] = "so be careful.";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "But in the other hand,";
    trummelcodecline[page,2] = "she's light and has no";
    trummelcodecline[page,3] = "projectile game, so you";
    trummelcodecline[page,4] = "can try to camp her out!";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "help me";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "ketchup or mustard";
    trummelcodecline[page,4] = "i cant decide";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "TRUMMEL!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    

    //repeat...
}







// KIRBY
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt")
var ability_icon = sprite_get("kirby_icon") 
var ability_sfx = sound_get("poyo"); 



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
    
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);
    
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 7);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
    
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 11);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
    
    
    set_num_hitboxes(AT_EXTRA_3, 2);
    
    
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 6);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -26);
    set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.1);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303 );
    set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 3);
    
    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
    set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 4);
    set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 6);
    set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -26);
    set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 0);
    set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 80);
    set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 75);
    set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
    set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
    set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 80);
    set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.2);
    set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.1);
    set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 303 );
    set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 3);
    
    newicon = ability_icon
    
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
//your code here

}
}
}
}


// RUNE A
if (has_rune("A"))
{
    hurtboxID.sprite_index = sprite_get("small_hurtbox");
}