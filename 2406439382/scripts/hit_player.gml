// hit_player

switch(my_hitboxID.attack)
{
    case AT_DAIR:
        if (state_cat != SC_HITSTUN)
        {
            if (my_hitboxID.hbox_num != 3)
            {
                old_vsp = -1;
            }
            else
            {
                old_vsp = -4.5;
            }
        }
    break;
    case AT_USPECIAL:
        if (free)
        {
            if (state_cat != SC_HITSTUN)
            {
                attack_end();
                set_attack(AT_USPECIAL_2)
                pHurtBox.sprite_index = sprite_get("uspecial_endlag_hit_hurt")
            }
        }
        
        if (has_rune("O"))
        {
            var inst = instance_create(x ,y - 46,"obj_article2");
            inst.step = 235;
            inst.hurt_player = false;
        }
    break;
    case AT_USTRONG:
        has_hit = true;
        set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 30);
        
        window = 4;
        window_timer = 0;
        
        destroy_hitboxes()
    break;
    case AT_FSPECIAL:
        hit_player_obj.spr_dir *= -1;
        hit_player_obj.has_walljump = true;
        
        sound_play(sound_get("switch"))
        
        if (hit_player_obj.state_cat = SC_HITSTUN)
        {
            hit_player_obj.old_hsp = -hit_player_obj.true_old_hsp 
            hit_player_obj.hsp = hit_player_obj.old_hsp ;
            
            hit_player_obj.old_vsp = -hit_player_obj.true_old_vsp 
            hit_player_obj.vsp = hit_player_obj.old_vsp;
            
        }
        else
        {
       
            hitpause = true;
            hitstop_full = 4
            hitstop = hitstop_full;
            old_hsp = hsp;
            old_vsp = vsp;
            
            hit_player_obj.hitpause = true;
            hit_player_obj.hitstop_full = 4
            hit_player_obj.hitstop = hit_player_obj.hitstop_full;
            
            hit_player_obj.hsp *= -2 - (has_rune("K") * 2)
            hit_player_obj.old_hsp = hit_player_obj.hsp ;
            
            hit_player_obj.old_vsp = hit_player_obj.vsp;
        }
    break;
    case AT_FSTRONG:
        if (my_hitboxID.hbox_num == 3)
        {
            shake_camera( 3 + floor(strong_charge / 10) , 5 );
        }
    break;
}






