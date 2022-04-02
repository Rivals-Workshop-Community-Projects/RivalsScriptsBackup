user_event(14);

//Daroach support
daroach_portrait = sprite_get("boss_portrait1");
daroach_portrait2 = sprite_get("boss_portrait2");
daroach_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Ah, welcome. What might have brought you here? [taunt]";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;

//Page 2
daroach_speaker[page] = 0;
daroach_text[page] = "...[taunt]Hmm? What's this? Has a window been left open?";
page++;

//Page 3
daroach_speaker[page] = 1;
daroach_text[page] = "...[taunt]";
page++;

//Page 4
daroach_speaker[page] = 0;
daroach_text[page] = "...Is this your doing?";
page++;

//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "...[taunt]";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "I'd advise you take your feathered friends elsewhere, or I may have to use force.";
page++;

//Page 7
daroach_speaker[page] = 1;
daroach_text[page] = "...";
page++;

//Page 8
daroach_speaker[page] = 0;
daroach_text[page] = "Well, [laugh]looks like I'll have to escort you out myself!";
page++;

if (get_stage_data(SD_ID) == 53463){
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_TAUNT && !daroach_bossstage_taunted){
        daroach_bossstage_taunted = true;
        daroach_bossstage_taunted_times += 1;
        window = 3;
        window_timer = 5;
        if (daroach_bossstage_taunted_times == 1){
            var daroach_cutscene_bird_vfx = spawn_hit_fx(0, y - 70, vfx_bird);
            daroach_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
            daroach_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
            daroach_cutscene_bird_vfx.spr_dir = 1;
            daroach_cutscene_bird_vfx = spawn_hit_fx(0 - 40, y - 110, vfx_bird);
            daroach_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
            daroach_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
            daroach_cutscene_bird_vfx.spr_dir = 1;
        }
        if (daroach_bossstage_taunted_times == 2){
            var baby_bird_luigi_summon = 0;
            repeat(5){
                baby_bird_luigi_summon += 1;
                var daroach_cutscene_bird_vfx = spawn_hit_fx(0 - baby_bird_luigi_summon * 55, y - 50 - random_func(baby_bird_luigi_summon, 120, true), vfx_bird);
                daroach_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
                daroach_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
                daroach_cutscene_bird_vfx.spr_dir = 1;
            }
        }
        if (daroach_bossstage_taunted_times == 3){
            var baby_bird_luigi_summon = 0;
            repeat(10){
                baby_bird_luigi_summon += 1;
                var daroach_cutscene_bird_vfx = spawn_hit_fx(0 - baby_bird_luigi_summon * 65, y - 50 - random_func(baby_bird_luigi_summon, 120, true), vfx_bird);
                daroach_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
                daroach_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
                daroach_cutscene_bird_vfx.spr_dir = 1;
            }
        }
        if (daroach_bossstage_taunted_times == 4){
            daroach_bossstage_release_the_bird = true;
        }
    } else {
        daroach_bossstage_taunted = false;
    }
    with (hit_fx_obj){
        if (is_birdluigi_custcene_bird && birdluigi_custcene_bird_id == other.id){
            x += 3;
        }
    }
    if (daroach_bossstage_release_the_bird && get_gameplay_time()%35 == 0){
        var daroach_cutscene_bird_vfx = spawn_hit_fx(-20 - random_func(5, 75, true), y - 50 - random_func(4, 120, true), vfx_bird);
        daroach_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
        daroach_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
        daroach_cutscene_bird_vfx.spr_dir = 1;
    }
}

//Dracula support
dracula_portrait = sprite_get("boss_portrait1");
dracula_portrait2 = sprite_get("boss_portrait2");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "...What brings you here, Bird?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "...Not much for conversation, hmm?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "...[taunt]";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "...What is this? A few stray birds have flown in?";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "...[taunt]";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Is this your doing?";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "...[taunt]";
page++;

//Page 8
dracula_speaker[page] = 0;
dracula_text[page] = "You dare bring such insolence into MY castle?[taunt][glass] You must die!";
page++;

if (get_stage_data(SD_ID) == 06021 || get_stage_data(SD_ID) == 75518){
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_TAUNT && !dracula_bossstage_taunted){
        dracula_bossstage_taunted = true;
        dracula_bossstage_taunted_times += 1;
        window = 3;
        window_timer = 5;
        if (dracula_bossstage_taunted_times == 1){
            var dracula_cutscene_bird_vfx = spawn_hit_fx(0, y - 70, vfx_bird);
            dracula_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
            dracula_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
            dracula_cutscene_bird_vfx.spr_dir = 1;
            dracula_cutscene_bird_vfx = spawn_hit_fx(0 - 40, y - 110, vfx_bird);
            dracula_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
            dracula_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
            dracula_cutscene_bird_vfx.spr_dir = 1;
        }
        if (dracula_bossstage_taunted_times == 2){
            var baby_bird_luigi_summon = 0;
            repeat(5){
                baby_bird_luigi_summon += 1;
                var dracula_cutscene_bird_vfx = spawn_hit_fx(0 - baby_bird_luigi_summon * 55, y - 50 - random_func(baby_bird_luigi_summon, 120, true), vfx_bird);
                dracula_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
                dracula_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
                dracula_cutscene_bird_vfx.spr_dir = 1;
            }
        }
        if (dracula_bossstage_taunted_times == 3){
            var baby_bird_luigi_summon = 0;
            repeat(10){
                baby_bird_luigi_summon += 1;
                var dracula_cutscene_bird_vfx = spawn_hit_fx(0 - baby_bird_luigi_summon * 65, y - 50 - random_func(baby_bird_luigi_summon, 120, true), vfx_bird);
                dracula_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
                dracula_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
                dracula_cutscene_bird_vfx.spr_dir = 1;
            }
        }
        if (dracula_bossstage_taunted_times == 4){
            dracula_bossstage_release_the_bird = true;
        }
    } else {
        dracula_bossstage_taunted = false;
    }
    with (hit_fx_obj){
        if (is_birdluigi_custcene_bird && birdluigi_custcene_bird_id == other.id){
            x += 3;
        }
    }
    if (dracula_bossstage_release_the_bird && get_gameplay_time()%35 == 0){
        var dracula_cutscene_bird_vfx = spawn_hit_fx(-20 - random_func(5, 75, true), y - 50 - random_func(4, 120, true), vfx_bird);
        dracula_cutscene_bird_vfx.is_birdluigi_custcene_bird = true;
        dracula_cutscene_bird_vfx.birdluigi_custcene_bird_id = id;
        dracula_cutscene_bird_vfx.spr_dir = 1;
    }
}

