//hitbox_update
timer++

if attack == AT_USPECIAL && hbox_num == 1 {
    if !instance_exists(owner) {
        instance_destroy()
        exit;
    }
    x = owner.x + owner.hsp
    y = owner.y + owner.vsp + 10
    
}

//ruby proj
if attack == AT_NSPECIAL && hbox_num == 1 {
    if state != 9 && !recall_active proj_angle -= 10*spr_dir
    if !free || has_hit || position_meeting(x, y, asset_get("par_block")){
        destroyed = true
        spawn_hit_fx(x, y, vfx_stock_explosion_large_red)
        with player_id {
            var sfx = sound_get("explosion")
        }
        sound_play(sfx)
        create_hitbox(AT_NSPECIAL, 2, x, y)
    }
    
    //trail
    var el = [x, y, darctan2(-vsp, hsp)]
    trail_arr[trail_index] = el
    trail_index = (trail_index + 1) mod trail_segments
    
    //recall
    script = 1
    user_event(0)
}

//bomb arrow
if attack == AT_JAB && hbox_num == 3 {
    if state != 9 && !recall_active proj_angle = darctan2(-vsp * spr_dir, hsp * spr_dir) - spr_dir*15;
    if !free || has_hit || position_meeting(x, y, asset_get("par_block")){
        destroyed = true
        if has_hit {
            spawn_hit_fx(x, y, vfx_stock_explosion_large)
            with player_id var sfx = sound_get("explosion")
            sound_play(sfx)
            if recall_active sound_stop(sound_get("timer_tick"))
        } else {
            spawn_hit_fx(x, y, HFX_ELL_FSPEC_HIT)
            var fx = spawn_hit_fx(x, y, vfx_stock_explosion_small)
            //fx.depth = -5
            sound_play(asset_get("sfx_mol_norm_explode"))
        }
    }
    
    //trail
    var el = [x, y, darctan2(-vsp, hsp)]
    trail_arr[trail_index] = el
    trail_index = (trail_index + 1) mod trail_segments
    
    //recall
    script = 1
    user_event(0)
}

//time crystal
if attack == AT_DSPECIAL && hbox_num == 1 {
    proj_angle -= 30*spr_dir
    if !free || has_hit || position_meeting(x, y, asset_get("par_block")) {
        with player_id var sfx = sound_get("glass_breaking")
        sound_play(sfx)
        sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
        spawn_hit_fx(x, y+10, player_id.vfx_dspec)
        create_hitbox(AT_DSPECIAL, 3, x, y)
        destroyed = true
        
        var obj = get_nearest_fuse_object()
        if obj.id != noone && obj.id.recall_cooldown == 0 with obj.id {
            recall_active = !recall_active
            if !recall_active {
                recall_cooldown = 30
            }
        }
    }
}

//fuse
if state == 9 { //fuse state
    if was_parried || !player_id.state_attacking {
        state = 0
        exit;
    }
    through_platforms = 2
    state_timer++
    image_index = 1
    if state_timer == 1 {
        recall_active = false
        with player_id var sfx = sound_get("fuse")
        sound_play(sfx)
        //sound_play(sound_get("magnesis_hit"))
    }
    if state_timer <= 6 {
        hsp = 0
        vsp = 0
        travel_spd = 0
    } else {
        if player_id.attack == AT_FSTRONG {
            var dir = point_direction(x, y, player_id.x + 10*player_id.spr_dir, player_id.y - 20)
            var dist = point_distance(x, y, player_id.x + 10*player_id.spr_dir, player_id.y - 20)
            if dist <= 30 {
                destroyed = true
                with player_id var sfx = sound_get("magnesis_release")
                sound_play(sfx)
                with player_id var sfx = sound_get("ScraBuild_Cling_00_short")
                sound_play(sfx, false, noone, 0.7)
                with player_id {
                    fuse_item_trident = other.fuse_item
                    fuse_item_hp_trident = other.fuse_item_hp
                    fuse_item_timer = 0
                    fuse_overlay_timer = 20
                    fuse_overlay_sprite = other.fuse_item_spr_fstrong
                }
            }
        }
        if player_id.attack == AT_FTILT {
            var dir = point_direction(x, y, player_id.x + 30*player_id.spr_dir, player_id.y - 20)
            var dist = point_distance(x, y, player_id.x + 30*player_id.spr_dir, player_id.y - 20)
            if dist <= 30 {
                destroyed = true
                with player_id var sfx = sound_get("magnesis_release")
                sound_play(sfx)
                with player_id var sfx = sound_get("ScraBuild_Cling_00_short")
                sound_play(sfx, false, noone, 0.7)
                with player_id {
                    fuse_item_shield = other.fuse_item
                    fuse_item_hp_shield = other.fuse_item_hp
                    fuse_item_timer = 0
                    //fuse_overlay_timer = 20
                    //fuse_overlay_sprite = sprite_get("ftilt_ruby_overlay")   
                    
                    window = 4
                    window_timer = 0
                }
            }
        }
        
        travel_spd = clamp(travel_spd + 1, 0, 16)
        
        hsp = travel_spd*dcos(dir)
        vsp = -travel_spd*dsin(dir)
    }
} else {
    state_timer = 0
    image_index = 0
}

if destroyed && ("recall_active" in self) && recall_active {
    with player_id var sfx = sound_get("timer_tick")
    sound_stop(sfx)
    with player_id var sfx = sound_get("stasis_end_weak")
    sound_play(sfx)
}

#define get_nearest_fuse_object()
var obj_dist = 1000000000000
var obj_id = noone
var fuse_type = ""
with obj_article_platform if player_id == other.player_id {
    var cur_dist = point_distance(x, y, player_id.x, player_id.y)
    if cur_dist < obj_dist {
        obj_dist = cur_dist
        obj_id = id
    }
}
with pHitBox if player_id == other.player_id {
    if (attack == AT_NSPECIAL && hbox_num == 1)
    || (attack == AT_JAB && hbox_num == 3) {
        var cur_dist = point_distance(x, y, player_id.x, player_id.y)
        if cur_dist < obj_dist {
            obj_dist = cur_dist
            obj_id = id
        }
    }
}
return {id: obj_id, dist: obj_dist};