//
if intro_timer < 108{
    intro_timer += 1
    /*if state != PS_CROUCH{
        set_state = PS_CROUCH
    }*/
}

if get_player_color(player) == 1{
    shiny_timer +=1
    //print("dog")
    //print(shiny_timer)
}
if shiny_timer >= 25{
    shiny_timer = 0
    shiny_x = random_func(0, 49, true)
    shiny_y = random_func(1, 60, true)
}

if fakeout == 0{
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 64)
}
if fakeout == 1{
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 48)
}

if (attack_pressed or up_strong_pressed or down_strong_pressed or left_strong_pressed or right_strong_pressed or special_pressed) and fakeout = 0 and attack != AT_FSPECIAL and state != PS_SPAWN{
    fakeout = 1
}
var time_stop = 0
if attack == AT_DSPECIAL and window == 4{
    time_stop = 1
}
else{
    time_stop = 0
}
if stock_timer > 0 and time_stop == 0{
    stock_timer -= 1
}

if stock_timer == 0{
    if stock_held == 1{
        set_player_stocks( stock_owner, get_player_stocks( stock_owner ) + 1 );
        stock_owner = noone
        stock_owner_id = noone
        stock_held = 0
        //hit_player_object.player.stock_stolen = 0
        sound_play(asset_get("mfx_coin"))
    }
    if stock_bm = 1{
        stock_bm = 0
        sound_play(asset_get("mfx_coin"))
    }
}

if (free == false or attack == AT_FSPECIAL and window == 3 and window_timer == 23) and move_cooldown[AT_USPECIAL] != 0 or state == PS_LAND or state == PS_LANDING_LAG{
    move_cooldown[AT_USPECIAL] = 0
    
}
if free == false{
    uspec_limit = 0
}

if (state == PS_DOUBLE_JUMP or state == PS_WALL_JUMP or state == PS_AIR_DODGE or state == PS_HITSTUN) and uspec_limit != 2 and move_cooldown[AT_USPECIAL] > 0 {
    move_cooldown[AT_USPECIAL] = 0
}

if stock_owner != noone and stock_owner_id.state == PS_RESPAWN and stock_held == 1{
    stock_owner = noone
    stock_owner_id = noone
    stock_held = 0
    stock_timer = 0
}

if attack == AT_FSTRONG and window == 3 and window_timer == 1{
    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("shadow2"));
    assurance_active = 0
}

if assurance_player != noone and assurance_player.last_hit > 0 and assurance_player.state != PS_HITSTUN{
    assurance_player.last_hit -= 1
}

if attack == AT_BAIR and window == 3 and window_timer == 1{
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
    set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 130);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .5);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("payback"));
    set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 151);
}
//print(assurance_player.last_hit)

if meowth_hp <= 0{
    meowth_hp = 0
    meowth_down = 1
}
else{
    meowth_down = 0
}

if meowth_timer < 600{
    meowth_timer += 1
}

if meowth_timer == 600 and meowth_hp == 0 and meowth_active == false{
    meowth_hp = 20
    meowth_down = 0
}

if oshawott_hp <= 0{
    oshawott_hp = 0
    oshawott_down = 1
}
else{
    oshawott_down = 0
}

if oshawott_timer < 600{
    oshawott_timer += 1
}

if oshawott_timer == 600 and oshawott_hp == 0 and oshawott_active == false{
    oshawott_hp = 20
}

if attack == AT_UTILT and window == 3 and window_timer <= 2 and utilt_parried == 1{
    vsp = 0
    state = PS_PRATFALL
    destroy_hitboxes();
    utilt_parried = 0
}

if attack == AT_USPECIAL and uspec_limit == 2 and window == 3 and window_timer == 19{
   state = PS_PRATFALL
   destroy_hitboxes();
}
if attack == AT_USPECIAL and uspec_limit < 2{
    set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
}

if killarticles = 1 and state != PS_RESPAWN{
    killarticles = 0
}


/*var parry_sound = 0

if state == PS_PARRY and state_timer == 1 and parry_sound = 0{
    sound_play(sound_get("fake_tears"))
    parry_sound = 1
}

if state == PS_PARRY_START{
    parry_sound = 0
}*/