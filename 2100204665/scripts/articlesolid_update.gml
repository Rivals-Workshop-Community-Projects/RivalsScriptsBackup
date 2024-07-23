state_timer ++;
if (state == 0){
    create_hitbox(AT_USPECIAL, 1, x, y - 464);
    if (get_player_color(player_id.player) == 0){
        sprite_index = sprite_get("bone_spire_default");
    }
    if (y > player_id.y){
        var dir = point_direction(x, y, player_id.x, player_id.y);
		vsp = round(lengthdir_y(40, dir));
    if (y <= player_id.y + 480){
        vsp = 0;
        state = 1;
        state_timer = 0;
    }
    }
}

if (state > 0){
    if (y > get_stage_data(SD_Y_POS) + 480){
    var stage_x = get_stage_data( SD_X_POS );
    var stage_width = get_stage_data( SD_WIDTH );
        if (x > (stage_x + 32) && x < ((stage_x + stage_width) - 32)){
            state = 3;
            state_timer = 999;
        }
    }
}
if (state == 1){
    vsp = 0;
    if (state_timer > 60 && collision_rectangle(x - 32, y - 482, x + 30, y - 480, oPlayer, false, true)){
        sound_play(asset_get("sfx_pillar_crumble"));
        state = 2;
    }
}

if (state == 2){
    with oPlayer{
        if (collision_rectangle(x + 4, y + 2, x - 4, y, other, false, true) && blue == true){
            other.vsp = 3;
        } else other.vsp = 2;
    }
    if (!collision_rectangle(x - 34, y - 482, x + 32, y - 480, oPlayer, false, true)){
        state = 1;
    }
}
if (state == 3){
    sprite_index = sprite_get("bone_spire_hit");
    if (state_timer >= hitpause_time){
        sound_play(sound_get("sfx_monsterdeath"), false, noone, 0.4, 1);
        with (player_id){
        spawn_hit_fx(bone_spire.x - 26, bone_spire.y - 460, 13);
        spawn_hit_fx(bone_spire.x + 24, bone_spire.y - 400, 13);
        spawn_hit_fx(bone_spire.x - 28, bone_spire.y - 320, 13);
        spawn_hit_fx(bone_spire.x - 26, bone_spire.y - 240, 13);
        spawn_hit_fx(bone_spire.x + 24, bone_spire.y - 160, 13);
        spawn_hit_fx(bone_spire.x - 28, bone_spire.y - 80, 13);
        }
        should_die = true;
        var stage_x = get_stage_data( SD_X_POS );
        var stage_width = get_stage_data( SD_WIDTH );
        if (x > (stage_x + 32) && x < ((stage_x + stage_width) - 32) && y > get_stage_data(SD_Y_POS) + 480){
            on_stage = true;
        }
        if (collision_rectangle(x - 32, y - 482, x + 30, y - 480, oPlayer, false, true) && !on_stage){
            with oPlayer{
                if (collision_rectangle(x + 4, y + 4, x - 4, y, other, false, true) && ground_type == 1){
                    y -= 16;
                    free = true;
                    state = PS_PRATFALL;
                }
            }
        }
    }
}


if (should_die){
    instance_destroy();
    exit;
}