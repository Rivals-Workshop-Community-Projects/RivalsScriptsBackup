//article1_update
timer++;
if shot_fx_timer shot_fx_timer--;
if anim_bleed anim_bleed--;
sprite_change_offset("drone_mask2", 32 -3*spr_dir, 32);
var radar_condition = state == clamp(state, 2, 4) && !(state == 3 || anim_bleed);
radar_alpha = lerp(radar_alpha, radar_condition, 0.2 + !radar_condition);
targets = [];
if state = clamp(state, 2, 4) with oPlayer if !invincible && state != PS_DEAD && state != PS_RESPAWN && /*(x > get_stage_data(SD_LEFT_BLASTZONE_X) + 200 && x < get_stage_data(SD_RIGHT_BLASTZONE_X) - 200) &&*/ self != other.player_id{
    var j = 0;
    with other repeat(floor(point_distance(0, y, 0, room_height)/30) + 1){
        if collision_rectangle(x - j*8 - 4, y + j*30, x + j*8 + 4, y + 30 + j*30, other, 1, 1){
            if !other.targeted[player-1] sound_play(sound_get("sfx_drone_found"), 0, noone, 0.8);
            other.targeted[player-1] = 360;
            break;
        }
        j++;
    }
    if targeted[other.player-1] array_push(other.targets, self);
}
player_id.targets = targets;
if array_length(targets) && !array_length(targets) spawn_hit_fx(x, y-10, player_id.target_excl);
switch state{
    case 0: //throw
    image_index = (timer/3)%6;
    vsp += 0.25;
    if place_meeting(x + hsp, y, asset_get("par_block")){
        hsp*=-1;
        spr_dir *= -1;
    }
    if place_meeting(x, y + vsp, asset_get("par_block")) || (vsp > 0 && place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) vsp*=-1;
    if timer >= 30 && y >= player_id.drone_max set_st(1);
    break;
    case 1: //deploy
    image_index = 6 + (timer/4);
    hsp = lerp(hsp, 0, 0.1);
    if abs(hsp) < .2 hsp = 0;
    vsp = lerp(vsp, 0, 0.1);
    if abs(vsp) < .2 vsp = 0;
    if timer == 8{
        sound_play(sound_get("sfx_sniper_load"), 0, noone, 1, 1.4);
        sound_play(sound_get("sfx_shotload2"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
    }
    if timer >= 32 set_st(2);
    break;
    case 2: //idle
    ignores_walls = 1;
    mask_index = sprite_get("drone_mask2");
    image_index = 12 + (timer/4)%6 + 6.75*sign(anim_bleed);
    hsp = lerp(hsp, 0, 0.1);
    if abs(hsp) < .2 hsp = 0;
    vsp = lerp(vsp, 0, 0.1);
    if abs(sp) < .2 vsp = 0;
    if has_rune("J"){
        var dir = 0;
        with oPlayer if self != other.player_id && targeted[other.player-1] && y > other.y && point_distance(x, 0, other.x, 0) > point_distance(y, 0, other.y, 0)/3 + 20 dir += sign(x - other.x);
        if(spr_dir? hsp < 8: hsp > -8) hsp += dir/2;
    }
    if !anim_bleed{
        var dir = 0;
        with oPlayer if self != other.player_id && targeted[other.player-1] dir += sign(x - other.x);
        if dir != 0 && sign(dir) != spr_dir{
            spr_dir *= -1;
            set_st(4);
        }
        if trigger_explosion set_st(5);
        with pHitBox if player_id != other.player_id && !other.hit_death && hit_priority && type != 2 && instance_exists(collision_circle(other.x -1 + 3*other.spr_dir, other.y, 20, self, 1, 0)){
            sound_play(sound_effect);
            spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect);
            var an = get_hitbox_angle(self);
            var kb = 20
            with other{
                immune = other.player_id;
                hit_death = 1;
                hsp = lengthdir_x(kb, an)*1.1;
                vsp = lengthdir_y(kb, an)*0.5;
                set_st(5);
            }
        }
    }
    with pHitBox if !other.hit_death && !(hsp == 0 && vsp == 0) && hit_priority && !does_not_reflect && type = 2 && (sign(hsp) == sign(other.x - x) || sign(vsp) == sign(other.y - y)) && instance_exists(collision_circle(other.x -1 + 3*other.spr_dir, other.y, 25, self, 1, 0)) with other{
        var angle = point_direction(x - 3*spr_dir, y, other.x, other.y) - angle_difference(point_direction(0, 0, other.hsp, other.vsp) - 180, point_direction(x - 3*spr_dir, y, other.x, other.y));
        var sp = point_distance(0, 0, other.hsp, other.vsp);
        other.hsp = lengthdir_x(sp, angle);
        other.vsp = lengthdir_y(sp, angle);
        sound_play(sound_get("sfx_drone_reflect"), 0, noone, 1, 1);
        other.can_hit_self = 1;
        set_st(3);
        other.damage = floor(other.damage*1.5);
        if "is_a_rosso_missile" in other other.should_angle = 0;
        if "is_V1_ultrakill" in other.player_id && !(other.rosso_bounce%2) other.rosso_bounce++;
    }
    break;
    case 3: //shine
    image_index = 18 + timer/4;
    if snipe && timer = 1{
        reset_hbox();
        target_pos = [];
        no_target = 0;
        var g = 0;
        if array_length(targets) repeat(array_length(targets)){
            array_push(target_pos, [targets[g].x, targets[g].y - targets[g].char_height]);
            g++;
            no_target = 2;
        }else{
            fire_end[@0] = fire_pos[0];
            fire_end[@1] = fire_pos[1];
            shot_angle = point_direction(x - 3*spr_dir, y, fire_pos[0], fire_pos[1]) - angle_difference(shot_angle - 180, point_direction(x - 3*spr_dir, y, fire_pos[0], fire_pos[1]));
            shot_num = 0;
            while(fire_end[0] == clamp(fire_end[0], 0, room_width) && fire_end[1] == clamp(fire_end[1], 0, room_height) && !shot_num && !position_meeting(fire_end[0], fire_end[1], asset_get("par_block"))){
                fire_end[@0] += lengthdir_x(10, shot_angle)*player_id.spr_dir;
                fire_end[@1] += lengthdir_y(10, shot_angle)*player_id.spr_dir;
                var colp = instance_position(fire_end[0], fire_end[1], pHurtBox);
                var colh = instance_position(fire_end[0], fire_end[1], pHitBox);
                if !shot_num && instance_exists(colp) && colp.player != player{
                    shot_num++;
                }
                if !shot_num && instance_exists(colh) && colh.player == player && colh.attack == AT_NSPECIAL{
                    shot_num++;
                }
                
                var colart = instance_position(fire_end[0], fire_end[1], asset_get("obj_article_parent"));
				
				if !shot_num && instance_exists(colart) && colart.is_hittable && array_find_index(hit_list, colart) < 0 && colart != drone{
					shot_num++;
                    var e = spawn_hit_fx(floor(fire_end[0]), floor(fire_end[1]), snipe_hit);
				    e.depth = depth-2;
				    var hpos = colart;
				    if floor(fire_end[1]) == clamp(floor(fire_end[1]), hpos.bbox_top, hpos.bbox_top + (hpos.bbox_bottom - hpos.bbox_top)*.1){
				        sound_play(asset_get("sfx_abyss_hex_hit"), 0, noone, 1);
				    }
				    sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
				    sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .6, 1.5);
				}
				
				//v1 compat
				var object = instance_position(fire_end[0], fire_end[1], pHitBox);
				if !shot_num && object != noone && "is_V1_ultrakill" in object.player_id && object.type == 2 && "hitscannable" in object && object.hitscannable && object.hitscanned == noone{
					object.hsp = 0;
					object.splitshot = (object.vsp >= 8 || object.hitbox_timer == clamp(object.hitbox_timer, 20, 30)) && object.attack == AT_NSPECIAL && object.hbox_num == 3;
					object.vsp = 0;
					object.grav = 0;
					var alt = (!alt_cur? 32: alt_cur);
					object.hitscanned = [fire_end[0], fire_end[1], 10, 1, player, self, make_color_rgb(get_color_profile_slot_r(alt, 1), get_color_profile_slot_g(alt, 1), get_color_profile_slot_b(alt, 1)), 1];
					object.hitscanned_delay = 3;
					shot_num++;
				}
            }
            array_push(target_pos, fire_end);
            set_snipe_strength();
            no_target = 1;
        }
        snipe = 0;
    }
    if timer = 2 && no_target == 1 create_hitbox(AT_FSPECIAL, 6, floor(fire_end[0]), floor(fire_end[1]));
    else if timer = 2 && no_target = 2{
        var f = 0;
        repeat(array_length(targets)){
            with player_id{
                set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, other.targets[f].char_height);
                set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, other.targets[f].char_height);
            }
            create_hitbox(AT_FSPECIAL, 6, floor(targets[f].x), floor(targets[f].y - targets[f].char_height));
            if targets[f].targeted[player-1] != 240 targets[f].targeted[player-1] = 1;
            f++;
        }
    }
    if timer >= 3{
        set_st(2);
        anim_bleed = 17;
        no_target = 0;
    }
    break;
    case 4: //turn
    image_index = 23 + timer/4;
    if timer >= 15 set_st(2);
    if trigger_explosion set_st(5);
    with pHitBox if player_id != other.player_id && !other.hit_death && hit_priority && type != 2 && instance_exists(collision_circle(other.x -1 + 3*other.spr_dir, other.y, 20, self, 1, 0)){
        sound_play(sound_effect);
        spawn_hit_fx(lerp(x, other.x, 0.5), lerp(y, other.y, 0.5), hit_effect);
        var an = get_hitbox_angle(self);
        var kb = 20
        with other{
            immune = other.player_id;
            hit_death = 1;
            hsp = lengthdir_x(kb, an)*1.1;
            vsp = lengthdir_y(kb, an)*0.5;
            set_st(5);
        }
    }
    with pHitBox if !other.hit_death && !(hsp == 0 && vsp == 0) && hit_priority && !does_not_reflect && type = 2 && (sign(hsp) == sign(other.x - x) || sign(vsp) == sign(other.y - y)) && instance_exists(collision_circle(other.x -1 + 3*other.spr_dir, other.y, 25, self, 1, 0)) with other{
        var angle = point_direction(x - 3*spr_dir, y, other.x, other.y) - angle_difference(point_direction(0, 0, other.hsp, other.vsp) - 180, point_direction(x - 3*spr_dir, y, other.x, other.y));
        var sp = point_distance(0, 0, other.hsp, other.vsp);
        other.hsp = lengthdir_x(sp, angle);
        other.vsp = lengthdir_y(sp, angle);
        sound_play(sound_get("sfx_drone_reflect"), 0, noone, 1, 1);
        other.can_hit_self = 1;
        set_st(3);
        if "is_a_rosso_missile" in self should_angle = 0;
    }
    break;
    case 5: //explode
    if timer = 1{
        sound_stop(float_sfx);
        discharge_sfx = sound_play(asset_get("sfx_absa_dashup"), 0, noone, 1, 1);
        with oPlayer if self != other.player_id targeted[other.player-1] = 0;
    }
    ignores_walls = 1;
    if timer < 20{
        with pHurtBox if playerID != other.immune && (other.hit_death? 1: player != other.player) && place_meeting(x, y, other) other.timer = 19;
        vsp += 0.5 + .2*hit_death;
    }
    if place_meeting(x + hsp, y, asset_get("par_block")) hsp*=-1;
    if place_meeting(x, y + vsp, asset_get("par_block")) timer = 20;
    mask_index = sprite_get("drone_mask1");
    image_angle = (timer >= 20? 0: -timer*sign(hsp)*10 -timer*(hsp = 0)*2*spr_dir);
    if timer = 20 && boom{
        boom = 0;
        sound_stop(discharge_sfx);
        sound_play(asset_get("sfx_springgo"), 0, noone, 1, 1.1);
        sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, 1.1);
        sound_play(asset_get("sfx_burnapplied"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, noone, 1, 1);
        sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, 1, 1);
        var h = create_hitbox(AT_DSPECIAL, 1, abs(x), abs(y));
        h.can_hit_self = hit_death;
        hsp = 0;
        vsp = 0;
        timer++;
    }
    image_index = 27 + timer/4;
    if timer >= 39{
        player_id.drone = noone;
        instance_destroy(self);
        exit;
    }
    break;
}

#define set_st(num)
state = num;
timer = 0;

#define set_snipe_strength()
with player_id{
    set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 15 - 14*has_rune("C") + 15*has_rune("E")*!has_rune("C") + floor(point_distance(x, y, fire_end[0], fire_end[1])/150));
    set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.2);
    set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 15);
}

#define reset_hbox()
with player_id{
    set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 6 - 5*has_rune("C") + 6*has_rune("E")*!has_rune("C"));
    set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, .8);
    set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, .8);
    set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 8);
}