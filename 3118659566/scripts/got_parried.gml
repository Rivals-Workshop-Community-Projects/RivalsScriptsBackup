//got_parried - called when an opponent parries your attack

if letter1ID != 0 {
    if letter1ID != hit_player_obj.id {
        letter1ID.hsp = 15 * letter1ID.spr_dir;
        letter1ID.hitbox_timer = 0;
    } 
} else if letter2ID != 0 {
    if letter2ID != hit_player_obj.id {
        letter2ID.hsp = 15 * letter2ID.spr_dir;
        letter2ID.hitbox_timer = 0;
    } 
} else if letter3ID != 0 {
    if letter3ID != hit_player_obj.id {
        letter3ID.hsp = 15 * letter3ID.spr_dir;
        letter3ID.hitbox_timer = 0;
    } 
}

if airletter1ID != 0 {
    if airletter1ID != hit_player_obj.id {
        airletter1ID.hsp = 10 * airletter1ID.spr_dir;
        airletter1ID.vsp = 14;
        airletter1ID.hitbox_timer = 0;
    } 
} else if airletter2ID != 0 {
    if airletter2ID != hit_player_obj.id {
        airletter2ID.hsp = 10 * airletter2ID.spr_dir;
        airletter2ID.vsp = 14;
        airletter2ID.hitbox_timer = 0;
    } 
} else if airletter3ID != 0 {
    if airletter3ID != hit_player_obj.id {
        airletter3ID.hsp = 10 * airletter3ID.spr_dir;
        airletter3ID.vsp = 14;
        airletter3ID.hitbox_timer = 0;
    } 
}

if packageID != 0 {
    if packageID != hit_player_obj.id {
        explo_owner = hit_player;
    } else {
        explo_owner = 0;
    }
}

if lvl1projID != 0 {
    lvl1projID.destroyed = true;
    var k = spawn_hit_fx(lvl1projID.x, lvl1projID.y + 55, mb_proj_lv1_destroy_vfx);
    var explo_x = lvl1projID.x;
    var explo_y = lvl1projID.y;
	sound_play(asset_get("sfx_zetter_downb"))
    k.depth = depth + 1;
    lvl1proj_timer = 0;
    lvl1proj_exploded = true;
    lvl1projID = 0;
}

if lvl2projID != 0 {
    lvl2projID.destroyed = true;
    lvl2projID = 0;
    planeID = 0;
    var k = spawn_hit_fx( x- (0 * spr_dir), y , mb_proj_lv2_break_vfx);
	k.depth = depth + 1;        
}

if dairprojID != 0 {
	var k = spawn_hit_fx(dairprojID.x, dairprojID.y - 0, mb_destruct_vfx);
	var l = spawn_hit_fx(dairprojID.x, dairprojID.y - 0, prop_destroy_vfx);
    dairprojID.destroyed = true;
    dairprojID = 0;
}

if mailboxID != 0 {
    mailboxID.state = 1;
    mailboxID.state_timer = 0;
}