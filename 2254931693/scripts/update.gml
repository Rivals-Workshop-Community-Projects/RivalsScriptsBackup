//update

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
}

if (dspecialhitcount = 0){
    move_cooldown[AT_DSPECIAL] = 0;
    dspecialbounceeffect = sound_get("dspecialbounce");
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, dspecialbounceeffect);
}

if (dspecialhitcount = 1){
    if (!has_rune("I")){
    move_cooldown[AT_DSPECIAL] = 9999;
}    
    dspecialbounceeffect = sound_get("dspecialbounce2");
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, dspecialbounceeffect);
}

if (dspecialhitcount = 2){
    dspecialbounceeffect = sound_get("dspecialbounce3");
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, dspecialbounceeffect);
}

if (dspecialhitcount = 3){
    if (has_rune("I")){
    move_cooldown[AT_DSPECIAL] = 9999;
}
    dspecialbounceeffect = sound_get("dspecialbounce4");
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, dspecialbounceeffect);
}


if (attack != AT_DSPECIAL){
    if (dspecialhitcount = 0){
    move_cooldown[AT_DSPECIAL] = 0;
    }
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
}

if (state = PS_IDLE || state = PS_IDLE_AIR || state = PS_DOUBLE_JUMP || state = PS_AIR_DODGE){
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
    if (has_rune("I") && dspecialhitcount != 3){
    move_cooldown[AT_DSPECIAL] = 0;
    }

    if (!has_rune("I") && dspecialhitcount != 1){
    move_cooldown[AT_DSPECIAL] = 0;
    }    
}

if (free = 0){
    dspecialhitcount = 0;
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
}

if (state = PS_WAVELAND){
    sound_stop(air_dodge_sound);
}



if (state = PS_HITSTUN && attack == AT_NSPECIAL){
    air_max_speed = 5.5;
    max_fall = 11;
}

if (state = PS_HITSTUN && attack == AT_DSPECIAL){
    if (free = 0){
    dspecialhitcount = 0;
    }
    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -16);
    move_cooldown[AT_DSPECIAL] = 0;
}



if (spikevolleytimer = 10){
    shake_camera(3, 8);

    sound_play(asset_get("sfx_blow_heavy2"))
    sound_play(sound_get("nspecialspikeballvolley"))
}

if (spikevolleytimer > 0){
    spikevolleytimer = spikevolleytimer - 1;
}

if (spikevolleytimer = 0){
    spikevolley = 0;
}

if (spikebouncecool != 0){
    spikebouncecool = spikebouncecool - 1;
}









if (free = 0){
nair_boost = 0
}

if(state = PS_DASH_TURN && state_timer = 0){
    sound_play(sound_get("dashturnskid"))
}

if (leap_cooldown > 0){
leap_cooldown = leap_cooldown - 1;
}

if get_player_color(player) == 7 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}





//Fast utilt rune
if (has_rune("D")){
    set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
    set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 7);
    set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 6);
    set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 4);
    set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
}


//FAIR downward angle rune
if (has_rune("F")){
    set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 280);
}

//BAIR endlag rune
if (has_rune ("C")){
    set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
}


//extra jumps rune
if (has_rune("O")){
    max_djumps = 2;
}

//FAST jab rune
if (has_rune("G")){
    set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
    set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
    set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 1.5);
    set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1.5);
    set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
}



with oPlayer{
    if url != other.url{
        if url == 2310551263{
            other.family = 1
        }
    }
}

if ((get_gameplay_time() < 127 && shield_down) || family = 1){
    set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("family"));
}

//character/stage support


user_event(14);

