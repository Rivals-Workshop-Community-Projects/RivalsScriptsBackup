//Compatability

//naruto
// with(oPlayer)
// {
//     if(url == "2802388684" && sprite_index == other.naruto_sexyjutsu_sprite)
//         draw_indicator = false;//TODO: why cant set it? naruto overrides it?
// }

//Kirby 2839808881 (ability preset)
if(random_func( 0, 2, true ) == 0)
    TCG_Kirby_Copy = 3;
else
    TCG_Kirby_Copy = 5;

//Kirby 1868756032 (custom ability)
if(swallowed)
{
    swallowed = 0
    var ability_spr = sprite_get("compatabilityKirby");
    // print(ability_spr);//17681
    var ability_spr_reverse = sprite_get("compatabilityKirbyReverse");
    // print(ability_spr_reverse);//17680
    var cloakSound = sound_get("spy_cloak");
    var uncloakSound = sound_get("spy_uncloak");
    var ability_icon = sprite_get("compatabilityKirbyIcon");
    with(enemykirby)
    {
        newicon = ability_icon;
        set_attack_value(AT_EXTRA_3, AG_SPRITE, asset_get("empty_sprite"));//ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);

        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 16);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);

        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);

        //unused
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, cloakSound);
        set_window_value(AT_EXTRA_3, 3, AG_SPRITE, ability_spr);
        //unused
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, uncloakSound);
        set_window_value(AT_EXTRA_3, 4, AG_SPRITE, ability_spr_reverse);

        set_num_hitboxes(AT_EXTRA_3, 0);
    }
}
if(enemykirby != undefined)
{
    with(enemykirby)
    {
        if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
        {
            if(attack == AT_EXTRA_3)
            {
                if(window == 1 && window_timer == 0)
                {
                    if(!visible)
                    {
                        visible = true;
    	                sound_play(get_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX));
                    }
                }

                if(wasVisible && window == 2 && window_timer == 1)
    	            sound_play(get_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX));
                    
                // sprite_index = get_window_value(AT_EXTRA_3, wasVisible ? 3 : 4, AG_SPRITE);
                //since its broken for P1 this is done in post draw instead

                if(wasVisible && window == 2 && window_timer == get_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH)-1)
                {
                    visible = false;
                    invisTimer = 3*60;//TODO: or also add a meter? or maybe indefintely but removed after one usage?
                }
            }
            else if (!visible)
            {
                sound_play(get_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX));
                visible = true;
            }
        }
        else
            wasVisible = visible;
        if(!visible)
        {
            invisTimer--;
            if(invisTimer <= 0 || state_cat == SC_HITSTUN)
            {
                sound_play(get_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX));
                visible = true;
            }
            
            with(asset_get("new_dust_fx_obj"))//TODO: why does this not work properly with kirby on P1?! maybe just give kirby backstab?
            {
                if(player == other.player)
                {
                    if(image_index == 0)
                        hideFx2 = !other.visible;
                    if(variable_instance_exists(self, "hideFx2") && hideFx2)
                        x = 9999999;
                }
            }
        }
    }
}

//dialogue buddy
if(variable_instance_exists(id,"diag"))
{
    diag_name = "Master of Disguise";

    if(otherUrl == "3294133431")//TODO: mirror match doesnt work?
    {
        diagchoice = [
            "I'll see you in hell... You handsome rogue!",
            "Go to hell, and take your cheap suit with you!"];
    }
    else
    {
        diagchoice = [
        "I'm going to gut you like a Cornish game hen!",
        "Let's settle this like gentlemen!",
        "May I make a suggestion? Run."];
    }
}

//unlock potential
if(variable_instance_exists(self, "potential_unlocked") && potential_unlocked)
{
    invisTimer = invisTimerMax;
    // crits = 9;
}

