//hit-player

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
    set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 4);
    hit_player_obj.arb_grabbed = id;
    hit_player_obj.arb_grab_timer = 0;
    djumps = 0
} else {
    hit_player_obj.arb_grabbed = undefined;
    hit_player_obj.arb_grab_timer = 0;
}

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num <= 3 {
    hit_player_obj.y += 5
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && hit_player_obj != id {
    //hit_player_obj.arb_mark = id
    with obj_article1 if player_id == other.id && state == PS_WRAPPED {
        state = PS_DEAD
        state_timer = 0
    }
    var seed = instance_create(floor(hit_player_obj.x), floor(hit_player_obj.y-(hit_player_obj.char_height/2)), "obj_article1");
        seed.player_id = id;
        seed.age = timer;
        seed.mark_id = hit_player_obj.id
        seed.state = PS_WRAPPED
        hit_player_obj.arb_marked = true
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
    if !hit_player_obj.arb_marked {
        with obj_article1 if player_id == other.id && state == PS_WRAPPED {
            mark_id.arb_marked = false
            mark_id = other.hit_player_obj
            other.hit_player_obj.arb_marked = true
            x = mark_id.x + mark_id.hsp
            y = mark_id.y-(mark_id.char_height/2) + mark_id.vsp
        }
    }
    
    with obj_article1 if player_id == other.id && state == PS_DASH_START {
        state = PS_DASH_TURN
        state_timer = 0
        seeker_id = other_seed_id
    }
    
    sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
    
    hit_player_obj.arb_tethered = id
} else {
    hit_player_obj.arb_tethered = undefined
}

if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2 {
    with obj_article1 if player_id == other.id {
        hitstop = 20
    }
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3 {
    sound_play(asset_get("sfx_leafy_hit2"))
}

if my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3 {
    if hit_player_obj.arb_marked {
        //seed_hit = true
    }
}

if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 {
    sound_play(asset_get("sfx_crunch"))
}



if hit_player_obj.arb_marked {
    var atk = my_hitboxID.attack
    var hbox = my_hitboxID.hbox_num
    var sweetspots = [[AT_FAIR,2], [AT_UAIR,1], [AT_USTRONG,1], [AT_FSPECIAL,3], [AT_DTILT, 1], [AT_JAB, 3], [AT_DATTACK, 3], [AT_USPECIAL, 5], [AT_USPECIAL, 6], [AT_DAIR, 3], [AT_DAIR, 4]]
    for(var i = 0; i < array_length(sweetspots); i++) {
        if atk == sweetspots[i][0] && hbox == sweetspots[i][1] {
            //run code below
            var projbox1 = create_hitbox(AT_EXTRA_1, 1, hit_player_obj.x, hit_player_obj.y)
                projbox1.target = hit_player_obj
                projbox1.spr_dir = 1
                projbox1.delay = 26
            var projbox2 = create_hitbox(AT_EXTRA_1, 1, hit_player_obj.x, hit_player_obj.y)
                projbox2.target = hit_player_obj
                projbox2.spr_dir = -1
                projbox2.delay = 32
            
            /*
            with obj_article1 if player_id == other.id && state == PS_IDLE {
                state = PS_JUMPSQUAT
                state_timer = 0
            }
            */
        }
    }
}