//Dialogue Buddy support
if(variable_instance_exists(id,"diag")){
    diagchoice = [
        "bird up",
        "bird down",
        "Luigi, Luigi. Oh yeah, oh yeah!",
        "just the  hat",
        "Pardon, but have you noticed any comically eerie mansions nearby?",
        "She sells seashells on a seashore, but the value of these shells will fall. Due to the laws of supply and demand, no one wants to buy shells, 'cause there's loads on the sand. Step 1; You must create a sense of scarcity. Shells will sell much better if the people think they’re rare, you see. Bare with me, take as many shells as you can find and hide 'em on an island. Stockpile 'em high until they’re rarer than a diamond. Step 2; you gotta make the people think that they want 'em. Really want 'em, really f***in want 'em. Hit 'em like Bronson. Influencers, product placement, featured prime time entertainment, if you haven’t got a shell then you're just a f***ing waste, man. Three; It's monopoly, invest inside some property. Start a corporation, make a logo, do it properly. 'Shells must sell', that will be your new philosophy. Swallow all your morals, they're a poor man's quality. Four; Expand, expand, expand. Clear forest, make land. Fresh blood, on hand. Five; Why just shells? Why limit yourself? She sells seashells? Sell oil as well! Six; Guns, sell stocks, sell diamonds, sell rocks, sell water to a fish, sell the time to a clock, Seven; press on the gas, take your foot off the brakes. Run to be the president of the United States. Eight; Big smile mate, big wave that's great. Now the truth is overrated, tell lies out the gate. Nine; Polarise the people, controversy is the game. It don't matter if they hate you, if they all say your name. Ten; The world is yours, step out on a stage to a round of applause. You're a liar, a cheat, a devil, a fraud. And you sell seashells on the seashore.",
        "Luigi 
From Wikipedia, the free encyclopedia 
This article is about the Nintendo character. For other people named Luigi, see Luigi (name). 
For other uses, see Luigi (disambiguation). 
Luigi Mario character Luigi 
Luigi, as depicted in promotional artwork of New Super Mario Bros. U Deluxe 
Created by Shigeru Miyamoto Portrayed by Danny Wells (The Super Mario Bros. Super Show!) John Leguizamo (Super Mario Bros.) Voiced by  English Japanese In-universe information Full name Luigi Mario Occupation Plumber Family Mario (twin brother) Origin Mushroom Kingdom Nationality Italian  Luigi (Japanese: ルイージ, Hepburn: Ruīji, pronounced [ɾɯ.iːʑi]; English: /luˈiːdʒi/ loo-EE-jee, Italian: [luˈiːdʒi]) is a fictional character featured in video games and related media released by Nintendo. Created by designer Shigeru Miyamoto, Luigi is portrayed as the younger fraternal twin brother of Nintendo's mascot Mario. Luigi appears in many games throughout the Mario franchise, often as a sidekick to his older twin brother."]
    if(otherUrl == "1962084547" || otherUrl == "2094681709" || otherUrl == "2230601893" || otherUrl == "2202612329" || otherUrl == "1926836320") && (diag != ""){
        diag = "Bird...
up?";
    }
    if(otherUrl == url || otherUrl == "2285110741"){
        with(pet_obj){
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.player;
                diag_nrs = true;
                diag_nrs_diag = [
                "What are you doing here, you hat-stealing imposter?",
                "haha
imposter",
                "I-
Pardon?"]
            }
        }
    }
    if(otherUrl == "2504886110"){
        with(pet_obj){
            if(variable_instance_exists(id,"diag_text")){
                diag_nrs_p1 = other.otherPlayer;
                diag_nrs = true;
                diag_nrs_diag = [
                "It seems that I overestimated that man's standards for selecting people to invite to this strange tournament.",
                "You're just jealous that you weren't the first selection.",
                "That-
That worm evidently had no clue what he was talking about anyway."]
            }
        }
    }
    if(otherUrl == "2217843818") && (diag != ""){
        diag = "What a fine looking fellow.
Surely he isn't here to commit acts of deception or cause any harm to others."
    }
}

flutterjumping = false;
flutterjump_alert = false;

if (luigi_fireball != noone && !instance_exists(luigi_fireball)){
    luigi_fireball = noone;
}

if (state == PS_WALL_JUMP || state == PS_FIRST_JUMP) && (state_timer < 2){
    flutterjump_delay = 20;
    flutterjump_time = 100;
}

if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR || state == PS_WALL_JUMP || (state == PS_ATTACK_AIR && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DATTACK && attack != AT_FSTRONG)) && (jump_down && flutterjump_delay < 1){
    if (flutterjump < flutterjump_max && vsp > -2) || (flutterjump < round(flutterjump_max * 0.5) && vsp < -1){
        vsp -= 0.1;
        flutterjump += 0.1;
        flutterjumping = true;
        repeat (10){
            if (vsp > -4){
                vsp -= 0.1;
                flutterjump += 0.1;
            }
        }
        vsp *= flutterjump_time / 100;
        if (left_down && spr_dir > 0) || (right_down && spr_dir < 0){
            if (flutterjump_turn_cooldown <= 0 && state != PS_ATTACK_AIR){
                spr_dir *=  -1;
                flutterjump_turn_cooldown = 5;
            }
        }
    } else {
        flutterjumping = true;
        flutterjump_alert = true;
    }
   if (flutterjump < flutterjump_max && vsp > -2){
       flutterjump_alert = true;
   }
}

repeat(round(flutter_restore_speed)){
    if (!free && flutterjump > 0){
        flutterjump = round(flutterjump - 2);
        flutterjump_delay = 20;
    }
}

if (flutterjump < 0){
    flutterjump = 0;
}

if (state == PS_WALL_JUMP && flutterjump > round(flutterjump_max * 0.5) - 2){
    flutterjump = round(flutterjump_max * 0.5) - 2;
}

if (state == PS_WALL_JUMP && has_rune("D")){
    flutterjump = 0;
}

if (state == PS_DOUBLE_JUMP){
    flutterjump_delay = 5;
    if (state_timer > 10){
        set_state(PS_IDLE_AIR);
    }
}

flutterjump_delay -= 1;
if (flutterjumping != flutterjumping_already){
    sound_play(asset_get("sfx_birdflap"));
}
flutterjumping_already = flutterjumping;

if (state == PS_DEAD){
    deadtimer += 1;
} else {
    deadtimer = 0;
    deadhatpos = 10;
    deadhatmove = -3;
}

if (deadtimer >= 10){
    deadhatmove += 0.1;
    deadhatpos += deadhatmove;
}

flutterjump_draw = round((flutterjump_draw * 0.85) + (flutterjump * 0.15))
if (round(flutterjump) > round(flutterjump_draw)){
    flutterjump_draw = round(flutterjump_draw + 1);
}
if (round(flutterjump) < round(flutterjump_draw)){
    flutterjump_draw = round(flutterjump_draw - 1);
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_DSTRONG){
    dstrong_drag_player = noone;
}

if (dstrong_drag_player != noone && !hitpause){
    repeat (4){
        if (dstrong_drag_player.x < x){
            dstrong_drag_player.x += 1;
       }
        if (dstrong_drag_player.x > x){
            dstrong_drag_player.x -= 1;
        }
        if (dstrong_drag_player.y < y - 30){
            dstrong_drag_player.y += 1;
        }
        if (dstrong_drag_player.y > y - 30){
            dstrong_drag_player.y -= 1;
        }
    }
}

if (luigi_fireball != noone){
    move_cooldown[AT_NSPECIAL] = 60;
    if (!has_rune("M")){
        move_cooldown[AT_USPECIAL] = 60;
    }
}

if (fireballtogglecooldown > 0){
    fireballtogglecooldown -= 1;
}

if (fireballtogglecooldown_noanimation > 0){
    fireballtogglecooldown_noanimation -= 1;
}

if (special_pressed && luigi_fireball != noone && instance_exists(luigi_fireball) && fireballtogglecooldown < 1) && (joy_pad_idle || state == PS_DEAD){
    if (luigi_fireball.fireballfloat){
        luigi_fireball.fireballfloat = false;
        luigi_fireball.vsp -= 4;
        if (state == PS_DEAD){
            if (left_down){
                luigi_fireball.hsp -= 2;
            }
            if (right_down){
                luigi_fireball.hsp += 2;
            }
            if (up_down){
                luigi_fireball.vsp -= 2;
            }
        } else {
            luigi_fireball.hsp += spr_dir * 1;
        }
    } else {
        luigi_fireball.fireballfloat = true;
        sound_play(sound_get("chirp3"));
    }
    fireballtogglecooldown = fireballtogglecooldown_full;
    spawn_hit_fx(luigi_fireball.x, luigi_fireball.y, vfx_ancientpower);
}

if (luigi_fireball == noone || !instance_exists(luigi_fireball)) && (state == PS_DEAD && special_pressed && fireballtogglecooldown < 1){
    var spawn_egg = false;
    with(asset_get("oPlayer")){
        if (state != PS_DEAD){
            spawn_egg = true;
        }
    }
    if (spawn_egg){
        luigi_fireball = instance_create(round(room_width * 0.5), 0, "obj_article1" );
        luigi_fireball.hsp = 0;
        luigi_fireball.vsp = 1;
        luigi_fireball.bounces = 2;
        luigi_fireball.fireballfloat = false;
        sound_play(sound_get("chirp3"));
        fireballtogglecooldown = fireballtogglecooldown_full;
    }
}

steve_death_message = steve_death_message_orig;
with(asset_get("oPlayer")){
    if ("birdluigifire" in self){
        if (birdluigifire && birdluigifire_id == other.id){
            if (url == "2284823424"){
                with(other){
                    with(asset_get("pHitBox")){
                        if (player_id == other.id){
                            steve_death_message = other.steve_death_message_fire;
                        }
                    }
                }
            }
            if (get_gameplay_time()%20 == 0){
                var fireeffectid = id;
                with (other){
                    spawn_hit_fx(fireeffectid.x - 30 + random_func(3, 61, true), fireeffectid.y - fireeffectid.char_height + random_func(4, fireeffectid.char_height, true), luigi_fire_persist);
                }
            }
            birdluigifire_timer -= 1;
            if (birdluigifire_timer%30 == 0){
                take_damage( player, -1, 1 );
                birdluigifire_damage += 1;
            }
            if (birdluigifire_timer < 1){
                birdluigifire = false;
                take_damage( player, -1, birdluigifire_damage * -1 );
                birdluigifire_damage = 0;
                birdluigifire_id = noone;
                outline_color = [0, 0, 0,];
                sound_play(asset_get("sfx_burnend"));
            }
            if (state == PS_RESPAWN){
                birdluigifire = false;
                birdluigifire_damage = 0;
                birdluigifire_id = noone;
                outline_color = [0, 0, 0,];
            }
        }
    }
    if ("has_hit_luigi_egg" in self){
        if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
            has_hit_luigi_egg = false;
            group_hit_luigi_egg[0] = false;
            group_hit_luigi_egg[1] = false;
            group_hit_luigi_egg[2] = false;
            group_hit_luigi_egg[3] = false;
            group_hit_luigi_egg[4] = false;
            group_hit_luigi_egg[5] = false;
            group_hit_luigi_egg[6] = false;
            group_hit_luigi_egg[7] = false;
            group_hit_luigi_egg[8] = false;
            group_hit_luigi_egg[9] = false;
            group_hit_luigi_egg[10] = false;
            group_hit_luigi_egg[11] = false;
            group_hit_luigi_egg[12] = false;
            group_hit_luigi_egg[13] = false;
            group_hit_luigi_egg[14] = false;
            group_hit_luigi_egg[15] = false;
            group_hit_luigi_egg[16] = false;
            group_hit_luigi_egg[17] = false;
            group_hit_luigi_egg[18] = false;
            group_hit_luigi_egg[19] = false;
            group_hit_luigi_egg[20] = false;
        }
    } else {
        has_hit_luigi_egg = false;
    }
}

