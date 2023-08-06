if !free {
    used_dspecial = false;
} 

if state == PS_WALL_JUMP or state == PS_WALL_TECH {
    used_dspecial = false;
    move_cooldown[AT_DSPECIAL] = 0;
}


if instance_exists(puddle_obj) {
    puddle_obj.depth = depth - 2
}

if used_dspecial move_cooldown[AT_DSPECIAL] = 45;

if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) {
    switch (attack) {
        case AT_USTRONG:
        if window == 4 and window_timer == 2 and !hitpause 
        {
            puddle_hitbox = create_hitbox(attack, 3, x, y)
        }
        break;
        case AT_DSTRONG:
        if (window == 3 or window == 5) and window_timer == 0 and !hitpause {
            puddle_hitbox = create_hitbox(attack, floor(window / 2), x, y)
        }
        break;
        case AT_USPECIAL:
            if window == 2 and window_timer == 0 and !hitpause {
                puddle_hitbox = create_hitbox(attack, 1, x, y)
            }
        break;
        case AT_DATTACK:
            if window == 5 and window_timer == 0 {
                with pHitBox {
                    if player_id == other and attack == AT_DATTACK and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
            }
        break;
        case AT_DSPECIAL:
            if (window == 4 and window_timer == 0 and !hitpause) {
                bottle_obj = create_hitbox(AT_FSPECIAL, 2, x + (4*spr_dir), y - 30);
                bottle_obj.hsp = (6 * spr_dir);
                bottle_obj.vsp = 7;
            }
        break;
        case AT_FSPECIAL:
            if (window == 3 and window_timer == 1 and !hitpause) {
                bottle_obj = create_hitbox(attack, 2, x + (32*spr_dir), y - 46);
                bottle_obj.hsp = (4.5 * spr_dir) + (hsp*0.2);
                bottle_obj.vsp = (-9) + (vsp*0.2);
            }
        break;
        case AT_NSPECIAL:
            if window == 3 and window_timer == 0 and !hitpause {
                bullet_obj = create_hitbox(attack, 1, x + (32*spr_dir), y - 46);
                bullet_obj.hsp = 16 * spr_dir;
                bullet_obj.bullet_state = PS_IDLE
                //ds_list_add(bullets, bullet_obj)
            }
        break;
        case AT_FSPECIAL_2:
            if window == 3 and window_timer == 0 and !hitpause {
                
                // var pos_to_use = [];
                // var speed_to_use = [];
                // if instance_exists(bottle_obj) {
                //     pos_to_use = [bottle_obj.x, bottle_obj.y]
                //     speed_to_use = [bottle_obj.hsp, bottle_obj.vsp];
                // }
                // else {
                //     pos_to_use = bottle_backup_position;
                //     speed_to_use = [0,0];
                // }
                
                var bullet = create_hitbox(AT_NSPECIAL, 1, x + (34*spr_dir), y - 60);
                //ds_list_add(bullets, bullet)
                var spd = 19;
                var angle = 30
                bullet.hsp = spr_dir * lengthdir_x(spd,angle);
                bullet.vsp = lengthdir_y(spd,angle);
                if spr_dir == -1 {
                    bullet.proj_angle = angle+180;
                }
                else {
                    bullet.proj_angle = angle;
                }
                bullet.enemies = 0
                bullet.bullet_state = PS_ATTACK_AIR;
            }
        break;
    }
}

if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 1)
        sound_play(asset_get("sfx_ori_stomp_spin"));  
        
        if(introTimer == 5)
            sound_play(asset_get("sfx_ori_bash_use"),false,noone,0.7,1.1);
        if(introTimer == 5)
            sound_play(sound_get("sfx_gun_click"),false,noone, 0.8, 1);
        if(introTimer == 9)   
            sound_play(asset_get("mfx_star"));
        if(introTimer == 14)
            sound_play(sound_get("sfx_swing"), false, noone, 0.55, 0.9); 
        if(introTimer == 14)
            sound_play(sound_get("sfx_gun_return"), false, noone, 0.5, 1.03);  
            
    }
}

puddle_cooldown = max(puddle_cooldown-1,0)

// if (puddle_cooldown > 0) {
//     puddle_cooldown -= 1;
//     move_cooldown[AT_FSPECIAL] = 3;
//     move_cooldown[AT_DSPECIAL] = 3;
// } 
// update_points_hfx()
// #define update_points_hfx()
// return;
// with hit_fx_obj {
//     if !(sprite_index == asset_get("empty_sprite") and player_id == other and "bullet_points" in self) continue;
    
//     for (var i = 0; i < ds_list_size(bullet_points); i++) {
//         bullet_points[| i].width = lerp(bullet_points[| i].width, 0, width_decay);
//         bullet_points[| i].alpha -= alpha_decay;
        
//         if bullet_points[| i].alpha <= 0 {
//             ds_list_delete(bullet_points, i);
//         }
//     }
        
//     if ds_list_size(bullet_points) == 0 {
//         step_timer = hit_length
//     }
// }

// create_trails()
// #define create_trails()
// for (var i = 0; i < ds_list_size(bullets); i++) {
//     var b = bullets[| i]
//     if !instance_exists(bullets[| i]) {
//         ds_list_delete(bullets, i)
//         continue
//     }
//     if !bullets[| i].destroyed continue;
//     if bullets[| i].hitbox_timer < bullets[| i].length - 1 continue;
    
//     var new_trail = create_hitbox(AT_NSPECIAL, 3, -1290, -290)
//     new_trail.bullet_points = bullets[| i].bullet_points
//     ds_list_delete(bullets, i)
// } 
