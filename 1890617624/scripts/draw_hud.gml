//draw_hud - the x position of your HUD element is 48*(i-1)

if url != 1890617624{
	return;
}

if is_ai and ai_debug{
    draw_debug_text(temp_x - 300, temp_y - 80, string(potential_attacks_string));
    draw_debug_text(temp_x - 20, temp_y - 60, string(hittable_attacks_string));
    draw_debug_text(temp_x - 20, temp_y - 40, string(attack_chosen_string));
}

var temp_color = c_white;
if (!has_apple and !golden) temp_color = c_gray;
draw_sprite_ext(sprite_get("hud_apple"), 0, temp_x+168, temp_y-12, 2, 2, 0, temp_color, 1);

temp_color = c_white;
if (!has_shake and !golden) temp_color = c_gray;
draw_sprite_ext(sprite_get("hud_shake"), 0, temp_x+188, temp_y-12, 2, 2, 0, temp_color, 1);

// Soul points display
if runeB{
    temp_color = c_white;
    if (soul_points < 1) temp_color = c_gray;
    draw_sprite_ext(sprite_get("hud_soul"), 0, temp_x, temp_y-48, 2, 2, 0, temp_color, 1);
    draw_debug_text(temp_x+34, temp_y-34, string("x " + string(soul_points)))
}

// Super Meter
draw_sprite_ext(sprite_get("spmeter"), 0, temp_x+2, temp_y-16, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("spmeter_bar"), 0, temp_x+28, temp_y-8, 2 * (super / 100), 2, 0, c_white, 1);

// Variable that determines when the super meter flashes
var superflash = 100;
if runeL or (runeM and !za_warudo){
    superflash = 33;
}

if super >= superflash{
    var alpha = floor(get_gameplay_time() * 0.25) % 2
    draw_sprite_ext(sprite_get("spmeter_flash"), 0, temp_x+28, temp_y-8, 2 * (super / 100), 2, 0, c_white, alpha);
}

draw_sprite_ext(sprite_get("spmeter_segments"), 0, temp_x+2, temp_y-16, 2, 2, 0, c_white, 1);

if super >= 100{
    draw_sprite_ext(sprite_get("spmeter_inputs"), 0, temp_x+2, temp_y-16, 2, 2, 0, c_white, 1);
}

if combo > 0{
    draw_debug_text(temp_x+30, temp_y-24, string(string(combo) + "x Combo"))
}

if afakening and get_gameplay_time() > 75 and attack != AT_TAUNT_2{
    draw_sprite_ext(sprite_get("rhakeout"), 0, 0, 0, 2, 2, 0, c_white, 1);
}