if (get_gameplay_time()%6 == 0){
    fspecial_charge_image += 1;
}

if (fspecial_charge_image > 2){
    fspecial_charge_image = 1;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_FSPECIAL){
    fspecial_charge -= 1;
}

if (state == PS_PARRY){
    if (window == 2 && window_timer == 1){
        var parryfirefx = spawn_hit_fx(x - 4, y - 48, luigi_fire_small);
        parryfirefx.spr_dir = 1;
    }
}

if (state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
    luigi_egg = true;
} else {
    if (luigi_egg && state != PS_PARRY_START){
        var parryfirefx = spawn_hit_fx(x - 4, y - 48, luigi_fire_small);
        parryfirefx.spr_dir = 1;
        luigi_egg = false;
    }
}

hatdeathdrawheight += hatdeathdrawvsp;
hatdeathdrawvsp += 0.05;

if (has_rune("H")){
    if (state == PS_DASH){
        hsp = (dash_speed * spr_dir) + (state_timer * 0.1 * spr_dir);
    }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_UTILT){
    utilt_hat_has_hit = false;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_TAUNT){
    repeat(10){
        if (taunt_hold_timer > 0){
            taunt_hold_timer -= 1;
            suppress_stage_music( 1, 1 );
            sound_stop(sound_get("static"));
        }
    }
    repeat(10){
        if (taunt_hold_timer > 500){
            taunt_hold_timer -= 1;
        }
    }
    repeat(10){
        if (taunt_hold_timer > 1000){
            taunt_hold_timer -= 1;
        }
    }
}

