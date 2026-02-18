if attack = AT_USTRONG{
    if player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR{
        destroyed = true
    }
    if hbox_num = 5{
    if player_id.window = 2{
        destroyed = 1
    }
    if  hitbox_timer < 3{
        image_index = 0
    }else if hitbox_timer < 5{
        image_index = 1
    }else{
        image_index = 2
    }
        x = player_id.x
    }
    if hbox_num = 1{
        proj_angle = -90 * spr_dir
        if player_id.window = 2{
            length = 15
            hitbox_timer = 1
            vsp = -3
        }
        if player_id.window = 3{
            vsp += 1
        }
    }
    if hbox_num = 2{
        if player_id.window = 3 && player_id.window_timer = 5{
            length = 15
            hitbox_timer = 1
            hsp = -3 * spr_dir
        }
        if player_id.window = 3 && player_id.window_timer > 5{
            hsp += 1 * spr_dir
        }
        proj_angle = 0 * spr_dir
        }
    if hbox_num = 3{
        if player_id.window = 3 && player_id.window_timer = 1{
            length = 15
            hitbox_timer = 1
            hsp = 3 * spr_dir
        }
        if player_id.window = 3 && player_id.window_timer > 1{
            hsp -= 1 * spr_dir
        }
        proj_angle = -180 * spr_dir
    }
    if hbox_num = 4{
        if player_id.window = 3 && player_id.window_timer = 3{
            length = 15
            hitbox_timer = 1
            vsp = 3
        }
        if player_id.window = 3 && player_id.window_timer > 3{
            vsp -= 1
        }
        proj_angle = 90 * spr_dir
    }
}
    
    
if attack = AT_DTILT{
    if hitbox_timer = 1 && hbox_num = 1{
        x = player_id.x + 45 * spr_dir
    }
        proj_angle = -90
    if hitbox_timer < 5{
    image_index = 0
    vsp = 0.5
    hsp = 0
}else if hitbox_timer < 10{
    image_index = 1
}else if hitbox_timer > 10{
    image_index = 2
}
    player_id.move_cooldown[AT_DTILT] = 2
    if hitbox_timer >= 10{
    if vsp > -20{
        vsp -= 0.5
        }   
    }
}

if attack = AT_FTILT && hbox_num = 3{
    if spr_dir = 1{
    proj_angle = 23
    }else{
    proj_angle = -23
    
    }
}

if attack = AT_FTILT && hbox_num = 2{
    if spr_dir = 1{
    proj_angle = 0
    }else{
    proj_angle = -0
    
    }
}
if attack = AT_FTILT && hitbox_timer = 1{
    image_index = 0
}

if attack = AT_FTILT && hbox_num = 1{
    if spr_dir = 1{
    proj_angle = -30
    }else{
    proj_angle = 30
    }
}

if attack = AT_FTILT && hbox_num = 4{
    if spr_dir = 1{
    proj_angle = -40
    }else{
    proj_angle = 40
    }
}


if attack = AT_BAIR && hbox_num = 1{
    if spr_dir = -1{
    proj_angle = 15
    }else{
    proj_angle = -15 
    }
}

if attack = AT_BAIR && hbox_num = 2{
    if spr_dir = -1{
    proj_angle = -30
    }else{
    proj_angle = 30
    }
}
if attack = AT_BAIR && hitbox_timer >= 8{
    if spr_dir = -1{
    if hbox_num = 1{
        vsp = -1
        hsp += 0.3
    }
    if hbox_num = 2{
        hsp += 0.2
        vsp += 0.08
    }
    if hbox_num = 3{
        hsp += 0.3
    }
    }else{
    if hbox_num = 1{
        vsp = -1
        hsp -= 0.3
    }
    if hbox_num = 2{
        hsp -= 0.2
        vsp += 0.08
    }
    if hbox_num = 3{
        hsp -= 0.3
    }   
    }
}
if attack = AT_BAIR{
if hitbox_timer < 5{
    image_index = 0
    hsp = 0
    vsp = 0
}else if hitbox_timer < 10{
    image_index = 4
}else if hitbox_timer < 13{
    image_index = 3
}else if hitbox_timer < 90{
    image_index = 2
}else{
    destroyed = true
}
}
    
if attack = AT_DSPECIAL{
    can_hit_self = true
}
if (attack == AT_BAIR or attack = AT_NSPECIAL or attack = AT_DTILT) && hitbox_timer == length - 1{
        spawn_hit_fx( x, y, 144 );    
        }
if attack = AT_USPECIAL{
    if (hitbox_timer == length - 1){
        if hbox_num = 1{
        spawn_hit_fx( x + 0*spr_dir, y - 6, 144 );
        }else{
        spawn_hit_fx( x + 0*spr_dir, y - 6, 14 );    
        }
    }
    if hbox_num = 1{
        if spr_dir = 1{
        proj_angle = -55
        }else{
            proj_angle = 55
        }
        if hitbox_timer < 3{
            image_index = 0
        }else if hitbox_timer < 6{
        image_index = 1
        }else{
        image_index = 2
        }
    }
    if spr_dir = 1{
    if hbox_num = 2{
    proj_angle = -60
    }else if hbox_num = 3{
    proj_angle = -45
    }else if hbox_num = 4{
    proj_angle = -30
    }else if hbox_num = 5{
    proj_angle = -15
    }else if hbox_num = 6{
    proj_angle = 0
    }
    }else{
    if hbox_num = 2{
    proj_angle = 60
    }else if hbox_num = 3{
    proj_angle = 45
    }else if hbox_num = 4{
    proj_angle = 30
    }else if hbox_num = 5{
    proj_angle = 15
    }else if hbox_num = 6{
    proj_angle = 0
    }    
    }
}

