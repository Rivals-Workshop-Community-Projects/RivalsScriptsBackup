//update

with(pHitBox){
    if(player_id == other.id && (attack == other.AT_FSPECIAL_G || attack == other.AT_DSPECIAL_G 
    || attack == other.AT_USPECIAL_G || (attack == AT_FSPECIAL && hbox_num == 1))){
        if other.state_cat != SC_HITSTUN {
            switch other.state {
                case PS_AIR_DODGE:
                case PS_WALL_TECH:
                case PS_PRATFALL:
                case PS_PRATLAND:
                case PS_JUMPSQUAT:
                case PS_TECH_GROUND:
                case PS_TECH_BACKWARD:
                case PS_TECH_FORWARD:
                case PS_ROLL_FORWARD:
                case PS_ROLL_BACKWARD:
                case PS_PARRY:
                case PS_PARRY_START:
                break;
                //allow use of pistol specials while grenade is in the air
                case PS_ATTACK_AIR:
                case PS_ATTACK_GROUND:
                    if (other.attack != 24 && other.attack != 25 && other.attack != 30 && other.attack != AT_NSPECIAL) {
                        break;
                    }
                default:
                //Shoot grenade if grenade is in air and special is pressed
                if(other.special_pressed &&  other.joy_pad_idle && hitbox_timer > 3 && attack != AT_FSPECIAL && !destroyed){
                    //work out angle between player and grenade
                    other.grenade_angle = darctan2((y - (other.y - 30)),(x - other.x));
            
                    //convert angle to number corresponding to correct animation window 
                    other.grenade_angle += -90;
                    if(other.grenade_angle < -180){
                        other.grenade_angle = -450 - other.grenade_angle;
                        other.grenade_angle = abs(other.grenade_angle) - 90;
                    }
                    other.grenade_angle = round(other.grenade_angle/45);
            
                    //start animation
                    if(sign(other.grenade_angle) == other.spr_dir){
                        other.spr_dir *= -1;
                    }
                    with other {
                        window = abs(grenade_angle) + 1;
                        window_timer = 0;
                        attack = AT_NSPECIAL_SHOOT;
                        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    }
                    sound_play(sound_get("pistol"));
            
                    //destroy grenade
                    var expl = create_hitbox(other.AT_EXPLOSION, 1, round(x)+ other.ex_x_off_air * (other.spr_dir * -1), y + other.ex_y_off_air);
                    if(!other.runeH && !other.h_rune){
                        expl.player = 0;
                    } 
                    spawn_hit_fx(round(x) - (spr_dir * 2), y - 24, other.air_explosion);
                    sound_play(sound_get("explosion1"));
                    destroyed = true;
                    if (other.runeL || other.l_rune) {
                        other.spawn_cluster = true;
                        other.spawnX = x;
                        other.spawnY = y;
                    }
                }
                //destroy grenades if they leave the blastzones
                if ((x>room_width || x<0 || y>room_height) && hitbox_timer > 5) {
                    destroyed = true;
                }
                break;
            }
        }
        //destroy grenade if touching ground
        if(!free && !destroyed && !other.runeE && !other.e_rune){
            var expl = create_hitbox(other.AT_EXPLOSION, 1, round(x) + other.ex_x_off_ground * other.spr_dir, y + other.ex_y_off_ground);
            if(!other.runeH && !other.h_rune){
                expl.player = 0;
            }
            spawn_hit_fx(round(x), y, other.ground_explosion);
            sound_play(sound_get("explosion1"));
            destroyed = true;
            if ((other.runeL || other.l_rune) && attack != AT_FSPECIAL) {
                other.spawn_cluster = true;
                other.spawnX = x;
                other.spawnY = y;
            }
        }
    }
    //remove cover hitbox
    else if(player_id == other.id && (attack == AT_FSPECIAL && hbox_num == 3)){
        if(other.sprite_index != sprite_get("fspecial") || other.window > 3){
            instance_destroy(self);
        }       
    }
    //make sure ftilt_g and bair_g flags are reset
    else if(player_id == other.id && attack == other.AT_EXPLOSION){
        other.trigger = false;
    }
}

//parry handling in special cases
if(handle_parry){
    if(!free){
        set_state(PS_PRATLAND);
    }
    else{
        set_state(PS_PRATFALL);
    }
    was_parried = true;
    parry_lag = 40;
    handle_parry = false;
}

//count down grab ftile
if(grab_time > 0){
    --grab_time;
}
else{
    my_grab_id = noone;
}