//Compatibilities

if (trummelcodecneeded){
    trummelcodec = 28;
}

if swallowed {
    swallowed = 0;
    var ability_spr = sprite_get("nspecial_kirb");
    var ability_hurt = sprite_get("nspecial_kirb_hurt");
    var ability_proj = sprite_get("boulder_kirb");
    var luigi_kirb_ability_fire_fx = sprite_get("kirb_fire_hit_omni");
    var ability_sfx1 = sound_get("crack");
    var ability_sfx2 = sound_get("crack2");
    var myicon = sprite_get("kirbyicon");
    var myicon_b = sprite_get("kirbyicon2");
    with enemykirby {
        newicon = myicon;
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
        set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 4);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, -3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 2);

        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, ability_sfx1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 25);

        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 5);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, ability_sfx2);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX_FRAME, 25);

        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, other.id);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 200);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -14);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 20);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 32);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 32);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 301);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 3.5);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, 0.4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);


        set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, myicon);
        set_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE, myicon_b);
    }
}

if (enemykirby != noone){
    with(asset_get("oPlayer")){ //Run through all players
        if (url == 1868756032){
            if (get_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH) == other.id){
                newicon = get_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE);
            }
        }
    }
}

with(asset_get("pHitBox")){
    if (player_id.url == 1868756032){
        if (attack == AT_EXTRA_3 && hbox_num == 1 && type == 2){
            if !("kirby_egg_bounces" in self){
                kirby_egg_bounces = 3;
            }
            proj_angle = spr_dir * hitbox_timer * -5;
            with (player_id){
                newicon = get_hitbox_value(AT_EXTRA_3, 3, HG_PROJECTILE_SPRITE);
                move_cooldown[AT_EXTRA_3] = 6;
            }
            if (hitbox_timer == length - 1){
                spawn_hit_fx(round(x), round(y), destroy_fx);
            }
            if (free){
                kirby_egg_vsp_store = vsp;
            } else {
                hsp *= 0.975;
                if ("kirby_egg_vsp_store" in self){
                    vsp = kirby_egg_vsp_store * -0.6;
                    vsp -= 1.5;
                    if ("kirby_egg_bounces" in self){
                        kirby_egg_bounces -= 1;
                        if (kirby_egg_bounces < 1){
                            destroyed = true;
                        }
                    }
                    with (player_id){
                        if (other.destroyed){
                            sound_play(get_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX));
                        } else {
                            sound_play(get_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX));
                            spawn_hit_fx(other.x, other.y - 10, 302);
                        }
                    }
                }
            }
        }
    }
}

if (get_gameplay_time()%5 == 0){
    if (miiverse_post == sprite_get("miiverse1")){
        miiverse_post = sprite_get("miiverse2");
    } else {
       miiverse_post = sprite_get("miiverse1");
    }
}


if (state == PS_CROUCH){
    jump_speed = crouch_jump_speed;
} else {
    if (jump_speed == crouch_jump_speed && state != PS_JUMPSQUAT && state != PS_FIRST_JUMP){
        jump_speed = normal_jump_speed;
    }
}

if (hitpause && fspecial_slow_motion){
    x += spr_dir;
    with (hit_player_obj){
        if (hitpause){
            x += old_hsp * 0.1;
            y += old_vsp * 0.1;
        }
    }
}

if (!hitpause){
    fspecial_slow_motion = false;
}

if (state == PS_CROUCH){
    hsp *= 0.9;
}

if (state == PS_WAVELAND){
    hsp *= 1.05;
}

if (!free){
    has_naired = false;
    fspecial_has_restored_djump = false;
    uair_boost = false;
}

if (get_gameplay_time()%140 == 0 && state != PS_SPAWN && !misfire_active && misfire_cooldown < 1){
    if (random_func( 6, 15, true ) == 8 && !misfire_charged && !has_rune("F")){
        misfire_charged = true;
        sound_play(sound_get("stat_up"));
    }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_FSTRONG){
    misfire_active = false;
    misfire_cooldown -= 1;
}