if attack = AT_UAIR && hbox_num = 6{
if player_id.free = 0 or player_id.state != PS_ATTACK_AIR or attack != AT_UAIR or hitbox_timer == length - 1{
        destroyed = true
        uair_destroy.hit_angle = proj_angle
    }
    x = player_id.x 
    y = player_id.y-90
    proj_angle += 7
    if hitbox_timer < 6{
        image_index = 0
    }else if hitbox_timer < 12{
        image_index = 2   
    }else if hitbox_timer < 20{
        image_index = 3
    }else if hitbox_timer < 22{
        image_index = 4
    }else if hitbox_timer < 30{
        image_index = 4
    }
} //130, 230, 30, 330
if attack = AT_NSPECIAL && proj_angle != 180 && proj_angle != 0{
    player_id.angle_used_nspecial = 1
}
if attack = AT_NSPECIAL{
if hitbox_timer < 7{
        if !player_id.joy_pad_idle && player_id.angle_used_nspecial = 0{
            if player_id.joy_dir < 140 && player_id.spr_dir = -1{
                proj_angle = 140
            }else if player_id.joy_dir > 220 && player_id.spr_dir = -1{
                proj_angle = 220 
            }else if player_id.joy_dir > 40 && player_id.joy_dir < 220 && player_id.spr_dir = 1{
                proj_angle = 40 
            }else if player_id.joy_dir < 320 && player_id.joy_dir > 40 && player_id.spr_dir = 1{
                proj_angle = 320
            }else{
                proj_angle = player_id.joy_dir
            }
        }
        if !player_id.joy_pad_idle{
    	hsp = lerp(hsp, 9.3 * dcos(proj_angle), 1);
        vsp = lerp(vsp, -9.3 * dsin(proj_angle), 1);
        }
    }
    if hitbox_timer < 5{
    image_index = 0
}else if hitbox_timer < 10{
    image_index = 1
}else if hitbox_timer > 10{
    image_index = 2
}
}

if attack = AT_DSTRONG && (hbox_num = 1 or hbox_num = 2 or hbox_num = 3 or hbox_num = 4){
    if hbox_num != 3{
    can_tech = 1
    }
    if hitbox_timer = 1{
    if random_func(3, 101, 1) < 50{
        sprite_index = sprite_get("carosal_duck");
    }
    if random_func(3, 101, 1) >= 50 && random_func(3, 100, 1) != 99 && random_func(3, 100, 1) != 100 {
        sprite_index = sprite_get("carosal_horse");
    }
    if random_func(3, 101, 1) >= 99{
        sprite_index = sprite_get("carosal_everyman");
    }
    }
    if player_id.state != PS_ATTACK_GROUND{
        destroyed = true
    }
    force_depth = 1
    if hitbox_timer = 1{
    image_index = 6
    depth = player_id.depth+hbox_num;
    }
    if image_index = 0{
        hsp = -8 * spr_dir
    }
    if image_index = 1{
        hsp = -7 * spr_dir
    }
    if image_index = 2{
        hsp = -3 * spr_dir
        if hbox_num = 1{
        depth = player_id.depth+3;}
        if hbox_num = 2{
        depth = player_id.depth+2;}
        if hbox_num = 3{
        depth = player_id.depth+1;}
    }
    if image_index = 3{
        hsp = 2 * spr_dir
    }
    if image_index = 4{
        hsp = 3 * spr_dir
    }
    if image_index = 5{
        hsp = 5 * spr_dir
    }
    if image_index = 6{
        hsp = 8 * spr_dir
    }
    if image_index = 7{
        hsp = 7 * spr_dir
    }
    if image_index = 8{
        hsp = 3 * spr_dir
    }
    if image_index = 9{
        depth = player_id.depth-hbox_num;
        hsp = -3 * spr_dir
    }
    if image_index = 10{
        hsp = -7 * spr_dir
    }
    if image_index = 11{
        hsp = -8 * spr_dir
    }
    if hitbox_timer > 50{
        destroyed = true
    }
}

if attack = AT_NSPECIAL_2{
    x = player_id.x
    if vsp < 25{
    vsp += 0.65
    }
        if y >= player_id.y - 70{
    destroyed = 1
    }
}
/*if hitbox_timer < 15{
        //homing detection
            if (!in_hitpause) //should only work if the projectile isn't in hitpause
    {
        with (oPlayer) if (player != other.player) //make sure the player isn't the current owner of the projectile and isn't a clone
        {
            //if the target doesn't exist set it to the current player
            //otherwise if there is another, closer target, set the target to them instead
            if (other.home_target == noone) other.home_target = self;
            else if (distance_to_object(other) < point_distance(other.x, other.y, other.home_target.x, other.home_target.y)) other.home_target = self;
        }

        //apply homing to nearest target
        if (instance_exists(home_target))
        {
            //helps us detect the actual center of the target's hurtbox, otherwise it would aim for their feet
            if home_target.state = PS_HITSTUN{
            var near_angle = point_direction(x, y, home_target.x, home_target.y - home_target.char_height/2);
            hsp = lerp(hsp, home_max_speed * dcos(near_angle), home_turn_speed);
            vsp = lerp(vsp, -home_max_speed * dsin(near_angle), home_turn_speed);
        }
        }
        //optional - make projectile tilt along the direction it's moving (* make sure the projectile's sprite goes straight right for the best results)
        proj_angle = point_direction(x, y, x + hsp * spr_dir, y + vsp * spr_dir);
    }
}
}

