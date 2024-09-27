//hit_player.gml

#region Pastelle Stuff
atk = my_hitboxID.attack;
hbox = my_hitboxID.hbox_num;

if(atk == AT_NSPECIAL)
{
    //sfx
    if(hbox == 2)
        sound_play(asset_get("sfx_ice_shatter"), false, noone, 1, 0.8);
    // make sure the thunder doesnt hit twice.
    else if(hbox >= 4)
    {
        with(pHitBox)
        {
            if(attack == other.atk && player_id == other && hbox_num >= 4 && id != other.my_hitboxID)
            {
                can_hit = other.my_hitboxID.can_hit;
            }
        }
    }
}
else if(atk == AT_DSTRONG)
{
    switch(hbox)
    {
        case 1:
        case 2:
            sound_play(asset_get("sfx_waterhit_weak"), false, noone, 1, 1.2);
            break;
        case 3:
            sound_play(asset_get("sfx_watergun_splash"), false, noone, 1, 1.1);
            break;
    }
}
else if(atk == AT_USPECIAL)
{
    hit_player_obj.spr_dir = -spr_dir;
    if(hbox != 4)
    {
        // uspec_grab_id = hit_player_obj;
        hit_player_obj.x = lerp(hit_player_obj.x, x+hsp+30*spr_dir, 0.45);
        hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y+vsp, 0.45);
    }
    else
        uspec_grab_id = noone;
}
else if(atk == AT_USTRONG && hbox == 1)
{
    hit_player_obj.x = lerp(hit_player_obj.x, x+30*spr_dir, 0.45);
    hit_player_obj.y = lerp(hit_player_obj.y, y-50, 0.45);
}

if (my_hitboxID.attack == AT_FAIR){
    if(state_cat != SC_HITSTUN){    
	switch(my_hitboxID.hbox_num){
            case 1:
                old_vsp = -2;
                break;
            case 2:
                old_vsp = -2;
                break;
            case 3:
                
                old_vsp = -2;
                break;
        }
    }
}
//Super Armor break
if(atk == AT_FSTRONG && (hit_player_obj.soft_armor > 0 && hit_player_obj.state != PS_HITSTUN || hit_player_obj.super_armor 
|| hit_player_obj.state != PS_HITSTUN && (hit_player_obj.state == PS_ATTACK_AIR || hit_player_obj.state == PS_ATTACK_GROUND)))
{
    hit_player_obj.super_armor = false;
    hit_player_obj.soft_armor = 0
    hit_player_obj.state = PS_HITSTUN;

    take_damage(hit_player_obj.player, player, -1);
    //DIE
    var temp_hbox = create_hitbox(AT_DSPECIAL, 2, hit_player_obj.x, hit_player_obj.y-20);
    temp_hbox.draw_colored = false;
    temp_hbox.kb_value = my_hitboxID.kb_value;
    temp_hbox.kb_scale = my_hitboxID.kb_scale;
    temp_hbox.hitpause = my_hitboxID.hitpause*2;
    temp_hbox.kb_angle = my_hitboxID.kb_angle;
    temp_hbox.hitpause_growth = my_hitboxID.hitpause_growth;
    temp_hbox.hit_flipper = my_hitboxID.hit_flipper;
    hitstop = hitstop*2; 
}
//Apply ink
if (get_hitbox_value(atk, hbox, HG_HITBOX_COLOR) == hb_color[1])
{
    //Find the ink that you need to apply
    var ink_applied = 0;
    if(my_hitboxID.type == 2 && my_hitboxID.ink_apply)
        ink_applied = my_hitboxID.ink_hold;
    else if(my_hitboxID.type == 1)
        ink_applied = ink_hold;
    else return;

    hit_player_obj.past_ink_owner = self;

    //Give ink
    switch(ink_applied)
    {
        //ALL 5 SECONDS
        case 0: 
            hit_player_obj.past_ink_r = past_ink_time_max; break;
        case 1: 
            hit_player_obj.past_ink_b = past_ink_time_max; break;
        case 2: 
            hit_player_obj.past_ink_y = past_ink_time_max; break;
    }

    //INK REACTIONS!
    //RED & BLUE (1.5x damage)
    if(hit_player_obj.past_ink_r > 0 && hit_player_obj.past_ink_b > 0) 
    {
        sound_play(asset_get("sfx_frog_dspecial_hit"),false,noone,1,1.5);
        sound_play(asset_get("sfx_watergun_splash"),false,noone,0.5);
        hit_player_obj.past_ink_r = 0;
        hit_player_obj.past_ink_b = 0;
        if (hit_player_obj.object_index == oPlayer) take_damage(hit_player_obj.player, player, ceil(get_hitbox_value(atk, hbox, HG_DAMAGE)*0.5));
        else if ("enemy_stage_article" in hit_player_obj) hit_player_obj.hp -= ceil(get_hitbox_value(atk, hbox, HG_DAMAGE)*0.5);

        fx = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y-hit_player_obj.char_height/1.75), ink_react_p);
        fx.uses_shader = 0;
    }
    //BLUE & YELLOW (3x EXTRA HITPAUSE)
    else if(hit_player_obj.past_ink_b > 0 && hit_player_obj.past_ink_y > 0) 
    {
        sound_play(asset_get("sfx_frog_dspecial_hit"),false,noone,1,1.5);
        sound_play(asset_get("sfx_clairen_tip_strong"),false,noone,2);
        hit_player_obj.past_ink_y = 0;
        hit_player_obj.past_ink_b = 0;
        hit_player_obj.hitstop = hit_player_obj.hitstop_full*3;
        fx = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y-hit_player_obj.char_height/1.75), ink_react_g);
        fx.uses_shader = 0;
    }
    //RED & YELLOW (EXTRA KB)
    else if(hit_player_obj.past_ink_r > 0 && hit_player_obj.past_ink_y > 0) 
    {
        sound_play(asset_get("sfx_frog_dspecial_hit"),false,noone,1,1.5);   
        sound_play(asset_get("sfx_ori_seinhit_heavy"),false,noone,1,1.1);
        hit_player_obj.past_ink_r = 0;
        hit_player_obj.past_ink_y = 0;
        //remove damage 
        take_damage(hit_player_obj.player, player, -1);
        //recreate hitbox that hit you.
        hbox = create_hitbox(AT_DSPECIAL, 2, hit_player_obj.x, hit_player_obj.y-20);
        hbox.stop_effect = true;
        hbox.kb_value = my_hitboxID.kb_value+1;
        hbox.kb_scale = my_hitboxID.kb_scale*1.1;
        hbox.hitpause = my_hitboxID.hitpause*2;
        hbox.hitpause_growth = my_hitboxID.hitpause_growth;
        hbox.hit_flipper = my_hitboxID.hit_flipper;
        hbox.kb_angle = my_hitboxID.kb_angle;
        hbox.camera_shake = -1;
        if(my_hitboxID.type == 1) hitstop = hitstop * 1.6;

        shake_camera( 10, floor(hit_player_obj.hitstop * 1.6) );

        fx = spawn_hit_fx(floor(hit_player_obj.x), floor(hit_player_obj.y-hit_player_obj.char_height/1.75), ink_react_o);
        fx.uses_shader = 0;
    }
}
#endregion

#region TESTER Stuff
true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

#endregion