if (get_gameplay_time()%12 == 0 && get_player_color( player ) == alt_gold){
    spawn_hit_fx( x - 25 + random_func(4, 51, true), y - char_height + random_func(5, char_height, true), hit_fx_create(asset_get("bear_promo2_sparkle"), 20) );
}


if (misfire_active){
    if (get_gameplay_time()%15 == 0){
        spawn_hit_fx(x - 30 + random_func(3, 61, true), y - char_height + random_func(4, char_height, true), hit_fx_create(asset_get("fire_part_spr1"), 40));
    }
}

if (has_rune("K")){
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
    set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
}

if (flutterjump_turn_cooldown > 0){
    flutterjump_turn_cooldown -= 1;
}

if (attack == AT_FSTRONG && misfire_active && window == 3){
    super_armor = true;
}

if (state == PS_SPAWN && state_timer < player * 5) && (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518){
    carhorn_timer = 15;
    carhorn = true;
}

if (state == PS_SPAWN && state_timer == 20 + (player * 5)) && (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518){
    carhorn_timer = 20;
    carhorn = true;
}

if (carhorn_timer <= 0) && (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518){
    carhorn = false;
} else {
    carhorn = true;
}

if (carhorn) && (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518) && !("in_adventure" in self && in_adventure){ //the horn used to play during cutscenes in adventure mode which is SO annoying so its disabled during adventures
    if (!carhorn_prev){
        //sound_play(sound_get("horn_start_cw"));
    }
    sound_play(sound_get("horn_loop_cw"), false, noone, 0.045);
}

if (!carhorn) && (get_stage_data(SD_ID) != 53463 && get_stage_data(SD_ID) != 06021 && get_stage_data(SD_ID) != 75518){
    if (carhorn_prev){
        //sound_play(sound_get("horn_stop_cw"));
        sound_stop(sound_get("horn_loop_cw"));
    }
}
carhorn_timer -= 1;
carhorn_prev = carhorn;

if (state == PS_SPAWN){
    if (vacuum_move_type == 1){
        vacuum_distance *= 0.95;
        if (vacuum_distance > 5){
            vacuum_distance *= 0.9;
        }
        draw_indicator = false;
        draw_y = 9999;
        draw_x = -9999 * spr_dir;
    }
    if (vacuum_move_type == 2){
        vacuum_distance *= 1.2;
        if (vacuum_move_type == 1){
            sound_play(land_sound);
        }
    }
    if (vacuum_distance < 3.5){
        vacuum_move_type = 2;
    }
}

if (egg_catch_cooldown > 0){
    egg_catch_cooldown -= 1;
}

with(asset_get("pHitBox")){
    if (player_id.url == "2283018206" || player_id.url == "2015489502"){
        steve_death_message = other.steve_death_message_otto;
    }
}

if (dattack_timer >= 0){
    dattack_timer -= 1;
}

if (state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH || state == PS_DASH_STOP || state == PS_WAVELAND){
    if (!dash_sfx_played){
        sound_play(sound_get("se_luigi_dash_start"), false, noone, 0.5, 1);
        dash_sfx_played = true;
    }
} else {
    dash_sfx_played = false;
}

if (has_rune("L")){
    if (abyss_commandinput_hold_timer_a > 0){
        abyss_commandinput_hold_timer_a -= 1;
    } else {
        abyss_commandinput_a = 0;
    }
    if (abyss_commandinput_hold_timer_b > 0){
        abyss_commandinput_hold_timer_b -= 1;
    } else {
        abyss_commandinput_b = 0;
    }
    if (abyss_commandinput_hold_timer_c > 0){
        abyss_commandinput_hold_timer_c -= 1;
    } else {
        abyss_commandinput_c = 0;
    }
    if (abyss_commandinput_hold_timer_d > 0){
        abyss_commandinput_hold_timer_d -= 1;
    } else {
        abyss_commandinput_d = 0;
    } /*
    if (!down_down && !special_pressed) && !(left_down && spr_dir < 0) && !(right_down && spr_dir > 0){
        abyss_commandinput_a = 0;
        abyss_commandinput_b = 0;
    } */
    if (down_down && !left_down && !right_down && abyss_commandinput_a == 0 && abyss_commandinput_c == 0) && (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        abyss_commandinput_a = 1;
        abyss_commandinput_hold_timer_a = 10;
    }
    if (down_down && abyss_commandinput_a == 1 && abyss_commandinput_c == 0){
        if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
            abyss_commandinput_a = 2;
            abyss_commandinput_hold_timer_a = 10;
        }
    }
    if (!down_down && abyss_commandinput_a == 2 && abyss_commandinput_c == 0){
        if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
            abyss_commandinput_a = 3;
            abyss_commandinput_hold_timer_a = 15;
        }
    }
    if (special_pressed && abyss_commandinput_a == 3 && abyss_commandinput_c == 0) && (state_cat != SC_HITSTUN && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE){
        abyss_commandinput_a = 0;
        set_attack(AT_NTHROW);
    }
    if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
        if (!down_down && abyss_commandinput_b == 0) && (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
            abyss_commandinput_b = 1;
            abyss_commandinput_hold_timer_b = 10;
        }
        if (down_down && abyss_commandinput_b == 1) && (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
            abyss_commandinput_b = 2;
            abyss_commandinput_hold_timer_b = 10;
        }
    }
    if (down_down && abyss_commandinput_b == 2 && !left_down && !right_down) && (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        abyss_commandinput_b = 3;
        abyss_commandinput_hold_timer_b = 15;
    }
    if (special_pressed && abyss_commandinput_b == 3) && (state_cat != SC_HITSTUN && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE){
        abyss_commandinput_b = 0;
        set_attack(AT_DTHROW);
    }
    if (abyss_commandinput_a == 3 && down_down && get_player_damage(player) >= 100) && (state_cat != SC_HITSTUN && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE){
        abyss_commandinput_a = 0;
        abyss_commandinput_c = 1;
        abyss_commandinput_hold_timer_c = 15;
    }
    if (abyss_commandinput_c == 1 && down_down && get_player_damage(player) >= 100){
        if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
            abyss_commandinput_c = 2;
            abyss_commandinput_hold_timer_c = 15;
        }
    }
    if (abyss_commandinput_c == 2 && !down_down && get_player_damage(player) >= 100){
        if (left_down && spr_dir < 0) || (right_down && spr_dir > 0){
            abyss_commandinput_c = 3;
            abyss_commandinput_hold_timer_c = 15;
        }
    }
    if (special_pressed && abyss_commandinput_c == 3 && get_player_damage(player) >= 100){
        abyss_commandinput_c = 0;
        set_attack(AT_FTHROW);
    }
    if (down_down && !left_down && !right_down && abyss_commandinput_d == 0 && get_player_damage(player) >= 100) && (state_cat != SC_HITSTUN && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
        abyss_commandinput_d = 1;
        abyss_commandinput_hold_timer_d = 15;
    }
    if (down_down) && (left_down || right_down) && (abyss_commandinput_d == 1 && get_player_damage(player) >= 100){
        abyss_commandinput_d = 2;
        abyss_commandinput_hold_timer_d = 15;
    }
    if (!down_down) && (left_down || right_down) && (abyss_commandinput_d == 2 && get_player_damage(player) >= 100){
        abyss_commandinput_d = 3;
        abyss_commandinput_hold_timer_d = 15;
    }
    if (down_down) && (left_down || right_down) && (abyss_commandinput_d == 3 && get_player_damage(player) >= 100){
        abyss_commandinput_d = 4;
        abyss_commandinput_hold_timer_d = 15;
    }
    if (down_down && !left_down && !right_down && abyss_commandinput_d == 4 && get_player_damage(player) >= 100){
        abyss_commandinput_d = 5;
        abyss_commandinput_hold_timer_d = 15;
    }
    if (special_pressed) && (left_down || right_down) && (abyss_commandinput_d == 5 && get_player_damage(player) >= 100) && (state_cat != SC_HITSTUN && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_PARRY && state != PS_AIR_DODGE){
        abyss_commandinput_d = 0;
        set_attack(AT_UTHROW);
    }
}

