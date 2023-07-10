////calculate leg info

if !free && free != prev_free sound_play(sound_get("step" + string(random_func_2(57+leg_id, 8, 1))), 0, noone, .4);

//define depth in relation to player
depth = player_id.depth - sign(dsin(player_id.body_angles[0] + 60*leg_id));

//define distance and angle
orig_dist = point_distance(x, y, origp[0], origp[1]);
leg_dir = sign(dcos(player_id.body_angles[0] + 60*leg_id));

//define leg origin point
old_origp = [
    60*dcos(player_id.body_angles[0] + 60*leg_id),
    (player_id.y + player_id.draw_y + 54) - (player_id.y - 70)
];
origp = [
    player_id.x + old_origp[0]*dcos(player_id.rot_angle) + old_origp[1]*dsin(player_id.rot_angle) + player_id.hsp + lengthdir_x(player_id.col_displace*2, player_id.rot_angle + 90),
    player_id.y + old_origp[1]*dsin(player_id.rot_angle + 90) + old_origp[0]*dcos(player_id.rot_angle + 90) - 70 + player_id.vsp + lengthdir_y(player_id.col_displace*2, player_id.rot_angle + 90)
];

//find distance and define knee position
var knee_h = max_height*(max_dist-orig_dist)/max_dist;
kneep = [
    (x + origp[0])/2 + knee_h*dcos(leg_angle),
    (y + origp[1])/2 - knee_h*dsin(leg_angle)
];

//step point
step_x = origp[0] + 70*dcos(player_id.body_angles[0] + 60*leg_id);

if player_id.state == PS_SPAWN || player_id.state == PS_RESPAWN state = -1;

