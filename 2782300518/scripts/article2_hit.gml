//article3_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

if (is_hittable)
{
    //this [hit_var_name] places a special var on hitboxes that hit it so they won't hit the article twice
    //projectiles usually don't have the same limitation on hits as melee hitboxes, and will hit articles every frame
    var hit_var_name = `article${id}_has_hit`;
    if (hit_var_name not in enemy_hitboxID)
    {
        variable_instance_set(enemy_hitboxID, hit_var_name, true);

        //check is the hitbox' owner is not the owner of the article or a teammate of the owner of the article
        //alternatively, check if it is owner of the article and if they are using fspec on it
        if (hit_player_obj != player_id && get_player_team(hit_player_obj.player) != get_player_team(player) || //check enemies
            hit_player_obj == player_id && (enemy_hitboxID.attack == AT_FSPECIAL && enemy_hitboxID.hbox_num == 1))
        {
            if (hit_player_obj != player_id)
            {
                if (player_id.voice == 1) 
                {
                    stopVoice();
                    with (player_id) 
                    {
                        sound_play(sound_get("en_dont_blink"));
                    }
                }
                if (player_id.voice == 2) 
                {
                    stopVoice();
                    with (player_id)
                    {
                        sound_play(sound_get("jp_laugh"));
                    }
                }
                hit_player_obj.hitstop = hitstop + 25;
                hit_player_obj.hitstop_full = hitstop + 25;
                with(hit_player_obj)
                {
                    set_state(PS_PRATFALL);
                    hit_player_obj = other;
                    old_vsp = 0;
                    old_hsp = 0;
                    vsp = 0;
                    hsp = 0;
                    orig_knock = 0;
                    hitstun = 10;
                    hitstun_full = 10;
                    has_walljump = true;
                }
            }
            countering = true;
            state = 2;
            state_timer = 0;
            window = 1;
            window_timer = 0;
            with (player_id) sound_play(sound_get("effect_activation"));
            
            //hitbox interraction
            with (enemy_hitboxID)
            {
                sound_play(sound_effect); //plays the hitbox's hit sound... on hit
                spawn_hit_fx(hit_effect_x + other.x, hit_effect_y + other.y - other.article_height/2, hit_effect); //puts up the hit fx of the hitbox

                if (type == 2 && enemies == 0) instance_destroy(self);
                if (attack == AT_FSPECIAL && hbox_num = 1) destroyed = true;;
            }
        }
        else
        {
            //if the owner of the hitbox shouldn't hit it, this will prevent them from going into hitstop (hitpause)
            //fun fact: article#_hit runs BEFORE hit_player
            with (player_id)
            {
                hitstop = 0;
                hitpause = 0;
            }
        }
    }
}

#define stopVoice()

sound_stop(sound_get("en_abc_combine"));
sound_stop(sound_get("en_activate_spell"));
sound_stop(sound_get("en_battle"));
sound_stop(sound_get("en_blue_eyes"));
sound_stop(sound_get("en_blue_eyes_voice_2"));
sound_stop(sound_get("en_blue_eyes_white_dragon"));
sound_stop(sound_get("en_burst_stream_of_destruction"));
sound_stop(sound_get("en_death"));
sound_stop(sound_get("en_dont_blink"));
sound_stop(sound_get("en_final_death"));
sound_stop(sound_get("en_final_death_2"));
sound_stop(sound_get("en_grunt_1"));
sound_stop(sound_get("en_grunt_2"));
sound_stop(sound_get("en_grunt_3"));
sound_stop(sound_get("en_hurt_1"));
sound_stop(sound_get("en_hurt_2"));
sound_stop(sound_get("en_hurt_3"));
sound_stop(sound_get("en_hurt_4"));
sound_stop(sound_get("en_hurt_5"));
sound_stop(sound_get("en_hurt_6"));
sound_stop(sound_get("en_maiden_with_eyes_of_blue"));
sound_stop(sound_get("en_not_so_fast"));
sound_stop(sound_get("en_now"));
sound_stop(sound_get("en_obelisk_voice"));
sound_stop(sound_get("en_obelisk_voice_2"));
sound_stop(sound_get("en_obelisk_voice_3"));
sound_stop(sound_get("en_parry_voice_1"));
sound_stop(sound_get("en_parry_voice_2"));
sound_stop(sound_get("en_parry_voice_3"));
sound_stop(sound_get("en_parry_voice_4"));
sound_stop(sound_get("en_parry_voice_5"));
sound_stop(sound_get("en_respawn"));
sound_stop(sound_get("en_respawn_2"));
sound_stop(sound_get("en_see_how_you_like_this"));
sound_stop(sound_get("en_third_rate_duelist"));
sound_stop(sound_get("en_trap_activates"));
sound_stop(sound_get("jp_blue_eyes"));
sound_stop(sound_get("jp_blue_eyes_white_dragon"));
sound_stop(sound_get("jp_blue_eyes_white_dragon_2"));
sound_stop(sound_get("jp_bow_before_gods"));
sound_stop(sound_get("jp_burst"));
sound_stop(sound_get("jp_burst_stream"));
sound_stop(sound_get("jp_crush_card_virus"));
sound_stop(sound_get("jp_death"));
sound_stop(sound_get("jp_dragon"));
sound_stop(sound_get("jp_draw"));
sound_stop(sound_get("jp_future_lies_beyond"));
sound_stop(sound_get("jp_grunt_1"));
sound_stop(sound_get("jp_grunt_2"));
sound_stop(sound_get("jp_hard_attack_1"));
sound_stop(sound_get("jp_hard_attack_2"));
sound_stop(sound_get("jp_hurt_1"));
sound_stop(sound_get("jp_hurt_2"));
sound_stop(sound_get("jp_hurt_3"));
sound_stop(sound_get("jp_ill_accept_you"));
sound_stop(sound_get("jp_laugh"));
sound_stop(sound_get("jp_lets_go"));
sound_stop(sound_get("jp_obelisk_voice"));
sound_stop(sound_get("jp_obelisk_voice_2"));
sound_stop(sound_get("jp_obelisk_voice_3"));
sound_stop(sound_get("jp_shadow_spell"));
sound_stop(sound_get("jp_taunt"));
sound_stop(sound_get("jp_there_is_no_light"));
sound_stop(sound_get("jp_useless"));
