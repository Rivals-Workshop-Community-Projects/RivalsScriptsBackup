//hitbox_update

if (attack == AT_NSPECIAL) && (hbox_num == 1) {
    var angle = darctan2(-vsp, hsp);
    
    //player joy_dir uses 0 to 360, need to convert to -180 to 180
    var playerJoyDir = player_id.joy_dir;
    
    //autohoming
    var autohoming = has_rune("L"); //NSPECIAL arrows autohome.
    
    if autohoming {
        var nearestPlayer = noone;
        var nearestDist = 1000000;
        with oPlayer if id != other.player_id {
            var dist = distance_to_point(other.x, other.y);
            if dist < nearestDist {
                nearestPlayer = id;
                nearestDist = dist;
            }
        }
        
        playerJoyDir = darctan2(y - (nearestPlayer.y - nearestPlayer.char_height/1.2), nearestPlayer.x - x)
    }
    
    if (playerJoyDir >= 180) {
        playerJoyDir -= 360;
    }
    
    //angle difference determines whether we need to increase or decrease angle
    var angleDif = playerJoyDir - angle;
    if (angleDif >= 180) {
        angleDif -= 360;
    } else if (angleDif <= -180) {
        angleDif += 360;
    }
    
    var angle_turn = (echo ? 1.5 : 6);
    
    if has_rune("A") angle_turn *= 1.3; //NSPECIAL arrows are faster and more controllable.
    
    if (!player_id.joy_pad_idle) || autohoming {
        if (angle == 90) && (angleDif == 180) {
            angle -= angle_turn * spr_dir;
        } else if (angleDif > 1) {
            angle += angle_turn;
        } else if (angleDif < -1) {
            angle -= angle_turn;
        }
    }
    
    //set new hsp and vsp
    if !was_parried {
        hsp = dcos(angle) * projSpeed;
        vsp = -dsin(angle) * projSpeed;
    }
    
    var drawAngle = darctan2(-vsp*spr_dir, hsp * spr_dir);
    proj_angle = drawAngle;
    
    //trail location code
    for (var i = 1; i < array_length(trailArray); i += 1) {
        trailArray[i - 1] = trailArray[i];
    }
    if onscreen(x, y) trailArray[array_length(trailArray)-1] = [x - spr_dir*31*dsin(angle),y - spr_dir*31*dcos(angle),projSpeed,drawAngle,spr_dir];
    else trailArray[array_length(trailArray)-1] = undefined;
    
    //destroy if grounded
    if (!free) || (position_meeting(x, y, asset_get("par_block"))) {
        destroyed = true;
    }
    
    //kb angle depending on horizontal direction
    if hsp <= 0 {
        kb_angle = 90 + spr_dir*(90 - orig_angle);
    } else {
        kb_angle = 90 - spr_dir*(90 - orig_angle);
    }
}

if attack == AT_DTHROW && hbox_num == 1 {
    if !("hit_timer" in self) hit_timer = 0;
    
    if has_hit hit_timer++;
    
    if hitbox_timer == 6 {
        var hitbox = create_hitbox(AT_DTHROW, 2, x, y);
        hitbox.owner = owner;
        instance_destroy();
        exit;
    }
    /*
    if has_hit && owner.window_timer > 16 && hit_timer > 10 {
        with owner {
            shield_active = false;
            window = 3;
            window_timer = 0;
        }
    }
    */
}

if attack == AT_DTHROW && hbox_num == 3 { //proj reflection
    proj_reflect()
}

if attack == AT_DTHROW && hbox_num == 2 { 
    
    //player reflection
    var playsound = false;
    with oPlayer {
        if instance_place(x, y, other) && (state == PS_HITSTUN) && !hitpause && other.reflection_timer > 40 && !(last_player == other.player_id.player && last_attack == AT_DTHROW) {
            fake_hitpause = true;
            fake_hitstop = 8;
            fake_old_hsp = -hsp;
            fake_old_vsp = vsp;
            hsp = 0;
            vsp = 0;
            spr_dir *= -1;
            playsound = true;
        }
    }
    
    if hitbox_timer == 10 {
        has_hit = false;
    }
    
    if playsound {
        //make it so other orbitar hitbox timer is reset too
        with pHitBox {
            if player_id == other.player_id && attack == AT_DTHROW && hbox_num == 2 {
                reflection_timer = 0;
            }
        }
        sound_play(sound_get("orbitar_reflect"))
        spawn_hit_fx(x, y, 109)
    }
    
    //orbitar break
    with pHitBox {
        if !player_id.has_hit other.prev_hitbox_group = -1;
        var apply_hitpause = false;
        //fstrong/fspec reversal
        if (player_id == other.player_id || "is_pit" in player_id) && !player_id.was_reflected && ((attack == AT_FSTRONG && hbox_num == 3 && !has_hit) || (attack == AT_FTHROW && hbox_num == 2)) && place_meeting(x, y, other) && (hbox_group != other.prev_hitbox_group || hbox_group == -1) {
            player_id.was_reflected = true;
            player_id.spr_dir *= -1;
            player_id.hsp *= -1;
            player_id.old_hsp *= -1;
            sound_play(sound_get("orbitar_reflect"))
            spawn_hit_fx(x, y, 109)
            /*
            if attack == AT_FSTRONG && player_id.window_timer > 1 {
                player_id.window_timer = 1;
            }
            */
        }
        if type == 1 && hit_priority != 0 && damage > 0 && !has_hit && place_meeting(x, y, other) && (hbox_num != other.prev_hitbox_group || hbox_num == -1) /*&& other.owner.oPlayer_owner.state != PS_PARRY*/ { //meets threshhold for damage
            if ("is_pit" in player_id) && player_id.is_pit == true {
                if attack == AT_USPECIAL {
                    player_id.cancel_pratfall = true;
                    other.owner.hp -= 10;
                }
            }
            apply_hitpause = true;
        }
        
        if apply_hitpause {
        	other.prev_hitbox_group = hbox_num;
            has_hit = true;
            player_id.has_hit = true;
            
            if (!has_rune("C") && !other.player_id.phone_cheats[other.player_id.CHEAT_STRONG_SHIELD]) other.owner.hp -= damage; //Thrown DSPECIAL can never be broken.
            
            other.owner.hitstop = hitpause + 4;
            player_id.hitpause = true;
            player_id.hitstop_full = hitpause + 4;
            player_id.hitstop = player_id.hitstop_full;
            player_id.old_vsp = player_id.vsp;
            player_id.old_hsp = player_id.hsp;
            with other {
                sound_play(sound_get("orbitar_reflect"))
            }
            spawn_hit_fx(x, y, 109)
            sound_play(sound_effect)
        }
    }
}

