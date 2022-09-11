//BASIL became toast!
if (state == PS_DEAD && get_player_stocks( player ) == 0){
    set_ui_element( UI_HUDHURT_ICON, sprite_get("ui_toast") );
}
else if (get_player_stocks( player ) > 0){
    set_ui_element( UI_HUDHURT_ICON, sprite_get("hudhurt") );
}

//check if rivals player
var grass_out = false;

with(asset_get("obj_article1")){
    if (player_id == other.id){
        grass_out = true;
    }
}

//control variable on_grass
if (grass_out){
    with(asset_get("obj_article1")){
        if (player_id == other.id){
            if (x > other.x - other.grass_range && x < other.x + other.grass_range && y < other.y + 2 && y > other.y - 2){
                other.on_grass = true;
                break; 
                //end loop early so it doesn't check through every grass article
            }
            else{
                other.on_grass = false;
            }
        }
    }
}
else{
    on_grass = false;
}

//boosted sfx
with (asset_get("pHitBox")){
    if (player_id == other.id){
        if ((attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FSTRONG) && kb_scale > 0 && other.boosted){
            hit_effect = other.petal_tipper;
        }
    }
}


//not boosted
if (!boosted){
    reset_hitbox_value( AT_USTRONG, 1, HG_DAMAGE );
    reset_hitbox_value( AT_USTRONG, 1, HG_BASE_KNOCKBACK );
    reset_hitbox_value( AT_USTRONG, 1, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_USTRONG, 1, HG_VISUAL_EFFECT );
    reset_hitbox_value( AT_USTRONG, 2, HG_DAMAGE );
    reset_hitbox_value( AT_USTRONG, 2, HG_BASE_KNOCKBACK );
    reset_hitbox_value( AT_USTRONG, 2, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_USTRONG, 2, HG_VISUAL_EFFECT );
    
    reset_hitbox_value( AT_DSTRONG, 1, HG_DAMAGE );
    reset_hitbox_value( AT_DSTRONG, 1, HG_BASE_KNOCKBACK );
    reset_hitbox_value( AT_DSTRONG, 1, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_DSTRONG, 1, HG_VISUAL_EFFECT );
    reset_hitbox_value( AT_DSTRONG, 3, HG_DAMAGE );
    reset_hitbox_value( AT_DSTRONG, 3, HG_BASE_KNOCKBACK );
    reset_hitbox_value( AT_DSTRONG, 3, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_DSTRONG, 3, HG_VISUAL_EFFECT );
    
    reset_hitbox_value( AT_FSTRONG, 1, HG_DAMAGE );
    reset_hitbox_value( AT_FSTRONG, 1, HG_BASE_KNOCKBACK );
    reset_hitbox_value( AT_FSTRONG, 1, HG_KNOCKBACK_SCALING );
    reset_hitbox_value( AT_FSTRONG, 1, HG_EXTRA_HITPAUSE );
    reset_hitbox_value( AT_FSTRONG, 1, HG_VISUAL_EFFECT );
    
    reset_hitbox_value( AT_NSPECIAL, 1, HG_DAMAGE );
    reset_hitbox_value( AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE );
    reset_hitbox_value( AT_NSPECIAL, 1, HG_VISUAL_EFFECT );
}


//timer for fspec full charge outline
if (should_attack){
    flash_timer++;
}
else if (flash_timer > 0){
    flash_timer = 0;
    outline_color = [0, 0, 0];
}

//nspec status effect
var alt_r = get_color_profile_slot_r(get_player_color(player), 7);
var alt_g = get_color_profile_slot_g(get_player_color(player), 7);
var alt_b = get_color_profile_slot_b(get_player_color(player), 7);

with(asset_get("oPlayer")){
    if (id != other.id){
        if(flower_crown_id == other.id && flower_crowned == true){
            flower_crown_timer = flower_crown_timer - 1;
            outline_color = [ alt_r/2, alt_g/2, alt_b/2 ];
            init_shader();
            if (flower_crown_timer mod other.time_between_damage == 0){
                take_damage( player, -1, 1 );
                /*
                sound_stop(asset_get("sfx_blow_weak1"));
                sound_play(asset_get("sfx_blow_weak1"));
                spawn_hit_fx( x + 0*spr_dir, y - 20, 301 );
                */
            }
        }
        if (flower_crown_timer == 0){
            flower_crowned = false;
            outline_color = [ 0, 0, 0 ];
            init_shader();
        }
        if (state == PS_RESPAWN){
            flower_crowned = false;
            flower_crown_timer = 0;
        }
    }
}

if (url != 2858800302){
	player = -1;
	spawn_hit_fx(x,y,0);
}