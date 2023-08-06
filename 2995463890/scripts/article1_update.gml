var destroyed = false;
//var info = state_info[state];
info = state_info[state]
new_state_timer = state_timer
can_be_grounded = (vsp >= 0 and !free)
depth = player_id.depth - 2

switch (state) {
    case PS_PRATFALL:
        image_angle = 90 + point_direction(0,0,hsp, vsp);
        
        if abs(point_distance(0,0, hsp, vsp)) > 4.6 and droplet_hitbox == noone {
            droplet_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y)
            droplet_hitbox.puddle = id;
        }
        
        if droplet_hitbox != noone and !instance_exists(droplet_hitbox) {
            destroyed = true
        }
        
        if !free {
            if instance_exists(droplet_hitbox) and droplet_hitbox.was_parried
            {
                destroyed = true;
                spawn_hit_fx(x,y,player_id.splash_hfx)
                break;
            }
            changeState(info.next_state)
            player_id.puddle_obj = id
        }
        else if (get_gameplay_time() mod 5 == 2 or random_func(2, 3, true) == 1) {
            var angle_mod = 90;
            var pos_angle_mod = random_func(4, 51, true) - 25
            var pos_mod = random_func(10, 6, true) + 14
            var xoff = lengthdir_x(pos_mod, angle_mod + image_angle + pos_angle_mod)
            var yoff = lengthdir_y(pos_mod, angle_mod + image_angle + pos_angle_mod)
            
            with spawn_hit_fx(x + xoff, y + yoff,player_id.watertrail_vfx) {
                draw_angle = other.image_angle + angle_mod
            }    
        }
        
        vsp = free ? vsp + info.grav_speed : 0;
        
        if instance_exists(droplet_hitbox) {
            var dir = point_direction(0,0,hsp,vsp)
            
            droplet_hitbox.x = x + lengthdir_x(16, dir) + hsp;
            droplet_hitbox.y = y + lengthdir_y(16, dir) + vsp;
            droplet_hitbox.hitbox_timer = 1;
        }
    break;
    case PS_SPAWN:
    break;
    case PS_IDLE:
        var bullet_triggered = bullet_hit();
        var puddlebox_triggered = puddlebox_hit();
    
        if bullet_triggered or puddlebox_triggered {
            
            var prelim_angle = puddlebox_triggered ? -player_id.puddle_hitbox_angles[player_id.puddle_hitbox.attack][player_id.puddle_hitbox.hbox_num - 1] : point_direction(0,0,player_id.bullet_obj.hsp, player_id.bullet_obj.vsp)
            var should_flip = puddlebox_triggered ? player_id.spr_dir : 1
            var angle = point_direction(0,0, should_flip * dcos(prelim_angle), dsin(prelim_angle))
            
            player_charge_mod = 0;
            with player_id
            {
                sound_play(sound_get("sfx_water_hit"), false, noone, 1, 0.95)
                sound_play(asset_get("sfx_orcane_dsmash"), false, noone, 0.65, 1.14)
                
                spawn_hit_fx(other.x, other.y, splashback_vfx);
                
                var splash = spawn_hit_fx(other.x, other.y, splash_vfx);
                splash.depth = other.depth - 1;
                splash.spr_dir = 1;
                
                var interval = 10;
                splash.draw_angle = round(angle / interval) * interval;
                //print(`angle - ${round(angle)}, splash - ${splash.draw_angle}`)
                
                var offset, launch_speed;
                other.xdir = dcos(angle)
                other.ydir = dsin(angle)
                offset = 10;
                launch_speed = 10;
                
                other.should_spawn_splash_hitbox = true;
                if puddlebox_triggered {
                    if (puddle_hitbox.attack == AT_USTRONG or puddle_hitbox.attack == AT_DSTRONG) {
                        other.player_charge_mod = calculate_distance(strong_charge);
                    }
                    else
                    {
                        other.player_charge_mod = 5;
                    }
                }
            }
            changeState(PS_DEAD)
            if bullet_triggered
            {
                player_id.bullet_obj.destroyed = true;
                var storage = create_hitbox(AT_NSPECIAL, 3, -1290, -290)
                storage.bullet_points = player_id.bullet_obj.bullet_points
                //ds_list_add(player_id.bullets, storage)
            }
            break;
        }
        
        for (var p = 0; p < instance_number(asset_get("oPlayer")); p++)
        {
            var other_player = instance_find(asset_get("oPlayer"), p)
            if other_player == noone or other_player == player_id or "hurtboxID" not in other_player or other_player.hurtboxID == noone continue;
            
            var box = info.collision_box;
            with other_player
            {
                if (free and state_cat != SC_HITSTUN) continue; 
                
                if bbox_left + hsp < other.x + box.x2 and bbox_right + hsp > other.x + box.x1 and bbox_top + vsp < other.y + box.y2 and bbox_bottom + vsp > other.y + box.y1 {
                    with other changeState(PS_ATTACK_GROUND);
                }
            }
        }
    break;
    case PS_ATTACK_GROUND:
        switch state_timer {
            case 0:
                //print(image_index)
            break;
            case 1:
            //print(image_index)
                sound_play(asset_get("sfx_swipe_medium2"))
            break;
            case 5:
                create_hitbox(AT_DSPECIAL, 1, x, y - 30);
            break;
            case 8:
                if has_grabbed {
                    changeState(PS_ATTACK_AIR);
                }
            break;
        }

    break;
    case PS_ATTACK_AIR:
        if state_timer > 0 and state_timer < 10 {
            grab_position[1] += 4*( (10-state_timer) / 10);
        }
        
        if state_timer == 16 {
            sound_play(asset_get("sfx_pom_fspecial_swing"));
        }
        
        if (state_timer == 20) {
            for (var p = 0; p < instance_number(asset_get("oPlayer")); p++)
            {
                var other_player = instance_find(asset_get("oPlayer"), p)
                if other_player == noone or "hanged_grabbed_id" not in other_player or other_player.hanged_grabbed_id != id continue;
                
                other_player.hanged_grabbed_id = noone;
            }
        }
    break;
    case PS_DEAD:
        if state_timer == 4 and should_spawn_splash_hitbox {
            //print(xdir)
            var angle = clamp(point_direction(0,0,xdir,-ydir), 40, 140);
            
            i = 1;
            repeat 4 {
                var hbox = create_hitbox(AT_NSPECIAL, 2, floor(x + ( (30-i)*i*xdir )), floor(y - ( (30-i)*i*ydir )));
                hbox.kb_angle = angle;
                hbox.image_xscale /= 0.5 + (i/2.5);
                hbox.image_yscale /= 0.5 + (i/2.5);
                //print(hbox.kb_angle)
                hbox.spr_dir = 1;
                i++;
            }
            var offset = 10;
            var launch_speed = 10 + player_charge_mod;
            with player_id {
                var new_puddle = instance_create(floor(other.x + (offset*other.xdir)), floor(other.y - 24 - (offset*other.ydir)), "obj_article1")
                new_puddle.hsp = launch_speed * other.xdir;
                new_puddle.vsp = -launch_speed * other.ydir;
            }
        }
    break;
}

