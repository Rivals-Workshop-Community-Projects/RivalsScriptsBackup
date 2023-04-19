if attack == AT_NSPECIAL{
    destroyed = place_meeting(x, y + 15, asset_get("par_block"));
    if position_meeting(x, y - 25, orig_player_id) && orig_player_id.attack == AT_NSPECIAL && (orig_player_id.state == PS_ATTACK_AIR || orig_player_id.state == PS_ATTACK_GROUND) && orig_player_id.window == 2{
        with orig_player_id{
            state = free? PS_ATTACK_AIR:PS_ATTACK_GROUND;
            attack = AT_NSPECIAL;
            window = 2;
            window_timer = 20
            sound_play(asset_get("sfx_absa_cloud_crackle"));
            var voltage = spawn_hit_fx(x, y, sc_voltage);
            voltage.depth = -30;
            sc_voltstate = 1;
            init_shader();
        }
        instance_destroy(self);
        exit;
    }
}

if attack == AT_FSPECIAL && hbox_num == 1{
    if place_meeting(x + 10, y - 10, asset_get("par_block")) || place_meeting(x - 10, y - 10, asset_get("par_block")) && hsp >= -0.1 && hsp <= 0.1{
        hsp *= -0.95;
    }
    if hitbox_timer == 45{
        destroyed = true;
    }
    if destroyed{
        var facing = orig_player_id.spr_dir;
        orig_player_id.spr_dir = spr_dir;
        var hat = create_hitbox(AT_FSPECIAL, 2, x - (10 * spr_dir), y - 10);
        hat.spr_dir = spr_dir;
        hat.draw_xscale = spr_dir;
        orig_player_id.spr_dir = facing;
        sound_play(asset_get("sfx_ell_big_missile_fire"));
        instance_destroy(self);
        exit;
    }
}

if attack == AT_DSPECIAL{
    spr_dir = spr_dir;
    switch(hbox_num){
        case 1: case 4: case 8:
            if place_meeting(x + 10, y - 10, asset_get("par_block")) || place_meeting(x - 10, y - 10, asset_get("par_block")) && hsp >= -0.1 && hsp <= 0.1{
                if hbox_num == 8 && place_meeting(x - (4 * spr_dir), y - 10, asset_get("par_block")){
                    var facing = orig_player_id.spr_dir;
                    orig_player_id.spr_dir = spr_dir;
                    var bomb = create_hitbox(AT_DSPECIAL, 9, x + 36, y + 6);
                    bomb.spr_dir = spr_dir;
                    bomb.draw_xscale = spr_dir;
                    orig_player_id.spr_dir = facing;
                    instance_destroy(self);
                    exit;
                }
                else if hbox_num != 8{
                    hsp *= -0.95;
                }
            }
            if has_hit{
                vsp = -3;
                hsp = -2 * spr_dir;
                has_hit = false;
            }
            if !free{
                var facing = orig_player_id.spr_dir;
                orig_player_id.spr_dir = spr_dir;
                //shader_start();
                var gadget = create_hitbox(AT_DSPECIAL, hbox_num + 1, x + (32 * spr_dir), y + 8);
                //shader_end();
                gadget.spr_dir = spr_dir;
                gadget.draw_xscale = spr_dir;
                orig_player_id.spr_dir = facing;
                instance_destroy(self);
                exit;
            }
        break;
        case 2:
            if hitbox_timer % 30 == 1{
                sound_play(sound_get("clock"));
            }
            if hitbox_timer % 30 == 7 || hitbox_timer % 30 == 22{
                var facing = orig_player_id.spr_dir;
                orig_player_id.spr_dir = spr_dir;
                var sound = create_hitbox(AT_DSPECIAL, 3, x - (48 * spr_dir), y - 32);
                sound.spr_dir = spr_dir;
                sound.draw_xscale = spr_dir;
                orig_player_id.spr_dir = facing;
            }
            if hitbox_timer == 539{
                sound_stop(sound_get("clock"));
            }
        break;
        case 3:
            with oPlayer{
                if state == PS_HITSTUN || state == PS_HITSTUN_LAND{
                    other.can_hit[player] = false;
                }
                else{
                    other.can_hit[player] = true;
                }
            }
        break;
        case 5:
            if hitbox_timer == 1{
                sound_play(sound_get("box"));
            }
            if hitbox_timer >= 20{
                image_index = 2;
            }
            if hitbox_timer % 60 == 15{
                var facing = orig_player_id.spr_dir;
                orig_player_id.spr_dir = spr_dir;
                var music = create_hitbox(AT_DSPECIAL, 6 + random_func_2(get_gameplay_time() % 200, 2, true), x, y - 10);
                music.spr_dir = spr_dir;
                music.hsp = 3 * spr_dir;
                music.draw_xscale = spr_dir;
                orig_player_id.spr_dir = facing;
            }
        break;
        case 6: case 7:
            vsp += hitbox_timer % 60 <= 15 || hitbox_timer % 60 > 45? -0.1:0.1;
        break;
        case 9:
            if has_hit{
                var facing = orig_player_id.spr_dir;
                orig_player_id.spr_dir = spr_dir;
                var explosion = create_hitbox(AT_DSPECIAL, 10, x - (50 * spr_dir), y - 20);
                explosion.spr_dir = spr_dir;
                explosion.draw_xscale = spr_dir;
                orig_player_id.spr_dir = facing;
                sound_play(asset_get("sfx_ell_strong_attack_explosion"));
                instance_destroy(self);
                exit;
            }
        break;
    }
}