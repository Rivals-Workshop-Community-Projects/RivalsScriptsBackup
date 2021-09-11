//hitbox_update

if attack == AT_FAIR && hbox_num == 2 {
    if !free {
        spawn_piece(x, y+30, "N")
        instance_destroy();
        exit;
    }
}
/*
if attack == AT_USTRONG && hbox_num == 1 {
    if !free {
        spawn_piece(x, y+22, "P")
        instance_destroy();
    }
}
*/

if attack == AT_FTHROW && hbox_num == 1 { //uspec

    if !instance_exists(owner) {
        instance_destroy();
        exit;
    }
    
    if has_hit {
        /*
        if owner.hp <= -1 {
            owner.die_timer = 60;
        }
        */
        if !decreased_var {
            decreased_var = true;
            //owner.hp--;
            owner.not_hitpause_timer = 2;
            owner.has_hit = true;
            instance_destroy();
            exit;
        }
    }
    
    
    x = owner.x + owner.hsp;
    y = owner.y - 20 + owner.vsp;
    owner.hitbox_active = true;
    
    var rune_active = false;
    with player_id {
        if has_rune("K") { //Piece hitboxes last much longer when being attacked.
            var _max = 120;
        } else {
            var _max = 35;
        }
    }
    
    if ("active_max" in self) {
        _max = active_max;
    }
    
    if owner.hitstop == 1 {
        owner.hp-=1;
    }
    
    if (abs(owner.hsp) <= 1 && abs(owner.vsp) < 1 && !owner.free) || hitbox_timer > _max {
        owner.hitbox_active = false;
        instance_destroy();
        exit;
    }
    
    var prev_id = owner.prevHitboxID;
    var prev_playerID = owner.prevHitboxPlayerID;
    if prev_playerID != undefined {
        if prev_playerID != player_id { 
            can_hit_self = true;
            can_hit[prev_playerID.player] = false;
        }
    }
}

if attack == AT_UTHROW && hbox_num == 1 {
    if !free {
        destroyed = true;
    }
    if was_parried {
        was_parried = false;
        hsp *= 1.5;
        hitbox_timer = 0;
    }
}

if attack == AT_NSPECIAL_2 {
    if hbox_num == 1 {
        if !free {
            destroyed = true;
        }
        if destroyed {
            var hitbox1 = create_hitbox(AT_NSPECIAL_2, 2, x, y);
                hitbox1.hsp = 0;
                hitbox1.vsp = 0;
                hitbox1.counter = 0;
                hitbox1.can_hit_self = was_parried;
                hitbox1.was_parried = was_parried;
        }
        
        
    }
    
    with player_id {
        if has_rune("L") { //All FSPECIAl/DSPECIAL attacks have been enhanced.
            var counter_max = 5;
        } else {
            var counter_max = 1;
        }
    }
    
    var _frames = 9;
    if hbox_num == 2 {
        
        if hitbox_timer == 1 {
            if counter < counter_max sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
            else if counter == counter_max sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
            spawn_hit_fx(x, y, 115)
        }
        if hitbox_timer == _frames {
            if counter < counter_max {
                var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y);
                    hitbox.hsp = 0;
                    hitbox.vsp = 0;
                    hitbox.counter = counter + 1;
                    hitbox.can_hit_self = was_parried;
                    hitbox.was_parried = was_parried;
            } else {
                spawn_hit_fx(x, y, 115)
                sound_play(asset_get("sfx_ell_dspecial_explosion_3"))
                var hitbox = create_hitbox(AT_NSPECIAL_2, 3, x, y);
                    hitbox.hsp = 0;
                    hitbox.vsp = 0;
                    hitbox.can_hit_self = was_parried;
                    hitbox.was_parried = was_parried;
            }
            destroyed = true;
        }
    }
    
    if hbox_num == 3 {
        if hitbox_timer == _frames destroyed = true
    }
}

if (attack == AT_NSPECIAL_2 && hbox_num == 1) || (attack == AT_UTHROW && hbox_num == 1) {
    if hitbox_timer mod 8 == 0 spawn_hit_fx(x, y, proj_particle);
}

if attack == AT_DSPECIAL_2 && hbox_num == 2 {
    if owner.hsp > 0 spr_dir = 1;
    else if owner.hsp < 0 spr_dir = -1;
    if !instance_exists(owner) {
        instance_destroy()
        exit;
    }
    x = owner.x
    y = owner.y - 30
    if owner.window == 4 {
        instance_destroy();
        exit;
    }
}

if attack == AT_FTHROW && hbox_num == 2 {
    var runeactive = false;
    with player_id {
        if has_rune("D") { //Piece self destruct explosions no longer harm yourself.
            runeactive = true;
        }
    }
    if !runeactive can_hit_self = true;
}

//final smash
if attack == 49 && hbox_num == 10 {
    if image_index == 2 {
        vsp = -50;
        img_spd = 0;
        image_xscale = 0.15;
        image_yscale = 0.3;
    } else {
        image_xscale = 0
        image_yscale = 0
    }
}

#define destroy_piece
if player_id.piece_id != undefined {
    instance_destroy(player_id.piece_id);
}

#define spawn_piece(x, y, piece)
destroy_piece();
var p = instance_create(x, y, "obj_article1")
    p.player_id = player_id
    p.piece = piece
    p.spr_dir = spr_dir
    p.hsp = hsp;
    p.vsp = vsp;
    if piece == "P" {
        p.sprite_index = sprite_get("idle")
    } else {
        p.sprite_index = sprite_get(piece + "idle")
        p.mask_index = sprite_get(piece + "hurt")
    }
player_id.piece_id = p;