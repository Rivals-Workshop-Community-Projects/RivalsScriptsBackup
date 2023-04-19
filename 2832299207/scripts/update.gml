//update
pre_timer++

//check hitbox view
hitbox_view = get_match_setting(SET_HITBOX_VIS);

in_trigger_range = collision_circle(room_width/2, room_height/2 + 80, 80, oPlayer, true, true) != noone

var challenge_spr = sprite_get("knight_challenge")
var challenge_sfx = sound_get("knight_challenge")

var rand_seed = 0

if pre_timer == 10 {
    with oPlayer {
        if ("url" in self) && url == 2105527362 {
            array_push(other.knight_ids, id)
            
            //set challenge attack
            set_attack_value(AT_TAUNT_2, AG_SPRITE, challenge_spr);
            set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
            set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
            set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
            
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 0);
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 130);
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 26);
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, challenge_sfx);
            set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 30);
        } else if ("is_hornet" in self) && is_hornet {
            array_push(other.knight_ids, id)
        }
    }
}

var knight_hitboxes = []
if array_length(knight_ids) > 0 {
    for (var i = 0; i < array_length(knight_ids); i++) {
        var knight_id = knight_ids[i]
        with knight_id {
            if attack == AT_DAIR {
                with pHitBox if player_id == other.id && attack == AT_DAIR && hbox_num == 1 {
                    array_push(knight_hitboxes, id)
                }
            }
        }
    }
}

//print(knight_hitboxes)

//pogo off hitboxes
with pHitBox if player_id == other.id && !was_parried {
    for (var i = 0; i < array_length(knight_hitboxes); i++) {
        if place_meeting(x, y, knight_hitboxes[i]) {
            with knight_hitboxes[i].player_id {
                old_hsp = hsp
                old_vsp = -10
                has_hit = true
                pogo = -1
                hitpause = true
            }
            sound_play(sound_get("knight_sword_hit_reject"))
        }
    }
}

var everyonedead = true
with oPlayer if id != other.id {
    //you wanna wall tech? too bad >:)
    //can_wall_tech = false
    
    //hide all cpu players
    if temp_level > 0 {
        visible = false
        state = PS_PRATFALL
        state_timer = 0
        x = room_width/2
        y = 0
        free = true
        hsp = 0
        vsp = 0
        invincible = true
        invince_time = 10
    }
    
    //knight challenge
    if ("url" in self) && url == 2105527362 {
        if other.in_trigger_range && !other.triggered {
            if state == PS_IDLE && taunt_pressed {
                state = PS_ATTACK_GROUND
                state_timer = 0
                window = 0
                window_timer = 0
                attack = AT_TAUNT_2
            }
            move_cooldown[AT_TAUNT] = 10
            sprite_index = challenge_spr
            colliding_bench = -1
            bench = -1
            if instance_exists(colliding_bench) instance_destroy(colliding_bench)
            if instance_exists(bench) instance_destroy(bench)
        } else {
            if bench == -1 {
                colliding_bench = noone
                bench = noone
            }
        }
    }
    
    //everyone dead or cpu
    if temp_level == 0 && get_player_stocks(player) > 0 {
        everyonedead = false
    }
}

if everyonedead {
    game_end = true
}

if !game_end set_view_position(room_width/2, room_height/2);

with oPlayer if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_TAUNT || attack == AT_TAUNT_2 || attack == AT_JAB) && other.in_trigger_range {
    other.triggered = true
}
num_players = 0
player_array = []

with oPlayer if ("mantis_fighter_id" in self) && temp_level == 0 {
    if ("url" in self) && url != undefined && url != noone && is_real(url) rand_seed = real(url) mod 5
    else rand_seed = 0
    other.num_players++
    array_push(other.player_array, mantis_fighter_id)
}

