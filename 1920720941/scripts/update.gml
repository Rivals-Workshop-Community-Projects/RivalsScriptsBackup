mist_timer += 1;

// Refresh Dash
if (dash_count <= 0 && dash_timer > 0) {
    dash_timer -= 1;
}

if (runeJ && dash_count < 2 && !free) {
    dash_count = 2;
    refresh_hair = 8;
    dash_delay = 0;
} else if (!free && dash_count <= 0) {
    if (dash_timer <= 0) {
        dash_count = 1;
        refresh_hair = 8;
    }
}

if (!can_nspecial || dash_count >= 2) {
    move_cooldown[AT_NSPECIAL] = 2;
}

if (dash_jump_delay > 0) {
    max_djumps = 0;
    dash_jump_delay -= 1;
} else {
    max_djumps = 1;
}

if (dash_block != noone) {
    dash_block.dash_dir = dash_dir;
}

if (dash_count <= 0 || dash_delay > 0) {
    has_airdodge = false;
} else {
    has_airdodge = true;
}

if (dash_delay > 0) {
    dash_delay -= 1;
}

if ((((state == PS_AIR_DODGE && state_timer <= 1) || state == PS_PARRY_START || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && !joy_pad_idle) &&
        dash_count > 0 && dash_jump_delay <= 0) {
    if (dash_delay <= 0) {
        var dir = (floor((joy_dir + 22.5) / 45.0) * 45.0) % 360;
        if (!joy_pad_idle) {
            if (dir > 90 && dir < 270) {
                spr_dir = -1.0;
            } else if (dir < 90 || dir > 270) {
                spr_dir = 1.0;
            }
        }
        state = PS_ATTACK_AIR;
        attack = AT_EXTRA_1;
        window = 1;
        window_timer = 0;
    } else {
        set_state(PS_DASH);
    }
}

if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) {
    spr_dir = -spr_dir;
    set_state(PS_PARRY);
}

if (state == PS_AIR_DODGE && state_timer > 1) {
    dash_count = 0;
}

if (winged_strawberry != noone) {
    if (winged_strawberry.dead) {
        winged_strawberry.destroy = true;
        winged_strawberry = noone;
    }
}

if (runeG) {
    if (winged_strawberry2 != noone) {
        if (winged_strawberry2.dead) {
            winged_strawberry2.destroy = true;
            winged_strawberry2 = noone;
        }
    }

    if (winged_strawberry3 != noone) {
        if (winged_strawberry3.dead) {
            winged_strawberry3.destroy = true;
            winged_strawberry3 = noone;
        }
    }
}

if (dash_block != noone) {
    move_cooldown[AT_DSPECIAL] = 120;

    var stage_x = get_stage_data(SD_X_POS);
    var blastzone = get_stage_data(SD_SIDE_BLASTZONE);
    var max_y = get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS);
    if (dash_block.x < stage_x - blastzone || dash_block.x > room_width - stage_x + blastzone || dash_block.y < 0 || dash_block.y > max_y) {
        dash_block.time_offscreen += 1;
        if (dash_block.time_offscreen > 10) {
            dash_block.destroy = true;
            dash_block = noone;
        }
    } else if (dash_block.despawn_timer >= 720 || dash_block.destroyed) {
        dash_block.destroy = true;
        dash_block = noone;
    }

    if (dash_block.state == 2 && dash_block.active_delay <= 0) {
        if (!dash_block.hitbox_active) {
            dash_block.hitbox_active = true;
            dashbox = create_hitbox(AT_DSPECIAL, 1, dash_block.x, dash_block.y);
            dashbox.hsp = 0;
            dashbox.vsp = 0;
            if (dash_block.active_dir == 0) {
                dashbox.hsp = 12;
            } else if (dash_block.active_dir == 1) {
                dashbox.vsp = -12;
            } else if (dash_block.active_dir == 2) {
                dashbox.hsp = -12;
            } else if (dash_block.active_dir == 3) {
                dashbox.vsp = 12;
            }
        } else if (dash_block.parried == false && was_parried) {
            dash_block.parried = true;
            dash_block.active_dir = (dash_block.active_dir + 2) % 4;
            dash_block.active_delay = 1;
            if (dash_block.active_dir == 0) {
                dashbox.hsp = 12;
            } else if (dash_block.active_dir == 1) {
                dashbox.vsp = -12;
            } else if (dash_block.active_dir == 2) {
                dashbox.hsp = -12;
            } else if (dash_block.active_dir == 3) {
                dashbox.vsp = 12;
            }
            dashbox.was_parried = true;
        }
    } else if (dash_block.hitbox_active) {
        dash_block.hitbox_active = false;
        dashbox.destroyed = true;
    }
}

