//hitbox_update
if player_id != noone && attack == AT_NSPECIAL && hbox_num == 1 && "is_what" in self {
    if hitbox_timer > 30 && !player_id.transcendent_items plasma_safe = false;
    if free {
        hit_priority = 2;
        proj_angle += 15*spin*spr_dir;
    }
    else if !(is_what == "bumper" || is_what == "subspace_bomb") {
        hit_priority = 0;
        proj_angle = 0;
    }
    if !(is_what == "boomerang" || is_what == "subspace_bomb") && !soft_dropped && enemies == 1 {
        var hit_someone = false;
        for (var i = 1; i < array_length(can_hit); i ++) {
            if can_hit[i] == false {
                hit_someone = true;
                i += 99999;
            }
        }
        if hit_someone {
            soft_dropped = true;
            hsp = 0;
            vsp = -8;
        }
    }
    var picked_up = false;
    if !(is_what == "bumper" || is_what == "subspace_bomb") with player_id if item_attack == false && item_held == "none" {
        if attack != AT_NSPECIAL && attack != AT_NTHROW && attack != AT_FTHROW && attack != AT_UTHROW && attack != AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND ){
            if window == 1 && window_timer == 2 {
                if distance_to_object(other) < 32*player_scale { 
                    picked_up = true;
                }
            }
        }
    }
    if picked_up {
        with player_id sound_play(sound_get("item_pickup"));
        player_id.item_held = is_what;
        destroyed = true;
        player_id.item_attack = true;
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if x < -10 || x > room_width + 10 || y > room_height + 10 {
        destroyed = true;
    }
    script_execute(num);
} else if attack == AT_DSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2  {
    proj_break = 1;
    if !free destroyed = true;
} 
#define empty_script()
    return;
#define do_beamsword() 
    player_id.beamsword_out = true;
    return;
#define do_boomerang()
    player_id.ow_primid_boomerang_on_floor = !free;
    player_id.boomerang_out = true;
    if !soft_dropped {
        grav = 0;
        through_platforms = 3;
        air_friction = 0;
        hsp *= 0.9;
        vsp *= 0.9;
        if hitbox_timer > 10 && !start_returning && point_distance(hsp,vsp,0,0) < 2 {
            start_returning = true;
            if player_id.boomerang_back can_hit = array_create(array_length(can_hit),true);
        }
        if !free {
            soft_dropped = true;
                hsp = 0;
                vsp = -8;
        }
        if start_returning {
            if point_distance(player_id.x,player_id.y-16,x,y) < 32 {
                soft_dropped = true;
                hsp = 0;
                vsp = -8;
            }
            var angle = point_direction(x,y,player_id.x,player_id.y-16);
            hsp += lengthdir_x(2,angle);
            vsp += lengthdir_y(2,angle);
        }
    } else {
        grav = 0.65;
    }
    return;
#define do_superscope()
    player_id.superscope_out = true;
    return;
#define do_bumper()
    if "bumper_health" not in self {
        bumper_health = 3;
        bumper_cooldown = 30;
        print("nooo");
    }
    print("running");
    sound_effect = sound_get("bumper_hit");
    if (player_id.bumper_id != self && !player_id.bumper_unlimited) || bumper_health <= 0 destroyed = true;
    proj_angle = 0;
    if bumper_cooldown <= 0 { 
        for(var i = 0; i < array_length(can_hit); i ++) if !can_hit[i] {
            bumper_cooldown = 30;
            print("hit");
            can_hit = array_create(array_length(can_hit),true);
            bumper_health --;
        }
    } else bumper_cooldown -=1;
    print(bumper_cooldown)
    image_xscale = 32/200;
    image_yscale = 32/200;
        sdi_mult = 5;
        hit_flipper = 8;
        hitstun_factor = 0.02;
        damage = 1;
        kb_value = 15;
        kb_scale = 0;
        dumb_di_mult = 2;
    if hitbox_timer > 30 || soft_dropped {
        grav = 0;
        player = 0;
        hsp *= 0.5;
        vsp *= 0.5;
    } else {
        
    }
    return;
#define do_pop()
    player_id.pop_limit_at ++;
    if !free && player_id.pop_limit_at > player_id.pop_max_limit {
        destroyed = true;
    }
    return;
#define do_bomb()
    player_id.fs_using_final_smash = false;
    length = 360;
    grav = 0;
    hsp *= 0.9;
    vsp *= 0.9;
    if hitbox_timer == 60 
            sound_play(asset_get("sfx_boss_vortex"));
    if hitbox_timer < 180 {
        if point_distance(hsp,vsp,0,0) > 2 {
            hitbox_timer = 0;
        } else {
            var count = 0;
            do {
                var angle = random_func(count,360,true);
                var that = spawn_hit_fx(x+lengthdir_x(hitbox_timer,angle),y-16+lengthdir_y(hitbox_timer,angle),bug_fx);
                that.spr_dir = 2;
                that.image_yscale = 2;
                that.direction = angle+180;
                with that i_am_a_shadow_bug = true;
                that.speed = hitbox_timer/60;
            } while ++count < 6;
        }
        image_index = hitbox_timer > 60;
        proj_angle = 0;
        mask_index = asset_get("empty_sprite");
        if hitbox_timer == 158 {
            var large = spawn_hit_fx(x,y,grow_fx);
            large.depth = depth - 1;
            do {
                var angle = random_func(count,360,true);
                var that = spawn_hit_fx(x,y,bug_fx2);
                that.spr_dir = 2;
                that.image_yscale = 2;
                that.direction = angle+180;
                with that i_am_a_shadow_bug = true;
                that.speed = 15;
            } while ++count < 35;
        }
    } else {
        hit_flipper = 9;
        mask_index = asset_get("hitbox_circle_spr");
        image_index = hitbox_timer;
        proj_angle = hitbox_timer;
        grounds = 1;
        walls = 1;
        transcendent = 1;
        enemies = 1;
        sprite_index = sprite_get("subspace_hole");
        image_xscale = 512/200;
        image_yscale = 512/200;
        if (hitbox_timer % 10 == 0) {
            can_hit = array_create(array_length(can_hit),true);
            if hitbox_timer > length - 20 {
                hit_flipper = 0;
                kb_angle = 45;
                kb_scale = 1.3;
                kb_value = 12;
            }
        }
        var count = 0;
            do {
                var angle = random_func(count,360,true);
                var that = spawn_hit_fx(x+lengthdir_x(500,angle),y-16+lengthdir_y(500,angle),bug_fx);
                that.spr_dir = 2;
                that.image_yscale = 2;
                that.direction = angle+180;
                with that i_am_a_shadow_bug = true;
                that.speed = 25/3;
            } while ++count < 7;
    }
    return;
#define do_hammer()
    if squeaky {
        hit_priority = 0;
        if !free destroyed = true;
    }
    return;
#define do_bellows()
    player_id.superscope_out = true;
    return;
