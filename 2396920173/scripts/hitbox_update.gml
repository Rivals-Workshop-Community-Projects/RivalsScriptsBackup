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
    
    var _max = 35;
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
    if prev_id != undefined && instance_exists(prev_id) {
        //print_debug(string(prev_id.player_id.player))
        if prev_id.player_id != player_id {
            can_hit_self = true;
            can_hit[prev_id.player_id.player] = false;
        }
    }
}

if attack == AT_UTHROW && hbox_num == 1 {
    if !free {
        destroyed = true;
    }
}

if attack == AT_NSPECIAL_2 {
    if hbox_num == 1 {
        if !free {
            destroyed = true;
        }
        
        if destroyed {
            var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y);
                hitbox.hsp = 0;
                hitbox.vsp = 0;
                hitbox.counter = 0;
        }
    }
    
    var _frames = 9;
    if hbox_num == 2 {
        if hitbox_timer == 1 {
            if counter == 0 sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
            else if counter == 1 sound_play(asset_get("sfx_ell_dspecial_explosion_2"))
            spawn_hit_fx(x, y, 115)
        }
        if hitbox_timer == _frames {
            if counter < 1 {
                var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y);
                    hitbox.hsp = 0;
                    hitbox.vsp = 0;
                    hitbox.counter = counter + 1;
            } else {
                spawn_hit_fx(x, y, 115)
                sound_play(asset_get("sfx_ell_dspecial_explosion_3"))
                var hitbox = create_hitbox(AT_NSPECIAL_2, 3, x, y);
                    hitbox.hsp = 0;
                    hitbox.vsp = 0;
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
    if !instance_exists(owner) {
        instance_destroy()
        exit;
    }
    x = owner.x
    y = owner.y - 30
    if owner.window == 4 {
        instance_destroy();
    }
}

if attack == AT_FTHROW && hbox_num == 2 {
    can_hit_self = true;
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