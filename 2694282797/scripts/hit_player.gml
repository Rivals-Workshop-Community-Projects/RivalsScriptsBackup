//a

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.orig_player == player {
    my_hitboxID.hsp = 0;
    my_hitboxID.vsp = -5;
    my_hitboxID.pres_explode_hits += 1;
    if my_hitboxID.pres_should_explode {
        var explodebox = create_hitbox(AT_NSPECIAL,2,my_hitboxID.x,my_hitboxID.y);
        explodebox.player = my_hitboxID.player;
        my_hitboxID.destroyed = true;
    }
}

if my_hitboxID.attack == AT_DAIR {
    //dair bounce
    if my_hitboxID.hbox_num <= 2 {
        old_vsp -= 1;
    } else {
        old_vsp -= 3;
    }
}

//gamefeel
switch(my_hitboxID.attack){
    case AT_JAB:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sfx_spiral_cryobounce,false,noone,0.2,1.25);
            sound_play(sfx_poke_icicle,false,noone,0.75,1);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
            sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
            sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
        }
        jj.depth = depth +1
        break;
    case AT_DATTACK:
        sound_play(sfx_spiral_hitsoft,false,noone,1,0.95);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_FTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.85,1);
        sound_play(sfx_spiral_snowball,false,noone,0.75,1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_UTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.85,1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_DTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.55,1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_smaller);
        jj.depth = depth +1
        break;
    case AT_NAIR:
        if my_hitboxID.hbox_num <= 2 {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
        }
        jj.depth = depth +1
        break;
    case AT_FAIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
        sound_play(sfx_spiral_snowball,false,noone,0.75,0.95);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_BAIR:
        if my_hitboxID.hbox_num <= 2 {
            sound_play(sfx_spiral_cryobounce,false,noone,0.2,1.25);
            sound_play(sfx_poke_icicle,false,noone,0.75,1);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.15);
            sound_play(sfx_poke_icicle,false,noone,0.95,1.15);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
        }
        jj.depth = depth +1
        break;
    case AT_UAIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_DAIR:
        if my_hitboxID.hbox_num < 3 {
            sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.35);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
        }
        jj.depth = depth +1
        break;
    case AT_FSTRONG:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1);
        sound_play(sfx_spiral_snowball,false,noone,0.85,1);
        if hit_player_obj.should_make_shockwave {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_big);
        } else {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_medium);
        }
        jj.depth = depth +1
        break;
    case AT_USTRONG:
        if hit_player_obj.should_make_shockwave {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_big);
        } else {
            if my_hitboxID.hbox_num == 1 {
                sound_play(sfx_spiral_hitsoft,false,noone,0.95,0.95);
                var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
                hfx_small);
            } else {
                sound_play(sfx_spiral_hitsoft,false,noone,0.85,1.1);
                sound_play(sfx_spiral_pickup,false,noone,1,1.25);
                var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
                hfx_medium);
            }
        }
        jj.depth = depth +1
        break;
    case AT_DSTRONG:
        sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.25);
        sound_play(sfx_spiral_hitsoft,false,noone,1,0.95);
        if hit_player_obj.should_make_shockwave {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_medium);
        } else {
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
        }
        jj.depth = depth +1
        break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sfx_spiral_snowball,false,noone,0.75,1.1);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            sound_play(sfx_spiral_cryobounce,false,noone,0.25,1.25);
            sound_play(sfx_spiral_hitsoft,false,noone,0.65,0.95);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_small);
        }
        jj.depth = depth +1
        break;
    case AT_FSPECIAL:
        sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.25);
        sound_play(sfx_poke_icicle,false,noone,0.95,1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_smaller);
        jj.depth = depth +1
        break;
    case AT_DSPECIAL:
        sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
        sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_DSPECIAL_AIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
        sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
        var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_small);
        jj.depth = depth +1
        break;
    case AT_USPECIAL:
        if my_hitboxID.hbox_num < 7 {
            sound_play(sfx_spiral_hitsoft,false,noone,0.25,1.25);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_smaller);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.85,1.1);
            var jj = spawn_hit_fx((hit_player_obj.x + my_hitboxID.x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + my_hitboxID.y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_medium);
        }
        jj.depth = depth +1
        break;
    
}