if is_aether_stage() { //sisters of battle
    if pre_timer == 140 {
        music_play_file("mantis_lords_music")
        triggered = true
    }
    
    if triggered {
        timer++
        
        if timer > 100 && pause_attack == 0 move_timer++
        
        if timer == 1 with obj_stage_article if get_article_script(id) == 5 && mantis_num == 1 {
            state = PS_WALK
            state_timer = 0
        }
        
        //throne mantis sprites
        if timer == 60 with obj_stage_article if get_article_script(id) == 5 {
            if mantis_num == 1 {
                state = PS_JUMPSQUAT
                state_timer = 0
            }
        }
        
        for (i = 0; i < 1 /*array_length(mantis_attacking_array)*/; i++) {
            if !dosa_mode && mantis_attacking_array[i] != 2 && timer > 100 && move_timer == attack_duration && pause_attack == 0 {
                move_timer = 0
                var target = player_array[random_func(rand_seed, num_players-1, true)]
                var mantis_dir = (random_func(rand_seed+1, 2, true)*2) - 1
                var attack_array = [AT_DATTACK, AT_DAIR, AT_FTHROW]
                var mantis_atk = attack_array[random_func(rand_seed+3, 3, true)]
                spawn_attack(mantis_atk, mantis_dir, target, i+1, 0)
                break;
            }
        }
        
        if dosa_mode {
            dosa_timer++
            
            if dosa_timer == 1 {
                with obj_stage_article if get_article_script(id) == 4 {
                    draw_name_2 = true
                }
                
                rand_dir = 1
                rand_variation = 0
                rand_num_attacks = 2
                rand_attack = 0
                move_timer = 0
                starting_mantis = 0
                
            }
            
            if move_timer == attack_duration {
                rand_attack = random_func(floor(timer) mod 5, 3, true)
                move_timer = 0
                rand_num_attacks = 2 + random_func(1, 6, true) //for multi attack
                rand_dir = sign(random_func(2, 2, true)-0.5)
                rand_variation = random_func(3, 4, true)
                starting_mantis = random_func(4, 3, true)
            }
            
            var mantis_1 = ((starting_mantis+1) mod 3) + 1
            var mantis_2 = ((starting_mantis+2) mod 3) + 1
            var mantis_3 = ((starting_mantis+3) mod 3) + 1
            
            if pause_attack == 0 {
                var target = player_array[random_func(0, num_players-1, true)]
                var num_dead = 0
                if mantis_attacking_array[0] == 2 num_dead++
                if mantis_attacking_array[1] == 2 num_dead++
                if mantis_attacking_array[2] == 2 num_dead++
                
                //print(mantis_attacking_array)
                
                if num_dead == 0 {
                    switch rand_attack {
                        case 0: //opposite simultaneous charge + dive
                        attack_duration = 111
                        if move_timer == 1 {
                            spawn_attack(AT_DATTACK, 1, target, mantis_1, 0)
                            spawn_attack(AT_DATTACK, -1, target, mantis_2, 0)
                        }
                        if move_timer == 40 {
                            spawn_attack(AT_DAIR, rand_dir, target, mantis_3, 0)
                        }
                        break;
                        
                        case 1: //directional dashes + dives
                        attack_duration = 40*rand_num_attacks + 40
                        var _atk_arr = [AT_DATTACK, AT_DAIR]
                        var _atk = _atk_arr[random_func(2, 2, true)];
                        if move_timer < 40*rand_num_attacks && move_timer mod 40 == 1 {
                            spawn_attack(_atk, rand_dir, target, 1 + (floor(move_timer/40) mod 3), 0)
                        }
                        break;
                        
                        case 2: //double throw + dive
                        attack_duration = 201
                        if move_timer == 1 {
                            spawn_attack(AT_FTHROW, 1, target, mantis_1, rand_variation)
                            spawn_attack(AT_FTHROW, -1, target, mantis_2, rand_variation)
                        }
                        
                        if move_timer == 60 {
                            spawn_attack(AT_DAIR, rand_dir, target, mantis_3, 0)
                        }
                        break;
                    }
                } else if num_dead == 1 {
                    if mantis_attacking_array[0] == 2 {
                        var duo_1 = 2
                        var duo_2 = 3
                    } else if mantis_attacking_array[1] == 2 {
                        var duo_1 = 1
                        var duo_2 = 3
                    } else if mantis_attacking_array[2] == 2 {
                        var duo_1 = 1
                        var duo_2 = 2
                    }
                    switch rand_attack {
                        case 0: //opposite simultaneous charge
                        attack_duration = 131
                        if move_timer == 1 {
                            spawn_attack(AT_DATTACK, 1, target, duo_1, 0)
                            spawn_attack(AT_DATTACK, -1, target, duo_2, 0)
                        }
                        break;
                        
                        case 1: //directional dashes + dives
                        attack_duration = 60*rand_num_attacks + 61
                        var _atk_arr = [AT_DATTACK, AT_DAIR]
                        var _atk = _atk_arr[random_func(2, 2, true)];
                        if move_timer < 60*rand_num_attacks && move_timer mod 60 == 1 {
                            spawn_attack(_atk, rand_dir, target, floor(move_timer/60) mod 2 == 0 ? duo_1 : duo_2, 0)
                        }
                        break;
                        
                        case 2: //double throw
                        attack_duration = 201
                        if move_timer == 1 {
                            spawn_attack(AT_FTHROW, 1, target, duo_1, rand_variation)
                            spawn_attack(AT_FTHROW, -1, target, duo_2, rand_variation)
                        }
                        break;
                    }
                } else if num_dead == 2 {
                    if mantis_attacking_array[0] != 2 var last_mantis = 1
                    if mantis_attacking_array[1] != 2 var last_mantis = 2
                    if mantis_attacking_array[2] != 2 var last_mantis = 3

                    if move_timer >= attack_duration - 1 {
                        move_timer = 0
                        var target = player_array[random_func(rand_seed, num_players-1, true)]
                        var mantis_dir = (random_func(1, 2, true)*2) - 1
                        var attack_array = [AT_DATTACK, AT_DAIR, AT_FTHROW]
                        var mantis_atk = attack_array[random_func(3, 3, true)]
                        spawn_attack(mantis_atk, mantis_dir, target, last_mantis, -1)
                    }
                }
            }
        }
    }
    
} else { //regular mantis lords
    if pre_timer == 140 {
        music_play_file("mantis_village_music")
        music_set_volume(0)
        music_fade(1, 0.015);
    }
    
    if triggered {
        if trigger_delay_timer < 60 {
            if trigger_delay_timer == 0 music_fade(0, 0.1)
            trigger_delay_timer++
        } else {
            
            timer++
            
            if timer > 220 && pause_attack == 0 move_timer++
            
            if timer == 1 with obj_stage_article if get_article_script(id) == 5 {
                state = PS_WALK
                state_timer = 0
            }
            
            if timer == 6 {
                music_play_file("mantis_lords_music")
            }
            
            if timer == 40 with obj_stage_article_solid if get_article_script(id) == 1 {
                triggered = true
            }
            if timer == 120 with obj_stage_article_solid if get_article_script(id) == 2 {
                triggered = true
            }
            
            //throne mantis sprites
            if timer == 180 with obj_stage_article if get_article_script(id) == 5 {
                if mantis_num == other.phase+1 {
                    state = PS_JUMPSQUAT
                    state_timer = 0
                }
            }
            
            for (i = 0; i < 1 /*array_length(mantis_attacking_array)*/; i++) {
                //print([mantis_attacking_array, timer, move_timer, attack_duration, pause_attack])
                if mantis_attacking_array[i] != 2 && timer > 220 && move_timer >= attack_duration && pause_attack == 0 {
                    move_timer = 0
                    var target = player_array[random_func(0, num_players-1, true)]
                    var mantis_dir = (random_func(1, 2, true)*2) - 1
                    var attack_array = [AT_DATTACK, AT_DAIR, AT_FTHROW]
                    var mantis_atk = attack_array[random_func(4, 3, true)]
                    spawn_attack(mantis_atk, mantis_dir, target, i+1, 0)
                }
            }
            
            if mantis_attacking_array[0] == 2 && mantis_attacking_array[1] != 2 && mantis_attacking_array[2] != 2 && move_timer >= attack_duration && !pause_attack {
                move_timer = 0
                rand_attack = random_func(4, 3, true)
                rand_num_attacks = 2 + random_func(1, 3, true) //for multi attack
                rand_dir = sign(random_func(2, 2, true)-0.5)
                rand_variation = random_func(3, 4, true)
            }
            
            //print([move_timer, attack_duration])
            
            if pause_attack == 0 && mantis_attacking_array[0] == 2 {
                var target = player_array[random_func(0, num_players-1, true)]
                if mantis_attacking_array[1] == 0 && mantis_attacking_array[2] == 0 {
                    switch rand_attack {
                        case 0: //opposite simultaneous charge
                        attack_duration = 131
                        if move_timer == 1 {
                            spawn_attack(AT_DATTACK, 1, target, 2, 0)
                            spawn_attack(AT_DATTACK, -1, target, 3, 0)
                        }
                        break;
                        
                        case 1: //directional dashes + dives
                        attack_duration = 60*rand_num_attacks + 61
                        var _atk_arr = [AT_DATTACK, AT_DAIR]
                        var _atk = _atk_arr[random_func(2, 2, true)];
                        if move_timer < 60*rand_num_attacks && move_timer mod 60 == 1 {
                            spawn_attack(_atk, rand_dir, target, 2 + (floor(move_timer/60) mod 2), -2)
                        }
                        break;
                        
                        case 2: //double throw
                        attack_duration = 201
                        if move_timer == 1 {
                            spawn_attack(AT_FTHROW, 1, target, 2, rand_variation)
                            spawn_attack(AT_FTHROW, -1, target, 3, rand_variation)
                        }
                        break;
                    }
                } else if !pause_attack && ((mantis_attacking_array[1] == 2 && mantis_attacking_array[2] == 0) || (mantis_attacking_array[2] == 2 && mantis_attacking_array[1] == 0)) && move_timer >= attack_duration {
                    move_timer = 0
                    var lastmantis = mantis_attacking_array[1] != 2 ? 2 : 3
                    var mantis_dir = (random_func(1, 2, true)*2) - 1
                    var attack_array = [AT_DATTACK, AT_DAIR, AT_FTHROW]
                    var mantis_atk = attack_array[random_func(4, 3, true)]
                    spawn_attack(mantis_atk, mantis_dir, target, lastmantis, -1)
                }
            }
        }
    }
}



