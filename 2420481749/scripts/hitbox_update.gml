//hi



if (attack == AT_USTRONG && hbox_num == 6)
{
    if !free
    {
        if !stop_bounce && !hitstop
        {
            with player_id
            {
                spawn_hit_fx( other.x, other.y+28, impact);
                create_hitbox(AT_USTRONG, 7, other.x, other.y-20);
                sound_play(asset_get("sfx_tow_anchor_land"));
            }
            
            vsp = -12;
            grounds = 1;
            walls = 1;
            hsp += 2*spr_dir;
            grav+=0.2;
            stop_bounce = true;
        }
    }
    
    if stop_bounce
    {
        if vsp <= 1
        {
            hsp*=0.99;
        }
    }
}

if (attack == AT_DTILT && hbox_num == 1) {
    
    var my_x = x;
    var my_y = y;
    
    with (hit_fx_obj) if (player_id == other.player_id && (hit_fx == other.player_id.bob_hit || hit_fx == other.player_id.bob_fall)) {
        other.should_destroy = true;
    }
    
    with player_id {
        move_cooldown[AT_DTILT] = 14;
    }
    
    if !free { 
        destroyed = true;
        with player_id {
            var bob_fallhfx = spawn_hit_fx( my_x, my_y, bob_fall);
            bob_fallhfx.spr_dir = other.spr_dir;
        }
    }
}
    
if (attack == AT_FSTRONG && hbox_num == 1 && sprite_index == sprite_get("bowserfire")) {
    
    var my_x = x;
    var my_y = y;
    
    if !free { 
        destroyed = true;
        with player_id {
            var bob_fallhfx = spawn_hit_fx( my_x, my_y, bowserfireburst );
            bob_fallhfx.spr_dir = other.spr_dir;
            create_hitbox( AT_FSTRONG, 2, my_x, my_y);
        }
    }
}

if (attack == AT_FSTRONG_2)
{
    var my_x = x;
    var my_y = y;
    
    if (!free)
    {
        hsp = 0;
        vsp = 0;
        
        grav = 20;
        
        if feather_ignite == false
        {
            with player_id
            {
                var spark = spawn_hit_fx( my_x, my_y+8, firevellsprk);
                spark.depth = -9;
                spark.spr_dir = other.spr_dir;
            }
            sound_play(asset_get("sfx_zetter_upb_hit"));
            feather_ignite = true;
            
        }
        
        if length-hitbox_timer == 1
        {
            with player_id
            {
                spawn_hit_fx( my_x, my_y, bowserfireburst );
            }
        }
    }
    else
    {
    switch (hbox_num)
        {
            case 1:
            {
                image_index = 0;
            }break;
            
            case 2:
            {
                image_index = 1;
            }break;
            
            case 3:
            {
                image_index = 2;
            }break;
        }
    }
    
    if hsp == 0 && vsp == 0
    {
        switch (hbox_num)
        {
            case 1:
            {
                sprite_index = sprite_get("firevellfeather3");
                img_spd = 0.2;
            }break;
            
            case 2:
            {
                sprite_index = sprite_get("firevellfeather2");
                img_spd = 0.2;
            }break;
            
            case 3:
            {
                sprite_index = sprite_get("firevellfeather1");
                img_spd = 0.2;
            }break;
        }   
    }
}

if (attack == AT_DSPECIAL)
{
    spr_dir = 1;
    if !free
    {
        tencoin_x = x;
        tencoin_y = y;
        
        with player_id
        {
            tencoin_x = other.tencoin_x
            tencoin_y = other.tencoin_y
            spawntencoin = true;
        }
        should_destroy = true;
    }
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND) && (hbox_num == 1) && hitbox_timer >= 15
{
    var sprite_direction2 = spr_dir;
    
    with obj_article2
    {
        if place_meeting(x, y, other)
        {
            switch (state)
            {
                case 3:
                {
                    other.jr_redirection = 12;
                    other.jr_redirect = 3;
                    arrowpush = false;
                    panelfade = true;
                }break;
                
                case 4:
                {
                    if other.spr_dir == -1
                    {
                        other.jr_redirection = 12;
                        other.jr_redirect = 4;
                    }
                    arrowpush = false;
                    panelfade = true;
                }break;
                
                case 5:
                {
                    other.jr_redirection = 12;
                    other.jr_redirect = 5;
                    arrowpush = false;
                    panelfade = true;
                }break;
                
                case 6:
                {
                    if other.spr_dir == 1
                    {
                        other.jr_redirection = 12;
                        other.jr_redirect = 6;
                    }
                    arrowpush = false;
                    panelfade = true;
                }break;
            }
        }
    }
    
    if jr_redirection >= 1
    {
        if jr_redirection == 2  
        {
            sound_play(sound_get("dodge"));
        }
        
        sprite_index = sprite_get("bowserjr_flying");
        
        jr_redirection--;
        
        hsp*=0.7;
        vsp*=0.7;
    }
    
    if jr_redirection == 0 && jr_redirect != 0
    {
        sprite_index = sprite_get("bowserjr_tackle_projectile");
        
        switch (jr_redirect)
        {
            case 3:
            {
                hsp = 0;
                vsp = 16;
            }break;
            
            case 4:
            {
                length = 120;
                spr_dir = 1;
                hsp = 16;
            }break;
            
            case 5:
            {
                hsp = 0;
                vsp = -16;
            }break;
            
            case 6:
            {
                length = 120;
                spr_dir = -1;
                hsp = -16;
            }break;
        }
    }
    
    with player_id 
    {
        move_cooldown[AT_USPECIAL] = 8;
        move_cooldown[AT_USPECIAL_GROUND] = 8;
    }
}

if should_destroy == true {
    destroyed = true;
}

if (attack == AT_DSTRONG_2 && hbox_num == 1)
{
    if length-hitbox_timer == 2
    {
        spawn_hit_fx( x, y, 28);
    }
}