//spawn extra grenades for related abyss rune
if (spawn_cluster){
    spawn_grenades(spawnX, spawnY, get_hitbox_value(AT_EXPLOSION, 1, HG_WIDTH)/2);
    spawn_cluster = false;
}

//cooldown for grenades thrown from cover
if(cover_grenade_timer < COVER_GRENADE_COOLDOWN){
    cover_grenade_timer++;
}

//flash white when changing stance
if(spawn_dust){
    flash_timer = 1;
    if(has_grenade){
        sound_play(sound_get("out"));
    }
    else{
        sound_play(sound_get("in"));
    }
}
if(flash_timer <= FLASH_TIME){
    outline_color = [255/flash_timer, 255/flash_timer, 255/flash_timer];
    ++flash_timer;
}
else{
    outline_color = [0, 0, 0];
}
init_shader();

//resetting flags and counters
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    taunt = false;
}
if(taunt_pressed && !has_grenade){
    taunt = !taunt;
}
if(state != PS_ATTACK_AIR){
    fair_g_hit = false;
}
if(!free){
    if(runeI || has_rune("I")){
        nairs = max_nairs;
    }
    if(runeO || has_rune("O")){
        bomb_avail = true;
    }
}

//intro animation timers
if (introTimer2 < 3) {
    introTimer2 += 1;
} else {
    introTimer2 = 0;
    introTimer++;
}
if (introTimer < 27) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}

//trap queueing 
for(i = 0; i < num_traps; ++i){
    if(instance_exists(traps[i]) && (traps[i].blown || traps[i].broken)){
        traps[i] = noone;
    }
    if(!instance_exists(traps[i])){
        for(j = i + 1; j <= num_traps; ++j){
            traps[j - 1] = traps[j];
            traps[j] = noone;
        }
    }
}

/*//manage active fx 
for(i = 0; i < active_fx_size; ++i){
    //increment variables of currently active fx
    if(active_fx[i, 0] != noone && !hitpause){
        //move fx in direction of momentum
        active_fx[i, 1] += active_fx[i, 3]
        active_fx[i, 2] += active_fx[i, 4]
        //reduce momentum
        active_fx[i, 3] *= 0.85
        active_fx[i, 4] *= 0.85
        //increase frame timer
        active_fx[i, 5] += 0.2;
        //deactivate if frame timer exceeds max frames
        if(active_fx[i, 5] >= active_fx[i, 6]){
            active_fx[i, 0] = noone;
        }
    }
    //otherwise add fx to empty slots if needed
    else if(gunshot_fx != noone){
        active_fx[i, 0] = gunshot_fx; 
        active_fx[i, 1] = x;
        active_fx[i, 2] = y;
        active_fx[i, 3] = hsp;
        active_fx[i, 4] = vsp;
        active_fx[i, 5] = 0;
        switch (gunshot_fx){
            case "dair":
                active_fx[i, 6] = 4;
                break;
            case "bair":
                active_fx[i, 6] = 4;
                break;
            case "fair1":
                active_fx[i, 6] = 3;
                break;
            case "fair2":
                active_fx[i, 6] = 3;
                break;
            case "fair3":
                active_fx[i, 6] = 4;
                break;
            default: 
                break;
        }
        gunshot_fx = noone;
    }
}*/