//all mantises dead
if mantis_attacking_array[0] == 2 && mantis_attacking_array[1] == 2 && mantis_attacking_array[2] == 2 {
    if dead_timer == 0 music_stop()
    dead_timer++
    if dead_timer == 220 {
        music_play_file("boss_win_music")
        with obj_stage_article if get_article_script(id) == 5 {
            state = PS_LAND
            state_timer = 0
        }
    }
    if dead_timer == 320 {
        shake_camera(2, 4)
        sound_play(sound_get("misc_rumble_impact"), false, 0)
        with obj_stage_article_solid {
            if get_article_script(id) == 1 {
                raise_timer++
            }
            if get_article_script(id) == 2 {
                close_timer++
                sound_play(sound_get("cover"))
            }
        }
    }
    if dead_timer == 320 sound_play(sound_get("switch_gate_gate"), false, 0)
    if dead_timer == 860 {
        var winner_player = 1
        var min_hp = 100000000000
        with oPlayer {
            if get_player_damage(player) < min_hp && temp_level == 0 {
                winner_player = player
                min_hp = get_player_damage(player)
            }
        }
        game_end = true
        end_match(winner_player)
    }
}

//print([pause_attack, mantis_attacking_array[0], mantis_attacking_array[1], mantis_attacking_array[2], move_timer, attack_duration])

