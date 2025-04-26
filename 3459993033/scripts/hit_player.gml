//hit player
var hbox = my_hitboxID.hbox_num;

if instance_exists(toadie_obj){
    var index = array_find_index(toadie_obj.grabbed_players, hit_player_obj);
    if index != -1 {
        var t = []
        for (var i = 0; i < array_length(toadie_obj.grabbed_players); i++) {
            if index == i continue;
            array_push(t, toadie_obj.grabbed_players[i])
        }
        toadie_obj.grabbed_players = t
    }
}

switch (my_hitboxID.attack){
    case AT_USTRONG:
        if hbox != 2{
            sound_play(sound_get("smash_magic_med"), false, noone, 0.7, 1);
        }
        else {
            sound_play(sound_get("smash_magic_heavy"), false, noone, 0.7);
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1);
        }
    break;
    case AT_DSPECIAL:
        if hbox == 4{
            sound_play(asset_get("sfx_forsburn_combust"), false, noone, 0.8, 1.4);
            sound_play(sound_get("fire_hit"));
        }
        if hbox == 2 {
            sound_play(sound_get("koopa_hit"))
            ds_list_add(kamek_particles_obj.particles, {
                sprite: my_hitboxID.sprite_index,
                x: my_hitboxID.x,
                y: my_hitboxID.y,
                hsp: my_hitboxID.hsp/2,
                vsp: -3,
                xaccel: 0,
                yaccel: 0.4,
                angle: 0,
                torque: 6,
                lifetime: 300,
                xscale: 1,
                yscale: 1
            })
            
            ds_list_add(kamek_particles_obj.particles, {
                sprite: sprite_get("twohundred"),
                x: lerp(my_hitboxID.x, hit_player_obj.x, 0.5),
                y: lerp(my_hitboxID.y, hit_player_obj.y - floor(hit_player_obj.char_height/2), 0.5) + 20,
                hsp: 0,
                vsp: -12,
                xaccel: 0,
                yaccel: 1,
                angle: 0,
                torque: 0,
                lifetime: 40,
                vspmax:0,
                xscale: 1,
                yscale: 1
            })
        }
        else if hbox == 3 {
            my_hitboxID.detonating = true;
            my_hitboxID.vsp = -10;
            my_hitboxID.hsp = 0;
        }
        
        if hbox != 1 break
        if !hit_player_obj.super_armor {
            array_push(toadie_obj.grabbed_players, hit_player_obj)
            toadie_obj.depth = hit_player_obj.depth + 1
            toadie_obj.state = PS_ATTACK_AIR;
            toadie_obj.state_timer = 0;
            toadie_obj.lock_state = true 
            toadie_obj.window = 0;
            toadie_obj.sprite_index = toadie_animations[? toadie_obj.state].sprite;
            toadie_obj.image_index= 0;
        }
    break;
    case AT_UAIR:
        if hbox != 5 {
            sound_play(sound_get("smash_magic_light"), false, noone, 0.7, 1);
        }
        else {
            sound_play(sound_get("smash_magic_heavy"), false, noone, 0.7, 1);
        }
    break;
    case AT_JAB:
        if (hbox >= 1 && hbox <= 8){
            sound_play(sound_get("smash_magic_light"), false, noone, 0.7, 1);
        } else {
            sound_play(sound_get("smash_magic_heavy"), false, noone, 0.7);
        }
    break;
    case AT_FTILT:
    sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    break;
    case AT_UTILT:
    if (hbox < 6){
        sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
    } else {
        sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    }
    break;
    case AT_DATTACK:
        if (hbox == 3){
            sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
        }
        else {
            sound_play(sound_get("smash_magic_light"), false, noone, 0.7, 1.3);
        }
    break;
    case AT_DTILT:
        if (hbox == 2){
            sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
        }
    break;
    case AT_NAIR:
    if (hbox > 4){
        sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
    } else {
        sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    }
    break;
    case AT_FAIR:
    if (hbox == 3){
        sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.7, 1.5);
        sound_play(sound_get("smash_magic_heavy"), false, noone, 0.7);
        //sound_play(sound_get("stomp_hit"));
    } else {
        sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    }
    break;
    case AT_BAIR:
    if (hbox > 1 && hbox < 5){
        sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
    } else {
        sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    }
    case AT_DAIR:
    if (hbox == 1){
        sound_play(sound_get("smash_magic_heavy"), false, noone, 0.7);
    } else {
        sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
    }
    break;
    case AT_FSTRONG:
        sound_play(sound_get("fire_hit"));
    break;
    case AT_DSTRONG:
        sound_play(asset_get("sfx_leafy_hit1"));
    break;
    case AT_NSPECIAL:
    if (hbox >= 3 && hbox < 5){
        sound_play(sound_get("smash_magic_light"), false, noone, 0.7);
    } if (hbox == 5) {
        sound_play(sound_get("smash_magic_med"), false, noone, 0.7);
    }
    break;
}