infamoustaunt_spray_text_img += 0.1;
if (infamoustaunt_spray_fade > 0){
    infamoustaunt_spray_fade -= 1;
}

if (small_sprites > 0 && get_player_color(player) == alt_mario){
    if !(state == PS_ATTACK_GROUND && attack == AT_TAUNT && window == 2) && !(state == PS_ATTACK_AIR && attack == AT_TAUNT && window == 2){
        small_sprites -= 0.1;
    }
}

set_window_value(44, 2, AG_WINDOW_SFX, sound_get("squack3"));
if (get_player_color(player) == alt_goose){
    set_window_value(44, 2, AG_WINDOW_SFX, sound_get("honk_01"));
}
if (get_player_color(player) == alt_wario){
    set_window_value(44, 2, AG_WINDOW_SFX, sound_get("sfx_go"));
}
if (get_player_color(player) == alt_waluigi){
    set_window_value(44, 2, AG_WINDOW_SFX, sound_get("sfx_wah"));
}
if (get_player_color(player) == alt_garcello){
    set_window_value(44, 2, AG_WINDOW_SFX, sound_get("sfx_cough"));
    if (get_gameplay_time()%10 == 0){
        set_window_value(44, 2, AG_WINDOW_SFX, sound_get("sfx_COUGH_AAAAA"));
    }
}

if (get_player_color(player) == alt_infamous){
    if (!place_meeting(infamoustaunt_spray_text_x, infamoustaunt_spray_text_y + 2, asset_get("solid_32_obj")) && !place_meeting(infamoustaunt_spray_text_x, infamoustaunt_spray_text_y + 2, asset_get("jumpthrough_32_obj"))){
        spawn_hit_fx(infamoustaunt_spray_text_x, infamoustaunt_spray_text_y + 8, vfx_infamous_spray_burst);
        infamoustaunt_spray_text_x = 0;
        infamoustaunt_spray_text_y = 0;
    }
}

if (rof_super_active > 0){
    rof_super_active -= 1;
}

if (has_rune("N") && state != PS_SPAWN){
    if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack == AT_TAUNT)) && (state_cat != SC_HITSTUN && state != PS_TUMBLE && state != PS_RESPAWN && sprite_index != sprite_get("tired")){
        if (rune_N_abyss_opacity < 1){
            rune_N_abyss_opacity = clamp(rune_N_abyss_opacity + 0.2, 0, 1);
        }
    } else {
        if (rune_N_abyss_opacity > 0){
            rune_N_abyss_opacity = clamp(rune_N_abyss_opacity - 0.2, 0, 1);
        }
    }
}

if (sprite_index == sprite_get("tired") && flutterjump_time > 75){
    if (get_gameplay_time()%2 == 0){
        flutterjump_time -= 1;
    }
} else {
    if (flutterjump_time < 100){
        flutterjump_time += 1;
    }
}

if (has_rune("O")){
    if !("airdodge_jump" in self){
        airdodge_jump = false;
    }
    has_airdodge = !airdodge_jump;
    if (state == PS_AIR_DODGE && !airdodge_jump){
        set_state(PS_JUMPSQUAT);
        airdodge_jump = true;
        spawn_base_dust(x, y, "n_wavedash");
        djumps = 0;
        has_walljump = true;
        if (flutterjump > round(flutterjump_max * 0.5) - 2){
            flutterjump = round(flutterjump_max * 0.5) - 2;
        }
    }
    if (!free && state != PS_JUMPSQUAT){
        airdodge_jump = false;
    }
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack != 50){
    fs_cutscene_time = 0;
    fs_target_id = noone;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack != AT_DSPECIAL){
    dspecial_grab_id = noone;
    dspecial_thrown_grab_id = false;
}

if (turned_into_a_goomba){
    if (state != PS_IDLE) && !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT){
        turned_into_a_goomba = false;
        sound_play(asset_get("sfx_shop_close"));
        spawn_hit_fx(x - spr_dir * 4, y - 36, 144);
    }
}

//custom alt
if (instance_exists(asset_get("oTestPlayer"))){
    playtesting_mode = true;
} else {
    playtesting_mode = false;
}