if (badeline_shots < 3) {
    badeline_shot_timer += 1;
    if (badeline_shot_timer >= badeline_shot_charge_time) {
        badeline_shots += 1;
        badeline_shot_timer = 0;
    }
} else {
    badeline_shot_timer = 0;
}

if (runeK) {
    if ((badeline != noone && move_cooldown[AT_DSPECIAL] <= 2) || !can_dspecial) {
        move_cooldown[AT_DSPECIAL] = 2;
    }
} else {
    if (dream_mist != noone || !can_dspecial) {
        //move_cooldown[AT_DSPECIAL] = 2;
    }
}

if (badeline != noone) {
    move_cooldown[AT_USPECIAL] = 2;
}

if (badeline_shots <= 0 || badeline != noone) {
    move_cooldown[AT_FSPECIAL] = 2;
}

if (badeline != noone) {
    if (badeline[0] == AT_FSPECIAL) {
        badeline_shot_timer = 0;
        badeline[3] -= 1;
        if (badeline[3] == 16) {
            badeline_shots -= (runeI ? (1/3) : 1);
            var orb = create_hitbox(AT_FSPECIAL, 1, badeline[1] - (badeline[4] * 22), badeline[2] - 44);
            orb.walls = 1;
            orb.grounds = 1;
            var bx = badeline[1];
            var by = badeline[2]
            target_obj = noone;
            for (i = 0; i < instance_number(oPlayer); i++) {
                instance = instance_find(oPlayer, i);
                if (instance != noone) {
                    if (instance != id && (target_obj == noone || point_distance(bx, by, instance.x, instance.y) < point_distance(bx, by, target_obj.x, target_obj.y))) {
                        target_obj = instance;
                    }
                }
            }
            angle_set = false;
            if (target_obj != noone && target_obj != id) {
                angle = point_direction(badeline[1] - (badeline[4] * 22), badeline[2] - 44, target_obj.x, target_obj.y - target_obj.char_height / 2);
                if ((badeline[4] == 1.0 && (angle <= 90 || angle >= 270)) || (badeline[4] == -1.0 && (angle >= 90 && angle <= 270))) {
                    orb.hsp = lengthdir_x(6, angle);
                    orb.vsp = lengthdir_y(6, angle);
                    angle_set = true;
                }
            }
            if (!angle_set) {
                orb.vsp = 0;
                orb.hsp = badeline[4] * 6;
            }
            sound_play(sound_get("badeline_orb2"));
        } else if (badeline[3] == 12) {
            if (badeline_shots > 0) {
                badeline[3] = runeI ? 18 : 26;
            }
        } else if (badeline[3] <= 0) {
            badeline = noone;
        }
    } else if (badeline[0] == AT_DSPECIAL) {
        badeline[3] += 1;
        if (dash_block == noone) {
            var y_pos = get_stage_data(SD_Y_POS);
            var blastzone_bottom = get_stage_data(SD_BOTTOM_BLASTZONE);
            var start_y = y_pos + blastzone_bottom;
            var start_x = badeline[1];
            var goal_y = badeline[2] + 42;
            
            dash_block = instance_create(start_x, start_y, "obj_article_solid");
            dash_block.player_id = id;
            dash_block.player = player;
            dash_block.goal_y = goal_y;
        } else if (dash_block.state <= 0) {
            if (badeline[3] >= 11 * 4 - 1) badeline[3] = 5 * 4;
        } else if (dash_block.state >= 1 && badeline[3] < 11 * 4) {
            badeline[3] = 11 * 4;
        } else if (badeline[3] >= 14 * 4 - 1) {
            badeline = noone;
        }
    }
}