for (var p = 0; p < instance_number(asset_get("oPlayer")); p++)
{
    var other_player = instance_find(asset_get("oPlayer"), p)
    if other_player == noone or "hanged_grabbed_id" not in other_player or other_player.hanged_grabbed_id != id continue;
    
    other_player.x = lerp(other_player.x, x + (spr_dir*grab_position[0]), 0.4)
    other_player.y = lerp(other_player.y, y + grab_position[1], 0.4)
}

info = state_info[state]
image_index = (state_timer / info.anim_length) * image_number;
if (state_timer > info.anim_length-1) {
    if info.should_loop {
        new_state_timer = 0;
    }
    else if info.next_state != -1 {
        changeState(info.next_state);
    }
    else {
        destroyed = true;
    }
}

if new_state_timer == state_timer {
    state_timer++;
}
else {
    state_timer = new_state_timer;
}

if plat_to_clamp != noone
{
    if !instance_exists(plat_to_clamp) or !instance_place(x,y,asset_get("par_jumpthrough")) {
        //was destroyed at some point. just transition to puddle drop
        //print("shit")
        changeState(PS_PRATFALL)
    }
    else 
    {
        //print("exists")
        vsp = 0
        x = get_instance_x(plat_to_clamp) + plat_to_clamp_x
        y = get_instance_y(plat_to_clamp)
    }
}

// if instance_exists(player_id.puddle_obj) and player_id.puddle_obj != self and state != PS_DEAD and state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
//     changeState(PS_DEAD);
// }

if y > room_height destroyed = true;

if destroyed
{
    if instance_exists(droplet_hitbox) {
        instance_destroy(droplet_hitbox)
    }
    instance_destroy();
}

#define calculate_distance()
var modifier = argument0;
var result = (((round( modifier / 9 / .5) ) ) * 0.5)  - 1;
//print(result)
return result;

#define bullet_hit()
return instance_exists(player_id.bullet_obj) and place_meeting(x,y,player_id.bullet_obj) and player_id.bullet_obj.vsp > 0 and !player_id.bullet_obj.was_parried

#define puddlebox_hit()
return instance_exists(player_id.puddle_hitbox) and place_meeting(x,y,player_id.puddle_hitbox)

#define changeState()
var _state = argument0;

if _state == state {
    return;
}

state = _state;

//New state
switch (_state) {
    case PS_PRATFALL:
        mask_index = state_info[state].mask;        
        ignores_walls = false;
        can_be_grounded = false;
        plat_to_clamp = noone;
    break;
    case PS_SPAWN:
        if instance_exists(droplet_hitbox) {
            instance_destroy(droplet_hitbox)
            droplet_hitbox = noone;
        }
        if instance_exists(player_id.puddle_obj) and player_id.puddle_obj != id
        {
            with (player_id.puddle_obj) {
                changeState(PS_DEAD)
            }
            player_id.puddle_obj = id
        }
        
        var i = -4
        repeat (abs(i) * 2)
        {
            var ground = instance_place(x + (i*3), y + 28 + vsp, asset_get("par_block"));
            var plat = instance_place(x + (i*3), y + 28 + vsp, asset_get("par_jumpthrough"))
            if plat {
                //print("plat")
                y = get_instance_y(plat)+2
                plat_to_clamp = plat;
                plat_to_clamp_x = x - get_instance_x(plat)
                break;
            }
            else if ground{
                //print("ground")
                y = get_instance_y(ground)+2
                break;
            }
          i++;
        }
        

        vsp = 0;
        hsp = 0;
        image_angle = 0;
        //disable_movement = true;
        ignores_walls = true;
        can_be_grounded = true;
        mask_index = state_info[state].mask;
        state_timer = 0.01
    break;
    case PS_ATTACK_GROUND:
    case PS_DEAD:
        image_index = 0;
        state_timer = 0.01;
        // if player_id.x > x {
        //     spr_dir = 1
        // }
        // else {
        //     spr_dir = -1
        // }
    break;
}

sprite_index = state_info[state].sprite;
image_index = 0;
new_state_timer = 0;