if (get_player_color(player) == alt_starwalker) && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || (attack != AT_TAUNT)){
    sound_stop(sound_get("the_original__starwalker"));
}

if (colorselectmenu){
    colormenutimer += 1;
    custom_color_menu_transitiontimer += 0.5;
    if (right_down && !left_down && custom_color_slot_selected < 6 && colorselectmenu_right_buffer_check < 1){
        custom_color_slot_selected += 1;
        colorselectmenu_right_buffer_check = 10;
        sound_play(asset_get("mfx_move_cursor"));
    }
    if (left_down && !right_down && custom_color_slot_selected > 0 && colorselectmenu_left_buffer_check < 1){
        custom_color_slot_selected -= 1;
        colorselectmenu_left_buffer_check = 10;
        sound_play(asset_get("mfx_move_cursor"));
    }
    if (up_down && !down_down && colorselectmenu_current_hovering_option > 1 && colorselectmenu_up_buffer_check < 1){
        colorselectmenu_current_hovering_option -= 1;
        colorselectmenu_up_buffer_check = 10;
        sound_play(asset_get("mfx_move_cursor"));
    }
    if (down_down && !up_down && colorselectmenu_current_hovering_option < 3 && colorselectmenu_down_buffer_check < 1){
        colorselectmenu_current_hovering_option += 1;
        colorselectmenu_down_buffer_check = 10;
        sound_play(asset_get("mfx_move_cursor"));
    }
    colorselectmenu_left_buffer_check -= 1;
    colorselectmenu_right_buffer_check -= 1;
    colorselectmenu_up_buffer_check -= 1;
    colorselectmenu_down_buffer_check -= 1;
    if (jump_down && !attack_down && colormenutimer%3 == 0){
        if (colorselectmenu_current_hovering_option == 1 && get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected) < 255){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected) + 1, get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) );
        }
        if (colorselectmenu_current_hovering_option == 2 && get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected) < 255){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected) + 1, get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) );
        }
        if (colorselectmenu_current_hovering_option == 3 && get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) < 255){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) + 1 );
        }
    }
    if (attack_down && !jump_down && colormenutimer%2 == 0){
        if (colorselectmenu_current_hovering_option == 1 && get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected) > 0){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected) - 1, get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) );
        }
        if (colorselectmenu_current_hovering_option == 2 && get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected) > 0){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected) - 1, get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) );
        }
        if (colorselectmenu_current_hovering_option == 3 && get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) > 0){
            sound_play(asset_get("mfx_input_back"));
            set_color_profile_slot( alt_custom, custom_color_slot_selected, get_color_profile_slot_r(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_g(get_player_color( player ), custom_color_slot_selected), get_color_profile_slot_b(get_player_color( player ), custom_color_slot_selected) - 1 );
        }
    }
    init_shader();
    user_event(2);
    if (shield_pressed && !colorselectmenu_code_entered){
        colorselectmenu_code = get_string( "Enter your color code here! Codes must be a length of 72, and only consist of numbers. (DO NOT ENTER ANYTHING BUT A CODE, AS THE GAME HAS A SMALL CHANCE TO CRASH.)   Press cancel to reset your response to the code of your current custom colors.        Example code:  000255000000255000000255000000255000000255000000255000000255000000000000", string(colorselectmenu_code_used) );
        if (colorselectmenu_code != "") && (string_length(colorselectmenu_code) == 72){
            colorselectmenu_code_entered = true;
            var colorselectmenu_code_enter_part_a = real(string_char_at(colorselectmenu_code, 1) + string_char_at(colorselectmenu_code, 2) + string_char_at(colorselectmenu_code, 3));
            var colorselectmenu_code_enter_part_b = real(string_char_at(colorselectmenu_code, 4) + string_char_at(colorselectmenu_code, 5) + string_char_at(colorselectmenu_code, 6));
            var colorselectmenu_code_enter_part_c = real(string_char_at(colorselectmenu_code, 7) + string_char_at(colorselectmenu_code, 8) + string_char_at(colorselectmenu_code, 9));
            var colorselectmenu_code_enter_part_d = real(string_char_at(colorselectmenu_code, 10) + string_char_at(colorselectmenu_code, 11) + string_char_at(colorselectmenu_code, 12));
            var colorselectmenu_code_enter_part_e = real(string_char_at(colorselectmenu_code, 13) + string_char_at(colorselectmenu_code, 14) + string_char_at(colorselectmenu_code, 15));
            var colorselectmenu_code_enter_part_f = real(string_char_at(colorselectmenu_code, 16) + string_char_at(colorselectmenu_code, 17) + string_char_at(colorselectmenu_code, 18));
            var colorselectmenu_code_enter_part_g = real(string_char_at(colorselectmenu_code, 19) + string_char_at(colorselectmenu_code, 20) + string_char_at(colorselectmenu_code, 21));
            var colorselectmenu_code_enter_part_h = real(string_char_at(colorselectmenu_code, 22) + string_char_at(colorselectmenu_code, 23) + string_char_at(colorselectmenu_code, 24));
            var colorselectmenu_code_enter_part_i = real(string_char_at(colorselectmenu_code, 25) + string_char_at(colorselectmenu_code, 26) + string_char_at(colorselectmenu_code, 27));
            var colorselectmenu_code_enter_part_j = real(string_char_at(colorselectmenu_code, 28) + string_char_at(colorselectmenu_code, 29) + string_char_at(colorselectmenu_code, 30));
            var colorselectmenu_code_enter_part_k = real(string_char_at(colorselectmenu_code, 31) + string_char_at(colorselectmenu_code, 32) + string_char_at(colorselectmenu_code, 33));
            var colorselectmenu_code_enter_part_l = real(string_char_at(colorselectmenu_code, 34) + string_char_at(colorselectmenu_code, 35) + string_char_at(colorselectmenu_code, 36));
            var colorselectmenu_code_enter_part_m = real(string_char_at(colorselectmenu_code, 37) + string_char_at(colorselectmenu_code, 38) + string_char_at(colorselectmenu_code, 39));
            var colorselectmenu_code_enter_part_n = real(string_char_at(colorselectmenu_code, 40) + string_char_at(colorselectmenu_code, 41) + string_char_at(colorselectmenu_code, 42));
            var colorselectmenu_code_enter_part_o = real(string_char_at(colorselectmenu_code, 43) + string_char_at(colorselectmenu_code, 44) + string_char_at(colorselectmenu_code, 45));
            var colorselectmenu_code_enter_part_p = real(string_char_at(colorselectmenu_code, 46) + string_char_at(colorselectmenu_code, 47) + string_char_at(colorselectmenu_code, 48));
            var colorselectmenu_code_enter_part_q = real(string_char_at(colorselectmenu_code, 49) + string_char_at(colorselectmenu_code, 50) + string_char_at(colorselectmenu_code, 51));
            var colorselectmenu_code_enter_part_r = real(string_char_at(colorselectmenu_code, 52) + string_char_at(colorselectmenu_code, 53) + string_char_at(colorselectmenu_code, 54));
            var colorselectmenu_code_enter_part_s = real(string_char_at(colorselectmenu_code, 55) + string_char_at(colorselectmenu_code, 56) + string_char_at(colorselectmenu_code, 57));
            var colorselectmenu_code_enter_part_t = real(string_char_at(colorselectmenu_code, 58) + string_char_at(colorselectmenu_code, 59) + string_char_at(colorselectmenu_code, 60));
            var colorselectmenu_code_enter_part_u = real(string_char_at(colorselectmenu_code, 61) + string_char_at(colorselectmenu_code, 62) + string_char_at(colorselectmenu_code, 63));
            var colorselectmenu_code_enter_part_v = real(string_char_at(colorselectmenu_code, 64) + string_char_at(colorselectmenu_code, 65) + string_char_at(colorselectmenu_code, 66));
            var colorselectmenu_code_enter_part_w = real(string_char_at(colorselectmenu_code, 67) + string_char_at(colorselectmenu_code, 68) + string_char_at(colorselectmenu_code, 69));
            var colorselectmenu_code_enter_part_x = real(string_char_at(colorselectmenu_code, 70) + string_char_at(colorselectmenu_code, 71) + string_char_at(colorselectmenu_code, 72));
            set_color_profile_slot( alt_custom, 0, colorselectmenu_code_enter_part_a, colorselectmenu_code_enter_part_b, colorselectmenu_code_enter_part_c );
            set_color_profile_slot( alt_custom, 1, colorselectmenu_code_enter_part_d, colorselectmenu_code_enter_part_e, colorselectmenu_code_enter_part_f );
            set_color_profile_slot( alt_custom, 2, colorselectmenu_code_enter_part_g, colorselectmenu_code_enter_part_h, colorselectmenu_code_enter_part_i );
            set_color_profile_slot( alt_custom, 3, colorselectmenu_code_enter_part_j, colorselectmenu_code_enter_part_k, colorselectmenu_code_enter_part_l );
            set_color_profile_slot( alt_custom, 4, colorselectmenu_code_enter_part_m, colorselectmenu_code_enter_part_n, colorselectmenu_code_enter_part_o );
            set_color_profile_slot( alt_custom, 5, colorselectmenu_code_enter_part_p, colorselectmenu_code_enter_part_q, colorselectmenu_code_enter_part_r );
            set_color_profile_slot( alt_custom, 6, colorselectmenu_code_enter_part_s, colorselectmenu_code_enter_part_t, colorselectmenu_code_enter_part_u );
            set_color_profile_slot( alt_custom, 7, colorselectmenu_code_enter_part_v, colorselectmenu_code_enter_part_w, colorselectmenu_code_enter_part_x );
        }
    }
} else {
    colorselectmenu_code_entered = false;
    custom_color_menu_transitiontimer = -2;
}

