//hitbox_update

enum _ {
    PS_NA, // not applicable
    PS_PULLING, // pulling perch
    PS_HANGING, // hanging from perch
    PS_GRAPPLING, // grappling to object
}

if attack == AT_USPECIAL && type == 2 {
    proj_angle = point_direction(x,y,player_id.x,player_id.y-30) - 90;
    var this_anchor_phase = anchor_phase;
    switch this_anchor_phase {
        case 0:
            player_id.hsp *= 0.3;
            player_id.vsp *= 0.3;
            hsp *= 0.97;
            vsp *= 0.97;
            grabbed_wall = false;
            while place_meeting(x,y, asset_get("par_block")) {
                x -= hsp * 0.1;
                y -= vsp * 0.1;
                grabbed_wall = true;
            }
            if grabbed_wall || hitbox_timer > 15  || point_distance(x,y,player_id.x,player_id.y) > 200 {// || place_meeting(x,y,asset_get("par_block")) || (vsp > 0 && place_meeting(x,y,asset_get("par_jumpthrough"))) {
                anchor_phase = 1;
                through_platforms = 500;
            }
            // if place_meeting(x,y,asset_get("par_block")) || (vsp > 0 && place_meeting(x,y,asset_get("par_jumpthrough"))) {
            //     anchor_phase = 2;
            //     player_id.rope_length = point_distance(x,y,player_id.x,player_id.y-30);
            //     player_id.perch_target = self;
            //     player_id.perch_state = _.PS_GRAPPLING;
            //     sound_play(sound_get("uspecial_hooked"));
            //     player_id.last_x = player_id.x;
            //     player_id.last_y = player_id.y;
            //     // print(player_id.perch_target);
            //     hsp = 0;
            //     vsp = 0;
            // }
            break;
        case 1:
            // print(player_id.perch_target);
            hit_priority = 1;
            hsp -= lengthdir_x(-3.0,proj_angle+90);
            vsp -= lengthdir_y(-3.0,proj_angle+90);
            
            if dot_product(ihsp,ivsp,x - player_id.x,y-player_id.y+30) < 0 {
                player_id.perch_state = _.PS_NA;
                player_id.perch_target = noone;
                with player_id if state != PS_RESPAWN && state != PS_DEAD && state != PS_SPAWN {
                    set_state(PS_PRATFALL);
                }
                instance_destroy();
                exit;
            }
            if grabbed_wall || place_meeting(x,y,asset_get("par_block")) || (vsp > 0 && place_meeting(x,y,asset_get("par_jumpthrough"))) {
                
                
                anchor_phase = 2;
                player_id.perchstun = 9;
                player_id.perchstun_vfx_dir_override = point_direction(player_id.x, player_id.y, x, y-30);
                player_id.rope_length = point_distance(x,y,player_id.x,player_id.y-30);
                player_id.perch_target = self;
                player_id.perch_state = _.PS_GRAPPLING;
                player_id.last_x = player_id.x;
                player_id.last_y = player_id.y;
                hsp = 0;
                vsp = 0;
                sound_play(sound_get("uspecial_hooked"));
                spawn_hit_fx(x, y, player_id.anchor_hook_vfx);
                
                
            } else {
                var pl = player_id;
                var hit = false;
                perch_hit = noone;
                with obj_article2 if !hit && is_valid_parrot_perch(id) && hp > 0 && point_distance(other.x,other.y,x,y) < 40  {
                    hit = true;
                    other.perch_hit = self;
                }
                if hit {
                    hsp = 0;
                    vsp = 0;
                    var px = lengthdir_x(12,proj_angle);
                    var py = lengthdir_y(12,proj_angle);
                    var pivot = sign(dot_product(x - perch_hit.x, y-perch_hit.y,px,py));
                    x = perch_hit.x + px*pivot - py;
                    y = perch_hit.y + py*pivot + px;
                    anchor_phase = 2;
                    player_id.perchstun = 9;
                    player_id.perchstun_vfx_dir_override = point_direction(player_id.x, player_id.y, x, y-30);
                    player_id.rope_length = point_distance(x,y,player_id.x,player_id.y-30);
                    player_id.perch_target = perch_hit;
                    player_id.perch_state = _.PS_GRAPPLING;
                    player_id.last_x = player_id.x;
                    player_id.last_y = player_id.y;
                    sound_play(sound_get("uspecial_hooked"));
                    spawn_hit_fx(x, y, player_id.anchor_hook_vfx);
                }
            }
            break;
        case 2:
            hook_timer += 1;
            // print(player_id.perch_target);
            hsp = 0;
            vsp = 0;
            hit_priority = 0;
            if perch_hit != noone {
                // if "verlet_points" in perch_hit {
                    var hx = perch_hit.verlet_points[perch_hit.verlet_count - 1].x
                    var hy = perch_hit.verlet_points[perch_hit.verlet_count - 1].y
                    var px = lengthdir_x(12,proj_angle);
                    var py = lengthdir_y(12,proj_angle);
                    perch_hit.hit_x += py;
                    perch_hit.hit_y -= px;
                    var pivot = sign(dot_product(x - hx, y-hy,px,py));
                    x = hx + px*pivot - py;
                    y = hy + py*pivot + px;
                    
                    
                // } else {
                //     var hx = perch_hit.x
                //     var hy = perch_hit.y
                //     var px = lengthdir_x(12,proj_angle);
                //     var py = lengthdir_y(12,proj_angle);
                //     var pivot = sign(dot_product(x - hx, y-hy,px,py));
                //     x = hx + px*pivot - py;
                //     y = hy + py*pivot + px;
                // }
            } 
            if player_id.perch_state != _.PS_GRAPPLING {
                if ("hp" in perch_hit) {
                    perch_hit.hp -= 80
                    if perch_hit.hp < 80 {
                        perch_hit.hp = -5;
                    }
                }
                instance_destroy();
                exit;
            }
            break;
    }
}
#define is_valid_parrot_perch(obj_id)
    return variable_instance_exists(obj_id, "_parrot_perch_identifier_") && obj_id._parrot_perch_identifier_;

