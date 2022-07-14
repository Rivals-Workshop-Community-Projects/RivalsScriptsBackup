//a
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.orig_player == player {
    attack_end();
    destroy_hitboxes();
    sound_play(sfx_poke_stonedge_1,false,noone,0.65,1.25);
    sound_play(sfx_spiral_wolver,false,noone,1,1);
    sound_play(sfx_spiral_hitsoft_1,false,noone,0.35,0.95);
    window = 3;
    window_timer = 0;
}


if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.orig_player == player {
    attack_end();
    destroy_hitboxes();
    sound_play(sfx_spiral_wolver,false,noone,1,1);
    sound_play(sfx_spiral_hitsoft_1,false,noone,0.35,0.95);
    if state != PS_HITSTUN {
        old_vsp = -6;
        old_hsp = 0;
    }
    window = 7;
    window_timer = 0;
    if shields_up {
        shields_up = false;
        sound_play(sfx_poke_stonedge_1,false,noone,0.65,1.25);
        var h = spawn_hit_fx(x,y, hfx_rock_small);
        h.depth = depth -1;
    }
}

if my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1 && my_hitboxID.orig_player_id == self {
    meteor_id = instance_create(my_hitboxID.x,my_hitboxID.y,"obj_article1");
    meteor_id.rock_type = "rock";
    meteor_id.spr_dir = my_hitboxID.spr_dir;
    meteor_id.vsp = -20;
    meteor_id.hsp = my_hitboxID.hsp * 0.95;
    meteor_id.spr_dir = my_hitboxID.spr_dir;
    move_cooldown[AT_FSPECIAL_2] = 130;
    my_hitboxID.destroyed = true;
}

if my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 2 && my_hitboxID.orig_player_id == self {
    my_hitboxID.rock_owner.should_die = true;
}

//misc attack gamefeel stuff
//custom hit effects are spawned here because rivals sets them on the wrong depth
switch(my_hitboxID.attack) {
    case AT_JAB:
        //sound_play(sfx_spiral_hitsoft_1,false,noone,0.55,1.15);
        if my_hitboxID.hbox_num < 3 {
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.7,1.1);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_small);
            h.depth = depth +1
        } else {
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.9,1.25);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_medium);
            h.depth = depth +1
        }
        break;
    case AT_FTILT:
        sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.85,1.45);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_small);
        h.depth = depth +1
        break;
    case AT_DTILT:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.85,1.15);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_small);
        h.depth = depth +1
        break;
    case AT_UTILT:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.85,1);
        if my_hitboxID.hbox_num == 1 {
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_small);
            h.depth = depth +1
        }
        break;
    case AT_DATTACK:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.85,0.95);
        //sound_play(sfx_poke_hit_normal,false,noone,0.55,1.15);
        if my_hitboxID.hbox_num == 2 {
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_small);
            h.depth = depth +1
        } else {
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_medium);
            h.depth = depth +1
        }
        break;
    case AT_NAIR:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.65,1.1);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_small);
            h.depth = depth +1
        } else {
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.9,1.25);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_medium);
            h.depth = depth +1
        }
        break;
    case AT_FAIR:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.85,0.95);
        sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.25,1.25);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_medium);
        h.depth = depth +1
        break;
    case AT_DAIR:
        if my_hitboxID.hbox_num < 5 {
            sound_play(sfx_spiral_hitsoft_2,false,noone,0.7,1.05);
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.25,1.1);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_small);
            h.depth = depth +1
        } else {
            sound_play(sfx_spiral_hitsoft_2,false,noone,0.8,1);
            sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.4,1.25);
            var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
            hfx_star_medium);
            h.depth = depth +1
        }
        break;
    case AT_BAIR:
        sound_play(sfx_spiral_hitsoft_1,false,noone,0.7,0.95);
        sound_play(sfx_poke_reflect,false,noone,0.6,1.1);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_medium);
        h.depth = depth +1
        break;
    case AT_UAIR:
        sound_play(sfx_poke_dazzlinggleam_2,false,noone,0.9,1.25);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET)*spr_dir,(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_medium);
        h.depth = depth +1
        break;
    case AT_FSTRONG:
        sound_play(sfx_spiral_hitsoft_1,false,noone,0.7,0.95);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_big);
        h.depth = depth +1
        break;
    case AT_DSTRONG:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.7,0.95);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_big);
        h.depth = depth +1
        break;
    case AT_USTRONG:
        sound_play(sfx_spiral_hitsoft_1,false,noone,0.7,0.95);
        sound_play(asset_get("sfx_shovel_hit_heavy1"),false,noone,0.45,1.25);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_big);
        h.depth = depth +1
        break;
    case AT_NSPECIAL:
        sound_play(sfx_spiral_hitsoft_2,false,noone,0.45,1.2);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_medium);
        h.depth = depth +1
        break;
    case AT_FSPECIAL:
        sound_play(sfx_poke_aerialace_2,false,noone,0.55,1.25);
        sound_play(sfx_spiral_attackwind,false,noone,0.45,0.95);
        break;
    case AT_FSPECIAL_2:
        sound_play(sfx_poke_stonedge_1,false,noone,0.65,1.25);
        sound_play(sfx_spiral_hitsoft_1,false,noone,0.35,0.95);
        break;
    case AT_DSPECIAL:
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_medium);
        h.depth = depth +1
        break;
    case AT_USPECIAL:
        sound_play(sfx_spiral_hitsoft_1,false,noone,0.7,0.95);
        sound_play(sfx_poke_hit_super,false,noone,0.95,1.05);
        var h = spawn_hit_fx((hit_player_obj.x + x)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_X_OFFSET),(hit_player_obj.y + y)*0.5 + get_hitbox_value(my_hitboxID.attack,my_hitboxID.hbox_num,HG_VISUAL_EFFECT_Y_OFFSET) - 25, 
        hfx_star_big);
        h.depth = depth +1
        break;
}