if pause_attack > 0 pause_attack--

with pHitBox if player_id == other.id {
    if attack == AT_JAB && hbox_num == 11 {
        if hitbox_timer == 1 cooldown = 0
        if has_hit {
            if cooldown <= -1 {
                cooldown = 20
                spawn_hit_fx(x, y-60, 304)
            } else cooldown--
            if cooldown == 0 has_hit = false
        }
        
        for (var i = 0; i < 4; i++) {
            can_hit[i] = true
        }
    }
    
    if attack == AT_FTHROW {
        hsp = clamp(hsp + 0.20*spr_dir, -16, 16)
        if hitbox_timer == 1 {
            ring_sfx = sound_get("mantis_proj_loop")
            sound_play(ring_sfx, true)
        }
        if x > room_width || x < 0 destroyed = true
        
        if destroyed {
            sound_stop(ring_sfx)
        }
    }
}

//print(mantis_damage_array)
//print(mantis_attacking_array)
//print(mantis_attack_queue)

#define spawn_attack(_atk, _dir, _target, _index, _variation)
var mantis_x = 0
var mantis_y = 0
var delay = 0

switch _atk {
    case AT_DATTACK:
    mantis_x = room_width/2 - _dir*450
    mantis_y = -200
    delay = 130
    break;
    
    case AT_DAIR:
    mantis_x = clamp(_target.x, (room_width/2) - 260, (room_width/2) + 260) - _dir*190
    mantis_y = 400
    delay = 110
    break;
    
    case AT_FTHROW:
    mantis_x = room_width/2 + _dir*250
    switch _variation {
        case -1:
        case 0: //high to low, far
        mantis_y = 310
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_HSPEED, -16);
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_VSPEED, 1);
        set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_Y, -180);
        break;
        
        case 1: //low to high, far
        mantis_y = 390
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_HSPEED, -16);
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_VSPEED, -0.4);
        set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_Y, -120);
        break;
        
        case 2: //high to low, close
        mantis_y = 310
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_HSPEED, -11);
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_VSPEED, 1.5);
        set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_Y, -180);
        break;
        
        case 3: //low to high, close
        mantis_y = 390
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_HSPEED, -11);
        set_hitbox_value(AT_FTHROW, 11, HG_PROJECTILE_VSPEED, -0.4);
        set_hitbox_value(AT_FTHROW, 11, HG_HITBOX_Y, -120);
        break;
    }
    delay = 221
    break;
}

if (mantis_attacking_array[_index-1] != 2 || _variation == -1) && _variation != -2 attack_duration = delay //only applies to single mantises

var mantis = instance_create(mantis_x, mantis_y, "obj_stage_article", 3)
    mantis.attack = _atk
    mantis.dir = _dir
    mantis.spr_dir = _dir
    mantis.spawn_num = _index
    mantis.attack_variation = _variation