#define print_safe(value)
    print(value)

#define clamp_distance(distance, anchor_x, anchor_y, free_x, free_y)
    var d = point_distance(anchor_x,anchor_y, free_x, free_y);
    if (d < distance || distance < 0) return [free_x,free_y];
    
    var dif_x = free_x - anchor_x;
    var dif_y = free_y - anchor_y;
    var mult = distance / d;
    dif_x *= mult;
    dif_y *= mult;
    return [anchor_x + dif_x, anchor_y + dif_y];

#define get_bucket_interaction(object_id)
    if !instance_exists(object_id) || object_id == null || object_id == noone || !is_object(object_id) return 0;

    if !("object_index" in object_id) return 0;
    
    switch object_id.object_index {
        case obj_article1:
        case obj_article2:
        case obj_article3:
        case obj_article_platform: 
        case obj_article_solid:
        case obj_stage_article:
        case obj_stage_article_platform:
        case obj_stage_article_solid:
        case pHitBox:
        case oPlayer:
            if "_parrot_bucket_interaction_value_" in object_id {
                return object_id._parrot_bucket_interaction_value_;
            }
            break;
    }
    
    if object_id.object_index == pHitBox && object_id.player != player && object_id.type == 2 {
        return object_id.damage * (("transcendent" in object_id && object_id.transcendent) ? 1 : -1);
    }
    
    var mapping = [
        asset_get("plant_obj"),
        asset_get("rock_obj"),
        asset_get("puddle_obj"),
        asset_get("smoke_obj"),
        asset_get("wind_obj"),
        asset_get("pillar_obj"),
        asset_get("cloud_obj"),
        asset_get("orb_follower_obj"),
        asset_get("frog_bubble_obj"),
        asset_get("plasma_field_obj"),
        asset_get("wolf_bud_obj"),
        asset_get("treasure_rock_obj"),
        asset_get("mobile_gear_obj"),
        asset_get("gus_rock_obj"),
        asset_get("moneybag_obj")
    ]
    
    if array_find_index(mapping, object_id.object_index) != -1 {
        return -10;
    }
    
    
    return 0;