//final smash
if(variable_instance_exists(self, "fs_using_final_smash"))
{
    if(special_down && !special_down_last && joy_pad_idle)
        fs_force_fs = true;
    else
        fs_force_fs = false;

    // fs_go_to_hud = invisAlpha < 0.5;//TODO: or always visible + change fs_ball_offset_x? nvm jiggles a lot
    fs_hide_ball = invisAlpha < 0.5 || disguised;//TODO: make it move with player even while invis

    if(fs_using_final_smash && !fs_using_final_smash_last)//start final smash
    {
        fs_charge = 200;
        for(var i = 0; i < finalSmashCloneCount; i++)
            SpawnClone();
            
        var randSound = random_func(0, 3, true);
        if(randSound == 0)
            sound_play(sound_get("final_smash1"), false, noone, 1);
        if(randSound == 1)
            sound_play(sound_get("final_smash2"), false, noone, 1.75);
        if(randSound == 2)
            sound_play(sound_get("Spy_taunts16"), false, noone, 1);
    }

    if(fs_using_final_smash)
    {
        invisTimer = invisTimerMax;
        soft_armor = 5;

        fs_charge -= fsChargeDrain;
        if(fs_charge <= 0)
        {
            fs_charge = 0;
            fs_using_final_smash = false;
            sound_stop(spy_disguiseSfx);
            spy_disguiseSfx = sound_play(sound_get("spy_disguise"));

            for(var i = 0; i < ds_list_size(clones); i++)
            {
                var currClone = clones[|i];
                spawn_hit_fx(currClone.x, currClone.y-char_height*0.5, disguseFx);
                instance_destroy(currClone);
            }
            ds_list_clear(clones);
        }
        
        for(var i = 0; i < finalSmashCloneCount-ds_list_size(clones); i++)//ensure enough clones
            SpawnClone();
        
	    for(var i = ds_list_size(clones)-1; i >= 0; i--)
        {
            var currClone = clones[|i];
            if(currClone == noone || !instance_exists(currClone))//clone died
                ds_list_remove(clones, currClone);
            else
                with(currClone)
                {
                    damage_scaling = 0;
                    fs_meter_on_player = true;
                    fs_meter_y = 99999999;
                    fs_ball_offset_y = 99999999;

                    //simulate laggy movement
                    if(random_func(i+0, 100, false) < 1)
                    {
                        var angle = random_func(i+3, 360, false);
                        var distance = random_func(i+4, 100, false)+50;
                        x += lengthdir_x(distance, angle);
                        y += lengthdir_y(distance, angle);
                        if(random_func(i+5, 100, false) < 50)
                            spr_dir *= -1;
                    }
                    if(random_func(i+1, 100, false) < 1)
                        invis = !invis;
                    if(random_func(i+2, 100, false) < 2)
                        shield_down = true;// state = free ? PS_AIR_DODGE : PS_PARRY;
                    if(random_func(i+6, 100, false) < 1)
                        spr_dir *= -1;
                    if(random_func(i+7, 100, false) < 2)
                        temp_level = random_func(i+8, 10, true);
                    if(random_func(i+8, 100, false) < 0.1 && state_cat == SC_AIR_NEUTRAL)
                        set_attack(AT_NAIR);
                    if(random_func(i+9, 100, false) < 0.25 && state_cat == SC_GROUND_NEUTRAL)
                        set_attack(AT_JAB);

                    //TODO: keep close to main spy, kinda janky...
                    // var targetDirectionX = sign(other.x - x);
                    // var targetPositionX = other.x + targetDirectionX * 250;
                    // print(string(other.x) + " -> " + string(targetPositionX));
                    // if(x < targetPositionX)
                    // {
                    //     ai_going_right = true;
                    //     ai_going_left = false;
                    // }
                    // else
                    // {
                    //     ai_going_right = false;
                    //     ai_going_left = true;
                    // }

                    if(state == PS_HITSTUN)
                    {
                        spawn_hit_fx(x, y-char_height*0.5, disguseFx);
                        // ds_list_remove(other.clones, self);
                        // instance_destroy(self);
                        
                        state = PS_IDLE;
                        invis = true;
                        invis_alpha = 0;
                        var angle = random_func(i+10, 360, false);
                        var distance = random_func(i+11, 100, false)+50;
                        x = other.x + lengthdir_x(distance, angle);
                        y = other.y + lengthdir_y(distance, angle);
                        if(random_func(i+12, 100, false) < 50)
                            spr_dir *= -1;
                    }
                }
        }

        with(oPlayer)
        {
            //cancel final smash if any real player dies
            if(!custom_clone && (state == PS_DEAD || state == PS_RESPAWN))
            {
                other.fs_charge = 0;
                other.fs_using_final_smash = false;
                sound_stop(spy_disguiseSfx);
                spy_disguiseSfx = sound_play(sound_get("spy_disguise"));
    
                DestroyClones();
            }
            
            //make ai prefer targeting the clones... doesnt work? -> instead do the same as for invis in user_even0
            // if(!custom_clone && other.cloneChar != noone && variable_instance_exists(self,"ai_target"))
            //     ai_target = other.cloneChar;
        }
    }
    else if(ds_list_size(clones) > 0)
        DestroyClones();

    fs_using_final_smash_last = fs_using_final_smash;
}

#define SpawnClone()
{
    if(!fs_using_final_smash)
        return;
    var newClone = instance_create(x, y, "oPlayer");
    newClone.custom_clone = true;
    ds_list_add(clones, newClone);
}

#define DestroyClones()
{
    for(var i = 0; i < ds_list_size(clones); i++)
    {
        var currClone = clones[|i];
        spawn_hit_fx(currClone.x, currClone.y-char_height*0.5, disguseFx);
        instance_destroy(currClone);
    }
    ds_list_clear(clones);
}