
enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}   
hurtboxID.image_angle = 0;
spr_angle = 0;
draw_x = 0;
draw_y = 0;

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    if (attack == AT_EXTRA_1) {
        draw_y = 99999999;
    } else if attack == AT_EXTRA_2 {
        hurtboxID.sprite_index = sprite_get("jab_hurt");
    }
}
switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_DOUBLE_JUMP:
    case PS_FIRST_JUMP:
    case PS_IDLE_AIR:
        set_rope_swinging()
        break;
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch (attack) {
            case AT_EXTRA_1:
                depth = 16;
                break;
            case AT_USPECIAL:
                if "object_index" in perch_target && perch_target.object_index != obj_article2 { 
                    set_rope_swinging();
                }
                break;
            case AT_NSPECIAL_2:
                    var dir = point_direction(0,0, get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED), get_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED));
                    if (window == 4) {
                        dir += angle_difference(0, dir) * (image_index - 3) / 3;
                        
                    }
                    hurtboxID.image_angle = dir * spr_dir;
                    spr_angle = dir * spr_dir;
                    
                    
                    // draw_x = spr_dir * lengthdir_x(-30,dir);
                    // draw_y = lengthdir_y(-30,dir);
                break;
        }
    break;
    
    default: break;
}
feather_vfx_spawn += (point_distance(phsp,pvsp,hsp,vsp) * 0.15 + point_distance(0,0,hsp,vsp) * 0.01) * 0.25;
var feather_dir = point_direction(0,0,(hsp != 0.0) ? -hsp : -spr_dir,vsp);
while feather_vfx_spawn > 0 {
    var count = floor(feather_vfx_spawn);
    var feather = spawn_hit_fx(
        x + random_func(count * 5 + 3, 20, false) - 10, 
        y - 30 + random_func(count * 5 + 4, 20, false) - 10, 
        random_func(count * 5, 2, true) == 0 ? feather_vfx1 : feather_vfx2
        );
    var variation = feather_dir + random_func(count* 5 + 1, 60, false) - 30;
    feather.hsp = lengthdir_x(1.5, variation);
    feather.vsp = lengthdir_y(1.5, variation);
    feather.spr_dir = random_func(count * 5 + 2, 2, true) == 0 ? -1 : 1;
    feather_vfx_spawn -= 1
}


phsp = hsp;
pvsp = vsp;
var imgind = image_index;
// print(image_index);
if shotgun_loaded {
    if sprite_index == sprite_get("grabbing_rope") {
        sprite_index = sprite_get("grabbing_rope_shotgun");
    } else if sprite_index == sprite_get("jump") || sprite_index == sprite_get("djump") {
        sprite_index = sprite_get("jump_shotgun");
    } else if sprite_index == sprite_get("walk") {
        sprite_index = sprite_get("walk_shotgun");
    } else if sprite_index == sprite_get("walkturn") {
        sprite_index = sprite_get("walkturn_shotgun");
    } else if sprite_index == sprite_get("idle") {
        sprite_index = sprite_get("idle_shotgun");
    } else if sprite_index == sprite_get("land") || sprite_index == sprite_get("jumpstart") {
        sprite_index = sprite_get("land_shotgun");
    } else if sprite_index == sprite_get("hurt") {
        sprite_index = sprite_get("hurt_shotgun");
    } else if sprite_index == sprite_get("uphurt") {
        sprite_index = sprite_get("uphurt_shotgun");
    } else if sprite_index == sprite_get("bighurt") {
        sprite_index = sprite_get("bighurt_shotgun");
    } else if sprite_index == sprite_get("downhurt") {
        sprite_index = sprite_get("downhurt_shotgun");
    }
}
image_index = imgind;

if perchstun {
    var sintime = sin(get_gameplay_time());
    draw_x += old_hsp * 0.1 * sintime;
    draw_y += old_vsp * 0.1 * sintime;
    
}

#define set_rope_swinging()
        if perch_target != noone && (perch_state == _.PS_HANGING || perch_state == _.PS_GRAPPLING){
            var px = perch_target.x;
            var py = perch_target.y;
            if "hit_x" in perch_target {
                px += perch_target.hit_x;
                py += perch_target.hit_y;
            }
            var angle_to = point_direction(x,y-30,px,py);
            var facing_angle = angle_to - 90;
            var this_angle_vel = angle_difference(facing_angle,prev_spr_angle);
            swing_inertia_offset *= 0.7;
            swing_inertia_offset += this_angle_vel * 0.5;
            //if (random_func_2(1,4, true) == 0) feather_vfx_spawn += abs(swing_inertia_offset) * 0.1;
            var facing_vel = -truncate(0.3 * swing_inertia_offset) * spr_dir;
            sprite_index = sprite_get("grabbing_rope");
            image_index = clamp(facing_vel + 4, 0, 8);
            spr_angle = facing_angle;
            draw_y = -30;
            prev_spr_angle = facing_angle;
        } else {
            swing_inertia_offset = 0;
        }

#define truncate(num)
    return floor(abs(num)) * sign(num);