if attack == AT_TAUNT_2{
    if window == 2 and window_timer > 40{
        var scale = 0.95 + (window_timer - 40) * 0.005
        if scale > 1{
            scale = 1
        }
        var alpha = (window_timer - 40) * 0.1
        draw_sprite_ext(sprite_get("error"),0,480,270 + 20,scale,scale,0,c_white,alpha)
        if window_timer - 180 = 0{
            sound_play(sound_get("ohyoustupid"))
        }
    }
    if window == 3{
        draw_sprite_ext(sprite_get("white"), 0, 0, 0, 1000, 1000, 0, c_black, 1);
        if (window_timer < 21*4){
            draw_sprite_ext(sprite_get("nuke"), min(20, (floor(window_timer / 4))), 0, 3, 3, 3, 0, c_white, 1)
        }
    }
    
    if window == 4{
        if window_timer = 5{
            flash = 0
            x1 = -240
            x2 = 240
        } else if window_timer >= 5{
            if window_timer % 2 == 1{
                x1 += (0 - x1) / 3
                x2 += (0 - x2) / 3
            }
            if round(x1) = 0 and flash < 4{
                flash += 1
                x1 = 0
                x2 = 0
            }
            draw_sprite_ext(sprite_get("fakegame"), 0, x1, 0, 2, 2, 0, c_white, 1)
            draw_sprite_ext(sprite_get("fakegame"), 1, x2, 0, 2, 2, 0, c_white, 1)
            if flash > 0 and flash < 4{
                draw_sprite_ext(sprite_get("fakegame"), 2, x2, 0, 2, 2, 0, c_white, 1)
            }
        }
        
        var alpha = (window_timer - 140) * 12 / 100
        
        draw_sprite_ext(sprite_get("white"), 0, 0, 0, 1000, 1000, 0, c_black, alpha);
        
    }
    
    if window == 5{
        draw_sprite_ext(sprite_get("fakevictorybg"), 0, 0, 0, 2, 2, 0, c_white, 1);
        var alpha = 1 - ((window_timer - 10) / 40)
        draw_sprite_ext(sprite_get("white"), 0, 0, 0, 1000, 1000, 0, c_white, alpha);
        
        var pos_x = -600
        if window_timer <= 10{
            pos_x += 424 * (window_timer / 10)
        } else if window_timer <= 110{
            pos_x += 424 + (26 * ((window_timer - 10) / 100))
        } else{
            pos_x += 424 + 26
        }
        
        pos_x -= 20
        
        timer_tmp = window_timer
        var alpha2 = 1 - ((timer_tmp % 40) / 40)
        var pos_offset = (timer_tmp % 40) * 2
        draw_sprite_ext(sprite_get("fakevictoryportrait"), 1, pos_x - pos_offset, -16, 2, 2, 0, c_white, alpha2);
        
        timer_tmp = window_timer + 20
        var alpha2 = 1 - ((timer_tmp % 40) / 40)
        var pos_offset = (timer_tmp % 40) * 2
        draw_sprite_ext(sprite_get("fakevictoryportrait"), 1, pos_x - pos_offset, -16, 2, 2, 0, c_white, alpha2);
        
        draw_sprite_ext(sprite_get("fakevictoryportrait"), 1, pos_x, -16, 2, 2, 0, c_white, (1 - alpha) / 2);
        
        pos_x += 20
        
        draw_sprite_ext(sprite_get("fakevictoryportrait"), 0, pos_x, -16, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("fakevictoryportrait"), 0, pos_x, -16, 2, 2, 0, c_black, alpha);
        
        if window_timer <= 1{
            pos_x2 = 960
            p1_pos = 960
            p2_pos = 960
            ron_x = 1200
            ron_x2 = 610
            ron_x3 = 680
            ron_hsp = 0
            voice = 0
        }
        if window_timer <= 10{
            pos_x2 = 960
            pos_x2 += -386 * (window_timer / 10)
        } else if window_timer <= 110{
            pos_x2 = 574
            pos_x2 -= (52 * ((window_timer - 10) / 100))
        } else{
            pos_x2 += (80 - pos_x2) / 12
        }
        draw_sprite_ext(sprite_get("fakevictorytext"), 0, pos_x2, 440, 2, 2, 0, c_white, 1);
        
        
        if window_timer > 140 and window_timer < 270{
            var step = (window_timer / 6) % 8
            draw_sprite_ext(sprite_get("walk"), step, ron_x, 650, -6, 6, 0, c_white, 1);
            ron_x -= 4
            if step == 0 or step == 4{
                sound_play(sound_get("stepwalk"))
            }
        } else if window_timer >= 260 and window_timer < 320{
            if voice = 0{
                voice += 1
                sound_play(sound_get("voicedattack"))
            }
            draw_sprite_ext(sprite_get("fstrong"), 0, ron_x2, 650, -6, 6, 0, c_white, 1);
            ron_x2 += (670 - ron_x2) / 6
        } else if window_timer >= 320{
            if voice = 1{
                voice += 1
                sound_play(sound_get("voicefstrong"))
                sound_play(sound_get("chainsaw"))
            }
            draw_sprite_ext(sprite_get("fstrong"), 1 + round((window_timer - 280) / 3), ron_x3, 650, -6, 6, 0, c_white, 1);
            ron_hsp -= 2
            ron_x3 += ron_hsp
        }
        
        if window_timer >= 330{
            sound_play(sound_get("nuke"))
            sound_play(sound_get("bighit2"))
            afakening = false
            awakening = true
            set_attack(AT_TAUNT_2)
            window = 3
            window_timer = 0
        }
        
        
        if window_timer >= 110{
            draw_sprite_ext(sprite_get("fakevictorybottom"), 0, 774, 512, 1, 1, 0, c_white, 1);
            p1_pos += (478 - p1_pos) / 6
            p2_pos += (562 - p2_pos) / 8
            draw_sprite_ext(sprite_get("fakevictoryp1"), 0, p1_pos, 144, 1, 1, 0, c_white, 1);
            draw_sprite_ext(sprite_get("fakevictoryp2"), 0, p2_pos, 296, 1, 1, 0, c_white, 1);
        }
        
        var alpha = 1 - window_timer / 10
        draw_sprite_ext(sprite_get("white"), 0, 0, 0, 1000, 1000, 0, c_black, alpha * 2);
    }
}