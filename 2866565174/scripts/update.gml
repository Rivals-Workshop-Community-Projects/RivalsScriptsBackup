if state == PS_PARRY && state_timer == 4{
    var parrysmoke = spawn_hit_fx(x + (20 * spr_dir), y, sc_parrysmoke);
    parrysmoke.depth = -30;
}

if (state == PS_IDLE_AIR || state == PS_DOUBLE_JUMP) && jump_down == 1 && djumps == 1 && vsp >= 0 && sc_paraglider_meter == 100{
    set_attack(AT_EXTRA_1);
}
else if !free{
    sc_paraglider_meter = 100;
}

if sc_hud_coins < sc_coins{
    sc_hud_coins += 1;
}
else if sc_hud_coins > sc_coins{
    sc_hud_coins -= 1;
}

if sc_coins < 8 + (sc_gadget * 2){
	move_cooldown[AT_DSPECIAL] = 2;
}

with oPlayer{
    if id != other{
        if sc_coindrop[sc_coinowner_pointer] == other.id && sc_coindropped != get_gameplay_time(){
            instance_create(x, round(y - (char_height / 2)), other.sc_coinarticle);
            sc_coindrop[sc_coinowner_pointer] = 0;
            sc_coinowner_pointer = (sc_coinowner_pointer + 1) % 10;
            sc_coindropped = get_gameplay_time();
        }
        if sc_coinloss > 0{
            sc_coins -= 1;
            sc_coinloss -= 1;
        }
    }
    if state == PS_RESPAWN || state == PS_DEAD{
        sc_coins = 0;
    }
}

if sc_voltstate == 1{
    set_hitbox_value(AT_JAB, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UTILT, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DAIR, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
    set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 11);
    set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 6);
    set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 6);
    set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
    set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
    set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 6);
	outline_color = [91 - sc_voltstate_glow, 227 - sc_voltstate_glow, 235 - sc_voltstate_glow];
	move_cooldown[AT_NSPECIAL] = 150;
}
else{
    reset_hitbox_value(AT_JAB, 2, HG_EFFECT);
    reset_hitbox_value(AT_UTILT, 3, HG_EFFECT);
    reset_hitbox_value(AT_DTILT, 1, HG_EFFECT);
    reset_hitbox_value(AT_DATTACK, 4, HG_EFFECT);
    reset_hitbox_value(AT_NAIR, 3, HG_EFFECT);
    reset_hitbox_value(AT_FAIR, 1, HG_EFFECT);
    reset_hitbox_value(AT_BAIR, 2, HG_EFFECT);
    reset_hitbox_value(AT_UAIR, 2, HG_EFFECT);
    reset_hitbox_value(AT_DAIR, 5, HG_EFFECT);
    reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
    reset_hitbox_value(AT_UTILT, 3, HG_DAMAGE);
    reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
    reset_hitbox_value(AT_DATTACK, 4, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 3, HG_DAMAGE);
    reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
    reset_hitbox_value(AT_DAIR, 5, HG_DAMAGE);
    outline_color = [0, 0, 0];
}

sc_voltstate_glow = 1 * (get_gameplay_time() % 120) >= 60? get_gameplay_time() % 60:(get_gameplay_time() % 60) * -1 + (get_gameplay_time() % 60 == 60? 0:60);
init_shader();

if !instance_exists(clock_exists){
	sound_stop(sound_get("clock"));
}
if !instance_exists(musicbox_exists){
	sound_stop(sound_get("box"));
}

if down_down && state != PS_RESPAWN{
    move_cooldown[AT_TAUNT] = 2;
    if taunt_pressed && !(attack != AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
        sc_gadget = (sc_gadget + 1) % 3;
        sound_play(asset_get("mfx_coin"));
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
}

if get_match_setting(SET_PRACTICE) && up_down{
    move_cooldown[AT_TAUNT] = 2;
    if taunt_pressed{
        sc_coins = 20;
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
}