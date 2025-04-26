//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around

//flips projectile sprite on parry
if (was_parried) draw_xscale = spr_dir;

visible = false;

if(attack == AT_DSPECIAL && !free)
{
    sound_play(sound_get("ink_burst"),false,noone,0.4, 2);
    destroyed = true;
}
else if(attack == AT_NSPECIAL)
{
    //FROST SHOT
    if (hbox_num == 2) if (hitbox_timer == length) spawn_hit_fx(x, y, destroy_fx); //disappear effect when the projectile's lifetime is over

    //THUNDER TRAP
    if (hbox_num == 3)
    {
        switch(hbox_state)
        {
            //Waiting
            case 0:
                image_index %= 8;

                //Arming time delay before detecting
                if(hitbox_timer > 20)
                {
                    //detecting a player goes to state 1
                    with (oPlayer) if (place_meeting(x,y,other) && id != other.player_id)
                    {
                        sound_play(asset_get("sfx_absa_whip_charge"), false, noone, 1.5);
                        other.hbox_state = (state_cat == SC_HITSTUN ?3:1);
                        other.anim_timer = 0;
                        other.hitbox_timer = 0;
                    }
                }

                //deactivate trap after some time goes to state 2
                if (hitbox_timer > 590 || player_id.state == PS_RESPAWN || player_id.state == PS_DEAD)
                {
                    if(hitbox_timer > 590)
                    {
                        with(player_id)
                        {
                            if(secretalt == 1 && lang != 0)
                            {
                                cur_voiceclip[0] = sound_play(sound_get("sl_uh_sir_the_bomb"));
                            }
                        }
                    }
                    hbox_state = 2;
                    hitbox_timer = 0;
                    anim_timer = 0;
                    image_index = 8;
                    sound_play(asset_get("sfx_absa_jab1"), false, noone, 0.2, 0.7);
                }
                break;
            //THUNDER STRUCK
            case 1:
                player_id.move_cooldown[AT_NSPECIAL] = 25;
                if(sprite_index != sprite_get("nspecial_thunder"))
                {
                    sprite_index = sprite_get("nspecial_thunder");
                    y += 50;
                }

                var end_time = 48;
                if (anim_timer >= end_time) destroyed_next = true;
                image_index = lerp(0, image_number-0.999999, anim_timer/end_time)

                if (anim_timer == 18){
                    sound_play(asset_get("sfx_clairen_swing_weak"),false,noone,1,1.5);
                } 
                if (anim_timer == 21)
                {
                    shake_camera( 12, 6 )
                    sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.7,0.9);
                    sound_play(sound_get("sfx_thunder"),false,noone,2);
                    sound_play(sound_get("ink_burst"),false,noone,0.6, 1);
                    hbox = create_hitbox(AT_NSPECIAL, 4, x, y-46);
                    hbox.ink_hold = 2;
                    hbox.ink_apply = true;
                    hbox = create_hitbox(AT_NSPECIAL, 5, x, y-150);
                    hbox.ink_hold = 2;
                    hbox.ink_apply = true;
                }
                break;
            //FADE
            case 2:
                var end_time = 16;
                if (anim_timer >= 16) destroyed_next = true;
                image_index = lerp(8, image_number-1, anim_timer/end_time);
                break;
            //THUNDER SPAWN FASTER WHEN HITSTUN DETECTED
            case 3:
                if(sprite_index != sprite_get("nspecial_thunder"))
                {
                    sprite_index = sprite_get("nspecial_thunder");
                    y += 50;
                }

                image_index = anim_timer;

                if (anim_timer == 1) sound_play(asset_get("sfx_clairen_swing_weak"),false,noone,1,1.5); 
                else if (anim_timer == 5)
                {
                    hbox_state = 1;
                    anim_timer = 20;
                    hitbox_timer = 0;
                }
                break;
        }
        anim_timer ++;
    }
}