//Abyss rune updates
if (runesUpdated || get_gameplay_time() == 1){
    if (runeA || has_rune("A")) {
        //fstrong
        set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        
        //dstrong
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        
        //ustrong
        set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        
        //dstrong_g
        set_window_value(AT_DSTRONG_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG_G, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        set_window_value(AT_DSTRONG_G, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG_G, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        
        //ustrong_g
        set_window_value(AT_USTRONG_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_USTRONG_G, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
        set_window_value(AT_USTRONG_G, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_USTRONG_G, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
    }
    else {
        //fstrong
        set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        
        //dstrong
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        
        //ustrong
        set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        
        //dstrong_g
        set_window_value(AT_DSTRONG_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        set_window_value(AT_DSTRONG_G, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        
        //ustrong_g
        set_window_value(AT_USTRONG_G, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
        set_window_value(AT_USTRONG_G, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    }
    
    if (runeC || has_rune("C")) {
        set_window_value(AT_DATTACK_G, 1, AG_WINDOW_HSPEED, 7);
    }
    else {
        set_window_value(AT_DATTACK_G, 1, AG_WINDOW_HSPEED, hsp);
    }
    
    if (runeD || has_rune("D")) {
        set_hitbox_value(AT_JAB, 1, HG_ANGLE, 270);
    }
    else {
        set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
    }
    
    if(runeE || has_rune("E")) {
        set_hitbox_value(AT_FSPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_DSPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
        e_rune = true;
    }
    else {
        set_hitbox_value(AT_FSPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_DSPECIAL_G, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
        e_rune = false;
    }
    
    if (runeF || has_rune("F")) {
        set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -7);
        set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
    }
    else {
        reset_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED);
        reset_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED_TYPE);
    }
    
    if (runeG || has_rune("G")) {
        num_traps = 2;
    }
    else {
        num_traps = 1;
    }
    
    if(has_rune("H")){
        h_rune = true;
    }
    else{
        h_rune = false;
    }
    
    if(has_rune("L")){
        l_rune = true;
    }
    else{
        l_rune = false;
    }
}

if ((runeM || has_rune("M")) && (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && !m_cooldown){
    if (window == 1 && window_timer == 9){
        var expl = create_hitbox(AT_EXPLOSION, 1, x, y - 28);
        if(!runeH){
            //expl.player = 0;
        }
        spawn_hit_fx(x, y - 28, ground_explosion);
        sound_play(sound_get("explosion1"));
        m_cooldown = 240;
    }
}

if (m_cooldown){
    m_cooldown--
}

//Kirby
if (swallowed) {
    swallowed = 0;
    var ability_spr = sprite_get("kirby");
    var ability_hurt = sprite_get("kirby_hurt");
    var ability_icon = sprite_get("kirbicon");
    var kirb_sound = sound_get("kirbyattack");
    with enemykirby {
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, kirb_sound);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 36);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 5);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 13);
        
        set_num_hitboxes(AT_EXTRA_3, 2);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 51);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -24);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 77);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 54);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 11);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .35);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 13);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
        
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 16);
        set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 4);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 92);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -17);
        set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 39);
        set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
        set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 9);
        set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
        set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .25);
        set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .35);
        set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 13);
        set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
        set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
        
        newicon = ability_icon
    }
}

//Trummel and Alto
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 8;
    trummelcodecsprite1 = sprite_get("TnA1");
    trummelcodecsprite2 = sprite_get("TnA2");
    var page = 0;

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Oh wow. It's a Para -";
    trummelcodecline[page,2] = "assault Grenadier!";
    trummelcodecline[page,3] = "These guys are very";
    trummelcodecline[page,4] = "versatile.";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "His main mechanic is";
    trummelcodecline[page,2] = "switching between...";
    trummelcodecline[page,3] = "Bah, who even reads";
    trummelcodecline[page,4] = "these?";
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "It's not like a few";
    trummelcodecline[page,2] = "codec pages are good for";
    trummelcodecline[page,3] = "anything more than a bit";
    trummelcodecline[page,4] = "of light comedy.";
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "If you want real info,";
    trummelcodecline[page,2] = "check his steam page! It";
    trummelcodecline[page,3] = "has cool images and gifs";
    trummelcodecline[page,4] = "for all his moves.";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "There's even a totally";
    trummelcodecline[page,2] = "legit and cool animated";
    trummelcodecline[page,3] = "character trailer!";
    trummelcodecline[page,4] = "...";
    page++;
    
    //Page 6
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "youre jealous";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    
    trummelcodecline[page,1] = "NO! anyway...";
    trummelcodecline[page,2] = "I guess this codec COULD";
    trummelcodecline[page,3] = "actually be useful if I";
    trummelcodecline[page,4] = "gave some unknown te-.";
    page++;
    
    //Page 8
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;
    
    trummelcodecline[page,1] = "*inhales*";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 9
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;
    
    trummelcodecline[page,1] = "W-WE WILL N-NEVER";
    trummelcodecline[page,2] = "BE FOOLED AGAIN!";
    trummelcodecline[page,3] = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
    trummelcodecline[page,4] = "";
    page++;
}

#define spawn_grenades(xPos, yPos, radius)
angle1 = random_func(0, 90, true);
angle2 = random_func(1, 90, true) + 90;
launch_speed = 5;

x1 = radius * dcos(angle1) * spr_dir;
y1 = radius * dsin(angle1);

x2 = radius * dcos(angle2) * spr_dir;
y2 = radius * dsin(angle2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, launch_speed * -dsin(angle1));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, launch_speed * dcos(angle1));
create_hitbox(AT_FSPECIAL, 1, round(xPos + x1), round(yPos - y1));

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, launch_speed * -dsin(angle2));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, launch_speed * dcos(angle2));
create_hitbox(AT_FSPECIAL, 1, round(xPos + x2), round(yPos - y2));