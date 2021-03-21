//update
user_event(14);

set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, (dash_speed + 4));

warningflashtimer = warningflashtimer + 1;

if (warningflashtimer = 6){
    warningflashtimer = 0;
    warningflash = warningflash + 2;
}

if (warningflash = 16){
    warningflash = 0;
}



if (window_timer = 1 && window = 1 && attack = AT_USPECIAL && (state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND)){
    jetpack_start = 1;
    duckjetpackSFX = sound_play( sound_get("duck_jetpack"));
}

if (attack != AT_USPECIAL || (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)){
    jetpack_start = 0;
}

if (jetpack_start = 0){
sound_stop(duckjetpackSFX);
}


if (wagnus_charges < 3){
    wagnus_charge_time = wagnus_charge_time + 0.0035;
}

if (wagnus_charge_time > 1){
    wagnus_charge_time = 1;
}

if (wagnus_charges = 0 && wagnus_warning = 0){
    sound_play(sound_get("duck_wagnusalert"));
    wagnus_warning = 1;
}


if (wagnus_charges > 0){
    wagnus_warning = 0;
}

if (wagnus_charge_time = 1){
    sound_play(sound_get("duck_wagnusrecharge"));
    wagnus_charge_time = 0;
    wagnus_charges = wagnus_charges + 1;
}


if get_player_color(player) == 9 {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
set_character_color_shading( 6, 0 );
}

if (taunt_down && quack_open = 0 && (state = PS_WALK || state = PS_CROUCH || state = PS_WALK_TURN || state = PS_IDLE || state = PS_IDLE_AIR || state = PS_FIRST_JUMP || state = PS_DOUBLE_JUMP || state = PS_DASH || state = PS_DASH_STOP || state = PS_DASH_START || state = PS_DASH_TURN)){
    sound_play(sound_get("duck_quack"));
    quack_open = 1;
}

if (!taunt_down){
    quack_open = 0;
}

//speed tv
if (tv_stat = 1){

set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));

jump_speed = 13;
short_hop_speed = 6;
djump_speed = 10;
max_djumps = 1;    
    
walk_speed = 5;
initial_dash_speed = 11;
dash_anim_speed = .375;
dash_speed = 10;
max_jump_hsp = 10;
air_max_speed = 9.5;
}

//jump tv
if (tv_stat = -1){

set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialjump"));    
    
jump_speed = 14.5;
short_hop_speed = 6;
djump_speed = 11;
max_djumps = 3;

walk_speed = 3.25;
initial_dash_speed = 7;
dash_anim_speed = .3;
dash_speed = 6.25;
max_jump_hsp = 7;
air_max_speed = 6;
}



move_cooldown[AT_TAUNT] = 99999;

// hide indicators before spawn

set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 5558);

if (player = 1 && get_gameplay_time() < 30 ){
draw_indicator = false;
visible = false;
}

if (player = 2 && get_gameplay_time() < 50 ){
draw_indicator = false;
visible = false;
}

if (player = 3 && get_gameplay_time() < 70 ){
draw_indicator = false;
visible = false;
}

if (player = 4 && get_gameplay_time() < 90 ){
draw_indicator = false;
visible = false;
}

// spawn sounds

if (player = 1 && get_gameplay_time() = 30){
    sound_play(sound_get("duck_spawn"));
    visible = true;
    spawn_hit_fx( x, y - 28, duckspawneffect );
}

if (player = 2 && get_gameplay_time() = 50){
    sound_play(sound_get("duck_spawn"));
        visible = true;
    spawn_hit_fx( x, y - 28, duckspawneffect );        
}

if (player = 3 && get_gameplay_time() = 70){
    sound_play(sound_get("duck_spawn"));
        visible = true;
    spawn_hit_fx( x, y - 28, duckspawneffect );        
}

if (player = 4 && get_gameplay_time() = 90){
    sound_play(sound_get("duck_spawn"));
        visible = true;
    spawn_hit_fx( x, y - 28, duckspawneffect );        
}