if attack == AT_DTHROW && hbox_num == 4 {
    x = owner.x + owner.hsp;
    y = owner.y + owner.vsp;
}


if attack == AT_FSPECIAL && hbox_num == 1 {
    if was_reflected && reflection_timer == 0 {
        if reflection_count == 1 {
            hsp *= 1.2;
            kb_value = 8;
            damage *= 1.5;
            hitpause = 6;
        }
        
        if reflection_count > 8 destroyed = true;
    }
    if place_meeting(x, y, pHurtBox) && kb_value == 0 {
        var _hurtbox = instance_place(x, y, pHurtBox);
        if _hurtbox.playerID != player_id {
            sound_play(sound_effect)
        }
    }
}



if attack == AT_FTHROW && hbox_num == 1 {
	if was_parried && !reset_lifetime {
		reset_lifetime = true;
		hitbox_timer = 0;
	}
    if was_reflected && reflection_timer == 0 {
        if reflection_count == 1 {
            hsp *= (player_id.echo ? 1.1 : 1.4);
            kb_value *= (player_id.echo ? 1 : 1.2);
            damage *= (player_id.echo ? 1.2 : 1.5);
        }
        
        if reflection_count > 8 destroyed = true;
    }
    
    if player_id.echo {
        kb_value += 0.5
        damage += 0.8
        hitpause += 0.6
    }
    
    kb_value = clamp(kb_value, 0, 12)
    
    if destroyed sound_play(asset_get("sfx_ori_energyhit_medium"))
    
    //trail location code
    var drawAngle = darctan2(-vsp*spr_dir, hsp * spr_dir);
    proj_angle = drawAngle;
    for (var i = 1; i < array_length(trailArray); i += 1) {
        trailArray[i - 1] = trailArray[i];
    }
    projSpeed = sqrt(power(abs(hsp), 2) + power(abs(vsp),2));
    trailArray[array_length(trailArray)-1] = [x - spr_dir*11*dsin(proj_angle),y - 11*dcos(proj_angle),projSpeed,drawAngle,spr_dir];
    
    if (vsp != prev_vsp && !destroyed) || hitbox_timer == 1 {
        spawn_hit_fx(x, y, (player_id.echo ? 111 : 109))
    }
    prev_vsp = vsp;
}

reflection_timer++;

#define proj_reflect()
with pHitBox {
    if "is_pitbox" in self && instance_place(x, y, other) && reflection_timer > 10 {
        switch attack {
            case AT_FTHROW:
            vsp *= -1;
            if !player_id.phone_cheats[player_id.CHEAT_STRONG_SHIELD] && !has_rune("C") {
                other.owner.window = 3;
                other.owner.window_timer = 0;
            }
            case AT_NSPECIAL:
            case AT_FSPECIAL:
            case AT_FSPECIAL_2:
            
            //print("woag")
            reflection_timer = 0;
            hitbox_timer = 0;
            was_reflected = true;
            sound_play(sound_get("orbitar_reflect"))
            spawn_hit_fx(x, y, 109)
            hsp *= -1;
            vsp *= -1;
            spr_dir *= -1;
            reflection_count++;
            effect = 0;
            break;
        }
    } else if !("is_pitbox" in self) && type == 2 && !transcendent && hit_priority != 0 && instance_place(x, y, other) {
        destroyed = true;
    }
}

#define onscreen(x, y)
var offset = 800;
if (x > view_get_xview() - offset) && (x < view_get_xview() + view_get_wview() + offset) && (y < view_get_yview() + view_get_hview() + offset) && (y > view_get_yview() - offset) {
	return true;
} else {
	return false;
}