if (state == PS_TUMBLE && jump_down && flutterjump < flutterjump_max){
    set_state(PS_IDLE_AIR);
}

if (get_player_color(player) == alt_garcello){
    set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("utilt_proj_fading"));
} else {
    if (get_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE) == sprite_get("utilt_proj_fading")){
        set_hitbox_value(AT_UTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("utilt_proj"));
    }
}

if (get_player_color(player) == 0){
    if (get_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE) == sprite_get("dspecial_proj_alt")){
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
    }
} else {
    if (get_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE) == sprite_get("dspecial_proj")){
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj_alt"));
    }
}

//Munophone Cheats (and djump stuff / rune G)
rainbow_color = phone_cheats[cheat_skittles] ? make_color_hsv(get_gameplay_time() % 256 + 1, 100, 100) : make_color_rgb(
	get_color_profile_slot_r(get_player_color(player), 0),
	get_color_profile_slot_g(get_player_color(player), 0),
	get_color_profile_slot_b(get_player_color(player), 0),
	);
set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))

max_djumps = phone_cheats[cheat_more_djumps];
if (flutterjump >= flutterjump_max){
    max_djumps += 1;
}
/*
if (state == PS_TUMBLE && djumps >= max_djumps && flutterjump < flutterjump_max){
    djumps = max_djumps - 1;
}
*/

if (has_rune("G")){
    leave_ground_max = 7;
    max_jump_hsp = 7;
    air_max_speed = 7;
    jump_change = 3;
    air_accel = .5;
    max_djumps += 1;
}

if (spr_dir == 0) spr_dir = 1;
spr_dir = phone_cheats[cheat_widebert] * sign(spr_dir);

if phone_cheats[cheat_recoil] with pHitBox if player_id == other can_hit_self = 1;

if (phone_cheats[cheat_glide_infinite] == 1){
    flutterjump = 0;
}

if (phone_cheats[cheat_glide_infinite] == 2){
    flutterjump = flutterjump_max;
}

if (phone_cheats[cheat_fstrong_misfire] == 1){
    if (!misfire_charged && !has_rune("F")){
        misfire_charged = true;
        sound_play(sound_get("stat_up"));
    }
}

if (phone_cheats[cheat_fstrong_misfire] == 2){
    if (misfire_charged && !has_rune("F")){
        misfire_charged = false;
        sound_play(sound_get("stat_up"));
    }
}

//Base Game Dust effect spawning script by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;