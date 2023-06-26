
if attack == AT_NSPECIAL {
    if !was_parried {
        if hitbox_timer > 15 {
            hsp = hsp * .9;
        }
        if hitbox_timer == length {
            if player_id.altReal == 29 {
                sound_play(sound_get("RING"))
            }
            sound_play(asset_get("sfx_buzzsaw_throw"))
            
            spawn_hit_fx(x, y, player_id.vfx_m);
            if (player == orig_player) spawn_gem(0, -6);
        }
    }
}

if attack == AT_USPECIAL  {
     if hitted > 0 {
        hitted++;
    }
    if hbox_num == 1 {
        if was_parried {
            destroyed = 1 
            sound_play(asset_get("sfx_zetter_upb_hit"))
        }
        //print(proj_angle)
        if hitbox_timer < 0 {
            proj_angle += 5;
            proj_angle = round(proj_angle % 360)
        }

        //print(hitted)
        if !free {
                vsp *= -.9
                if vsp > -5 {
                    vsp = -5
                }
                hsp *= 0.8
                sound_play(asset_get("sfx_kragg_roll_land"))
                if attack == AT_DSPECIAL{ 
                spawn_hit_fx( x, y + 8, dynspark )
                } else {
                    spawn_hit_fx( x, y+ 5, dynspark)
                }
        }

        if hitbox_timer == 5 || hitted == 2 {
            sound_play(sound_get("boom"), 0, noone, 1, 1.3)

        }

        if hitbox_timer == 4 || hitted == 2 {
                player_id.uspec_bomb = spawn_hit_fx( x, y, player_id.vfx_ds )

        }
        if (hitbox_timer == 5 || hitted == 3){
            sprite_index = asset_get( "empty_sprite" );
            explosion = create_hitbox( AT_USPECIAL, 2, x, y );
            //if (player == orig_player) spawn_gem(2*spr_dir, -3);
            destroyed = 1;
        }

    }

}

if attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR {
    if hitted > 0 {
        hitted++;
    }
    if hbox_num == 2 {

        if was_parried {
            destroyed = 1 
            sound_play(asset_get("sfx_zetter_upb_hit"))
        }
        //print(proj_angle)
        if hitbox_timer < 70 {
            proj_angle += 5;
            proj_angle = round(proj_angle % 360)
        }
        if hitbox_timer > 70 {
            if proj_angle > 0 {
                proj_angle--;
            } 
            if proj_angle < 0 {
                proj_angle++;
            }

        }
        //print(hitted)
        if !free{
                vsp *= -.9
                if vsp > -5 {
                    vsp = -5
                }
                hsp *= 0.8
                sound_play(asset_get("sfx_kragg_roll_land"))
                if attack == AT_DSPECIAL{ 
                spawn_hit_fx( x, y + 8, dynspark )
                } else {
                    spawn_hit_fx( x, y+ 5, dynspark)
                }
                hitbox_timer = 59 //lol //nvm 
        }

        if hitbox_timer == 75 || hitted == 2 {
            sound_play(sound_get("boom"))

        }
        if hitbox_timer >70 {
            hsp = hsp * .8
            vsp = vsp * .8
            grav = 0
        }
        if hitbox_timer == 76 || hitted == 2 {
                spawn_hit_fx( x, y, player_id.vfx_d )

        }
        if (hitbox_timer == 77 || hitted == 3){
            sprite_index = asset_get( "empty_sprite" );
            explosion = create_hitbox( AT_DSPECIAL, 3, x, y );
            if (player == orig_player) spawn_gem(2*spr_dir, -3);
            sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
            destroyed = 1;
        }
        if hitbox_timer == 78 || hitted == 4{
            // ?
        }
    }

}


//.asd
// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;


#define spawn_gem(nhsp, nvsp)
with player_id {
    gold_obj = instance_create(other.x, other.y+6, "obj_article1");
    gold_obj.hsp = nhsp;
    gold_obj.vsp = nvsp;
    other.destroyed = true;
    if get_player_color(player) != 16 {
    sound_play(asset_get("sfx_abyss_hex_hit"))
    sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
    }
}

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