var onkevin = false;

with (asset_get("obj_article_solid")) {
    if (place_meeting(x, y - 2, other) && player_id == other.id && !other.free) {
        onkevin = true;
    }
}

if (!free && !onkevin && dash_block == noone && dream_mist == noone && y > 0) {
    can_dspecial = true;
}

if (!free) {
    can_nspecial = true;
}

draw_indicator = true;
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) &&
    (attack == AT_NSPECIAL || attack == AT_UAIR || attack == AT_UTILT || (attack == AT_USTRONG && window >= 2))) {
    if (char_height < (attack == AT_UTILT ? max_char_height + 20 : max_char_height)) {
        char_height += 8;
    }
} else {
    if (char_height > min_char_height) {
        char_height -= 8;
    }
}

if (free && !runeH) {
    if (state != PS_HITSTUN && state != PS_HITSTUN_LAND) {
        if (hsp > max_jump_hsp) {
            hsp -= 0.2;
        } else if (hsp < -max_jump_hsp) {
            hsp += 0.2;
        }
    }
}

if (pcolor == 4 || pcolor == 5) {
    move_cooldown[AT_TAUNT] = 2;
}

in_mist = false;

if (dream_mist != noone) {
    if (position_meeting(x, y - 10, asset_get("obj_article2"))) {
        in_mist = true;
    }
}

var lowest_id = id;
var lowest = depth;

with (oPlayer) {
    draw_mist_here = false;
    if (depth >= lowest) {
        lowest_id = id;
        lowest = depth;
    }
}

lowest_id.draw_mist_here = true;

// TRUMMEL & ALTO CODEC
if (trummelcodecneeded) {
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("portrait_granny");
    trummelcodecsprite2 = sprite_get("portrait_theo");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "That girl is Madeline.";
    trummelcodecline[page,2] = "She used her dash ability";
    trummelcodecline[page,3] = "to climb to the top of";
    trummelcodecline[page,4] = "Celeste mountain.";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "She also has aid from";
    trummelcodecline[page,2] = "'part of herself', often";
    trummelcodecline[page,3] = "called Badeline, so this";
    trummelcodecline[page,4] = "time it's two on two!";
    page++;

    //Page 2
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Madeline's a feisty one.";
    trummelcodecline[page,2] = "She can dash incredibly";
    trummelcodecline[page,3] = "fast, so good luck trying";
    trummelcodecline[page,4] = "to keep up with her!";
    page++;

    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "How is it even fair to";
    trummelcodecline[page,2] = "have speed like that!?";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;

    //Page 4
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "That's your problem,";
    trummelcodecline[page,2] = "not mine!";
    trummelcodecline[page,3] = "Ha Ha Ha Ha Ha Ha Ha!";
    trummelcodecline[page,4] = "Ha Ha Ha Ha Ha Ha Ha!";
    page++;

    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "...Anyway, her dash is";
    trummelcodecline[page,2] = "polite, so it will only";
    trummelcodecline[page,3] = "flinch you when you're";
    trummelcodecline[page,4] = "already in hitstun.";
    page++;

    //Page 6
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Maddy can just combo";
    trummelcodecline[page,2] = "into dash! And with goth";
    trummelcodecline[page,3] = "Maddy's help, she can do";
    trummelcodecline[page,4] = "just about anything!";
    page++;

    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 3;

    trummelcodecline[page,1] = "If you can hit her while";
    trummelcodecline[page,2] = "she's dashing, you'll gain";
    trummelcodecline[page,3] = "the upper hand! Your";
    trummelcodecline[page,4] = "clouds will be handy!";
}