if wall_grab_cool wall_grab_cool--;
////STATES
switch state{
    case -1:    //SPAWN
    foot_angle = -90;
    foot_sprite = 0;
    leg_angle = -player_id.rot_angle+90;
    x = step_x;
    y = player_id.y;
    hsp = 0;
    vsp = 0;
    if player_id.state != PS_SPAWN && player_id.state != PS_RESPAWN state = 0;
    break;
    
    case 0:  //GROUND REPOSITION
    foot_angle = (free? noone: -90);
    foot_sprite = free;
    leg_angle = player_id.rot_angle+90;
    if free enable_grav();
    
    if !free{
        hsp = 0;
        start_hsp = 0;
    }
    should_step = (x > step_x + step_area) || (x < step_x - step_area);
    
    if should_step{
        should_step = 0;
        with obj_article1 if self != other && !free other.should_step = 1;
    }
    if should_step && !free{
        vsp = -4;
        hsp = (step_x - x)/(20 - random_func_2(54 + leg_id, 10, 0));
        start_hsp = hsp;
    }else if free hsp = start_hsp + player_id.hsp;
    
    if player_id.free state = 1;
    else if free && y > player_id.y + 30 && !instance_exists(collision_line(x, y, x + lengthdir_x(100000, player_id.rot_angle - 90), y + lengthdir_y(100000, player_id.rot_angle - 90), asset_get("par_block"), 1, 1)) && !instance_exists(collision_line(x, y, x + lengthdir_x(100000, player_id.rot_angle - 90), y + lengthdir_y(100000, player_id.rot_angle - 90), asset_get("par_jumpthrough"), 1, 1)) state = 3;
    break;
    case 1:  //JUMP REPOSITION
    foot_angle = (free? noone: -90);
    foot_sprite = free;
    leg_angle = player_id.rot_angle+90;
    start_hsp = 0;
    hsp = player_id.hsp;
    y = lerp(y, player_id.y, 0.3);
    if wall_grab_cool || x > step_x+100 || x < step_x-100 x = lerp(x, step_x, .3);
    
    if (!player_id.free && !wall_grab_cool) || !free state = 0;
    break;
    case 2:  //WALL POSITION
    foot_angle = -90 - 40*leg_dir;
    foot_sprite = 0;
    leg_angle = point_direction(origp[0], origp[1], x, y) + 90*leg_dir;
    start_hsp = 0;
    hsp = 0;
    vsp = 0;
    
    if !free state = 0;
    if player_id.free state = 1;
    if point_distance(x, 0, origp[0], 0) >= 120{
        state = 1;
        wall_grab_cool = 10;
        vsp = (player_id.y - y)/10;
    }
    break;
    case 3:  //AIR BEND BACK
    foot_angle = (free? noone: -90);
    foot_sprite = free;
    leg_angle = player_id.rot_angle+90;
    if free && (instance_exists(collision_line(x, y, x + lengthdir_x(100000, player_id.rot_angle - 90), y + lengthdir_y(100000, player_id.rot_angle - 90), asset_get("par_block"), 1, 1)) || instance_exists(collision_line(x, y, x + lengthdir_x(100000, player_id.rot_angle - 90), y + lengthdir_y(100000, player_id.rot_angle - 90), asset_get("par_jumpthrough"), 1, 1))) state = 0;
    if player_id.free state = 1;
    if !free state = 0;
    if free && hit_wall && !wall_grab_cool{
        state = 2;
        sound_play(sound_get("step" + string(random_func_2(57+leg_id, 8, 1))), 0, noone, .4)
    }
    hsp = lengthdir_x(-5*leg_dir, player_id.rot_angle - 30*leg_dir);
    vsp = lengthdir_y(5*leg_dir, player_id.rot_angle - 30*leg_dir);
    break;
    case 4:  //ATTACK
    var win = player_id.window;
    if win = 0{
        state = 0;
        break;
    }
    var win_time = player_id.window_timer;
    switch player_id.attack{
        case AT_USPECIAL:
        foot_angle = -90;
        foot_sprite = 0;
        leg_angle = -player_id.rot_angle+90;
        if !player_id.hitpause{
            y = lerp(y, player_id.y - 10, 0.2);
            x = lerp(x, step_x, .3);
        }
        break;
        case AT_NAIR:
        if win == 2{
            foot_angle = -90 + 90*leg_dir;
            foot_sprite = 1;
            leg_angle = 0;
            hsp = 0;
            vsp = 0;
            if !player_id.hitpause{
                x = lerp(x, origp[0] + max_dist*dcos(player_id.body_angles[0] + leg_id*60), .5);
                y = lerp(y, origp[1], .5);
            }
        }else{
            foot_angle = -90;
            foot_sprite = 0;
            leg_angle = -player_id.rot_angle+90;
            if !player_id.hitpause{
                y = lerp(y, player_id.y, 0.3);
                x = lerp(x, step_x, .3);
            }
        }
        break;
        
        case AT_USTRONG:
        case AT_DSTRONG:
        foot_angle = -90;
        foot_sprite = 0;
        leg_angle = -player_id.rot_angle+90;
        hsp = 0;
        vsp = 0;
        if win = 1 && !player_id.hitpause{
            y = lerp(y, player_id.y, 0.3);
            x = lerp(x, step_x, .3);
        }
        break;
        
        case AT_FSTRONG:
        foot_sprite = 0;
        switch win{
            case 1:
            case 2:
            foot_angle = noone;
            leg_angle = -player_id.rot_angle+90 + 50*leg_dir;
            hsp = 0;
            vsp = 0;
            if !player_id.hitpause{
                y = lerp(y, player_id.y - 90, 0.3);
                x = lerp(x, step_x - 40*leg_dir, .3);
            }
            break;
            case 3:
            foot_angle = -90;
            leg_angle = -player_id.rot_angle+90;
            hsp = 0;
            vsp = 0;
            if !player_id.hitpause{
                y = lerp(y, player_id.y + 14, 0.3);
                x = lerp(x, step_x + 60*leg_dir, .3);
            }
            break;
            case 4:
            foot_angle = -90;
            leg_angle = -player_id.rot_angle+90;
            hsp = 0;
            vsp = 0;
            if !player_id.hitpause{
                y = lerp(y, player_id.y + 14, 0.3);
                x = lerp(x, step_x + 30*leg_dir, .3);
            }
            break;
        }
        break;
        
        case AT_FTILT:
        foot_sprite = (win == 3);
        var posy = [player_id.y - 50, player_id.y - 20, player_id.y - 10];
        var posx = [origp[0] + 20*leg_dir, origp[0] + max_dist*leg_dir, origp[0] + 20*leg_dir];
        foot_angle = (win%3 != 0? 90 - 90*leg_dir: noone);
        leg_angle = -player_id.rot_angle+90 +30*leg_dir*(win%3 != 0);
        hsp = 0;
        vsp = 0;
        if !player_id.hitpause{
            y = lerp(y, posy[win-1], .2);
            x = lerp(x, posx[win-1], .2);
        }
        break;
        
        case AT_UTILT:
        foot_angle = (free? noone: -90);;
        leg_angle = -player_id.rot_angle+90 - 180*((win == 2 && win_time > 6) || (win == 3 && win_time < 3));
        hsp = 0;
        vsp = 0;
        foot_sprite = (win == 1);
        var posy = [player_id.y - 10, player_id.y - (win_time > 6? max_dist: 50), player_id.y - 10];
        var posx = [origp[0] + 10*leg_dir, origp[0] + (win_time > 6? 10:200)*leg_dir, step_x];
        if !player_id.hitpause{
            y = lerp(y, posy[win-1], .2);
            x = lerp(x, posx[win-1], .2);
        }
        break;
        
        case AT_DTILT:
        foot_angle = (free? noone: -90);;
        leg_angle = -player_id.rot_angle+90 - 180*(win == 1) - 90*(win == 2)*player_id.spr_dir;
        hsp = 0;
        vsp = 0;
        foot_sprite = (win == 3? free: 1);
        var posy = [player_id.y - 30, player_id.y - 30, player_id.y - 10];
        var posx = [origp[0] - 30*player_id.spr_dir, origp[0] + max_dist*dcos(player_id.body_angles[0] + 60*leg_id)*3/2, step_x];
        if !player_id.hitpause{
            y = lerp(y, posy[win-1], .3);
            x = lerp(x, posx[win-1], .3);
        }
        break;
        
        case AT_DAIR:
        var is_leg2 = (self == player_id.used_legs[1]);
        foot_sprite = (win != 3+is_leg2 && win != clamp(win, 5, 6));
        foot_angle = (!foot_sprite? -90: noone);
        leg_angle = -player_id.rot_angle+90 - 50*leg_dir*!foot_sprite;
        hsp = 0;
        vsp = 0;
        var posy = [player_id.y - 10, player_id.y - 40, player_id.y + 80, player_id.y - 40, player_id.y - 40, player_id.y + 90, player_id.y - 10,
                    player_id.y - 10, player_id.y - 40, player_id.y - 40, player_id.y + 80, player_id.y - 40, player_id.y + 80, player_id.y - 10];
        var posx = [step_x, step_x + 10*leg_dir, player_id.x + 60*leg_dir, step_x + 10*leg_dir, step_x + 10*leg_dir, player_id.x + 60*leg_dir, step_x,
                    step_x, step_x + 10*leg_dir, step_x + 10*leg_dir, player_id.x + 40*leg_dir, step_x + 10*leg_dir, player_id.x + 40*leg_dir, step_x];
        if !player_id.hitpause{
            y = lerp(y, posy[win-1 + 7*is_leg2], .3);
            x = lerp(x, posx[win-1 + 7*is_leg2], .3);
        }
        break;
        
        case AT_FAIR:
        foot_angle = noone;
        leg_angle = -player_id.rot_angle+90 + 90*(win == 4) + 40*(win == 1)*leg_dir;
        hsp = 0;
        vsp = 0;
        foot_sprite = (win == clamp(win, 3, 4));
        var posy = [player_id.y - 120, player_id.y + 60, player_id.y - 10, origp[1] - 50, player_id.y - 10];
        var posx = [origp[0] + 30*leg_dir, origp[0] + 130*leg_dir, step_x, player_id.x + max_dist*dcos(player_id.body_angles[0] + 60*leg_id), step_x];
        if !player_id.hitpause{
            y = lerp(y, posy[win-1], (win = 4? 1: .2));
            x = lerp(x, posx[win-1], (win = 4? 1: .2));
        }
        break;
        
        case AT_BAIR:
        foot_angle = noone;
        leg_angle = -player_id.rot_angle-90 + 180*(win = 3);
        hsp = 0;
        vsp = 0;
        foot_sprite = free;
        var posy = [origp[1] + 80, origp[1], player_id.y - 10, origp[1] - 120];
        var posx = [origp[0] + 40*leg_dir, origp[0] + 120*leg_dir, step_x, origp[0] + 80*leg_dir];
        if !player_id.hitpause{
            y = lerp(y, posy[win-1 + 2*(win == 2 && win_time >= 5)], .3);
            x = lerp(x, posx[win-1 + 2*(win == 2 && win_time >= 5)], .3);
        }
        break;
        
        case AT_UAIR:
        foot_angle = noone;
        leg_angle = -player_id.rot_angle+90;
        var posy = [player_id.y - 10, player_id.y - 30, player_id.y + 40, player_id.y - 10];
        var posx = [step_x, step_x, step_x, step_x];
        hsp = 0;
        vsp = 0;
        foot_sprite = 1;
        if !player_id.hitpause{
            y = lerp(y, posy[win-1], .2);
            x = lerp(x, posx[win-1], .2);
        }
        break;
        
        case AT_DATTACK:
        leg_angle = -player_id.rot_angle+90;
        hsp = 0;
        vsp = 0;
        foot_angle = (free? noone: -90);
        foot_sprite = 0;
        if !player_id.hitpause && (win == 1? win_time >= 6: 1){
            x = lerp(x, step_x + 10*player_id.spr_dir*(win == 1), .4);
            y = lerp(y, player_id.y + + 10 + (-player_id.col_displace - 30 - abs(lengthdir_y(point_distance(player_id.x, 0, step_x, 0), player_id.rot_angle))*leg_dir*player_id.spr_dir)*(win == 1), .2);
        }else if !player_id.hitpause && win == 1 && win_time <= 1{
            x = lerp(x, step_x, 1);
            y = lerp(y, player_id.y + 10 , 1);
        }
        break;
        
        case AT_JAB:
        leg_angle = -player_id.rot_angle+90;
        hsp = 0;
        vsp = 0;
        var posy = [player_id.y - 120, player_id.y + 10];
        var posx = [step_x + 20*leg_dir, step_x + 20*leg_dir];
        var leg2 = player_id.used_legs[1] == self;
        if !player_id.hitpause{
            if win == clamp(win, 2 + 3*leg2, 3 + 3*leg2){
                foot_sprite = 0;
                foot_angle = -90;
                y = lerp(y, posy[win-2 - 3*leg2], .4);
                x = lerp(x, posx[win-2 - 3*leg2], .3);
            }else{
                foot_angle = (free? noone: -90);
                foot_sprite = free;
                if win = 8 || (win == 9 && win_time < 4) y = lerp(y, player_id.y - 20 , .2);
                else{
                    x = lerp(x, step_x - 10*leg_dir, .2);
                    y = lerp(y, player_id.y - 40 , .2);
                }
            }
        }
        break;
        
        case AT_TAUNT:
        leg_angle = -player_id.rot_angle+90;
        hsp = 0;
        vsp = 0;
        foot_angle = -90;
        foot_sprite = 0;
        if !player_id.hitpause{
            x = lerp(x, step_x, 1);
            y = lerp(y, player_id.y + 10 , 1);
        }
        break;
    }
    if player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR state = 0;
    break;
}
/*if leg_id = 0{
    var e = [0, 0, 0, 0, 0, 0];
    with obj_article1 if player_id = other.player_id e[@leg_id] = state;
    //print(e)
}*/
//limit article position
var orig_angle = point_direction(x, y, origp[0], origp[1]);
if orig_dist > max_dist - clamp(vsp, 0, vsp)*2{
    x = origp[0] - dcos(orig_angle)*(max_dist - 1);
    y = origp[1] + dsin(orig_angle)*(max_dist - 1);
}

if force_vsp != noone vsp = force_vsp;
force_vsp = noone;
prev_free = free;

#define enable_grav()
{
    vsp = clamp(vsp + lengthdir_y(grav, player_id.rot_angle - 90), -player_id.max_fall, player_id.max_fall);
    hsp = clamp(hsp + lengthdir_x(grav, player_id.rot_angle - 90), -player_id.max_fall, player_id.max_fall);
}