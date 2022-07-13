//hitbox_update

//oil ball
if attack == AT_NSPECIAL && hbox_num == 1 {
    if !free {
        destroyed = true
        var _w = 10
        for (var i = -_w/2; i < _w/2; i++) {
            instance_create((round((x-hsp)/8)*8) + i*8,y+16, "obj_article1")
        }
        
        sound_play(asset_get("sfx_waterhit_heavy2"))
    }
}

if attack == AT_DSPECIAL_AIR && hbox_num == 5 {
    visible = false
    //print(free)
    if !free {
        destroyed = true
        var _w = 10
        for (var i = -_w/2; i < _w/2; i++) {
            instance_create((round((x-hsp)/8)*8) + i*8,y+16, "obj_article1")
        }
    }
}

if attack == AT_FSTRONG && hbox_num == 1 {
    if hitbox_timer == 20 {
        var hitbox = create_hitbox(AT_FSTRONG, 3, x+30*spr_dir, y-10)
            hitbox.owner = id
        sound_play(asset_get("sfx_ell_utilt_retract"))
    }
}

if attack == AT_FSTRONG && hbox_num == 2 {
    x = floor(owner.x+owner.hsp)
    y = floor(owner.y+owner.vsp)
    if has_hit || (!position_meeting(x, y+20, asset_get("par_block")) && !position_meeting(x, y+20, asset_get("par_jumpthrough"))) {
        owner.hsp = clamp(owner.hsp, -2, 2)
        owner.hsp *= 0.5
    }
}