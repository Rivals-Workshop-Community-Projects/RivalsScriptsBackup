//This is projectile that drags you back in :flushed:
if(attack == AT_JAB)
{
    switch(hbox_num)
    {
    case 3:
        transcendent = true;
        hsp = hsp - (1.25 * spr_dir); // makes it so that it boomerangs
        if(!was_parried && player_id.hitstop == 0)
        {
            if(get_gameplay_time() mod 3 == 0) //every couple frames
                create_hitbox(AT_JAB,4, x, y);
        }
        else
            destroyed = true;
            
        break;
    case 4:
        image_alpha = 0;
        break;
    }
}
else if(player_id != orig_player)
{ 
    if(attack == AT_FSPECIAL)
    {
        through_platforms = 999;
        if(hitbox_timer % 1 == 0  && player_id.arrowchain < 30)
        {
            if(player_id.arrowchainx[player_id.arrowchain] == 0)
                player_id.arrowchainx[player_id.arrowchain] = x;
            if(player_id.arrowchainy[player_id.arrowchain] == 0)
                player_id.arrowchainy[player_id.arrowchain] = y;
            player_id.arrowchain ++;
            player_id.chainangle = 0;
        }
        
        if(place_meeting(x+hsp*3,y,asset_get("par_block")) && !player_id.fspechit)
        {
            if(player_id.hit_dest == -9999)
                sound_play(asset_get("sfx_kragg_rock_land"));
            player_id.fspechit = true;
            player_id.hit_dest = x+hsp;
        }
    }
    else if(attack == AT_FSPECIAL_AIR)
    {
        through_platforms = 999;
        vsp = 12;
        if(hitbox_timer % 1 == 0 && player_id.arrowchain < 30)
        {
            if(player_id.arrowchainx[player_id.arrowchain] == 0)
                player_id.arrowchainx[player_id.arrowchain] = x;
            if(player_id.arrowchainy[player_id.arrowchain] == 0)
                player_id.arrowchainy[player_id.arrowchain] = y;
            player_id.arrowchain ++;
            player_id.chainangle = (spr_dir == 1 ? -45 : 45);
        }
        if(proj_angle == 0)
        {
            through_platforms = 60;
            if(spr_dir == 1)
                proj_angle = -45;
            else
                proj_angle = 45;
        }
            
        if(place_meeting(x+hsp*3,y+vsp*3,asset_get("par_block")) && !player_id.fspechit)
        {
            if(player_id.hit_dest == -9999)
                sound_play(asset_get("sfx_kragg_rock_land"));
            player_id.fspechit = true;
            player_id.hit_dest = x+hsp;
            player_id.hit_floor = y+hsp;
        }
        if(!free)
            destroyed = true;
    }
    else if(attack == AT_NSPECIAL && hbox_num == 2)
    {
        can_hit_self = false;
        for(i = 0; i < 4; i++)
            can_hit[i+1] = false;
    }
    else if(type == 2 && (attack != AT_JAB || attack != AT_FSPECIAL)) //if its the arrow projectile
    {
        if(!variable_instance_exists(id, "startdmg")) //do this at the start
        {
            startdmg = 0;
            if(player_id.arrowsremain[player_id.power_color] != 0)
            {
                player_id.arrowsremain[player_id.power_color] --;
                arrowclr = player_id.power_color
            }
            else
                arrowclr = 0;

            //change projecttile style
            switch(arrowclr)
            {
                case 0: //regular
                    sprite_index = sprite_get("powergo");
                    break;
                case 1: //fire
                    sprite_index = sprite_get("firego");
                    effect = 1;
                    damage = ceil(damage * 1.3);
                    kb_scale = kb_scale * 0.8;
                    break;
                case 2: //electric
                    sprite_index = sprite_get("elecgo");
                    damage = damage * 0.8;
                    kb_value = kb_value * 0.8;
                    extra_hitpause = 12;
                    length = length + 20;
                    break;
                case 3: //ice
                    sprite_index = sprite_get("icego");
                    damage = damage * 0.8;
                    kb_value = kb_value * 1.2;
                    break;
                case 4: //rock
                    sprite_index = sprite_get("rockgo");
                    damage = damage * 0.8;
                    kb_value = kb_value * 0.7;
                    kb_angle = 270;
                    break;
            }
        }

        if(attack == AT_DATTACK)
            proj_angle = 180;

        if(attack == AT_USTRONG)
        {
            if(proj_angle == 0)
            {
                if(spr_dir == 1)
                    proj_angle = 90;
                else
                    proj_angle = 270;
            }
        }

        if(attack == AT_DAIR)
        {

            if(!free)
            {
                //create ice
                if(arrowclr == 3)
                {
                    for(icecheck = -1; icecheck < 2; icecheck ++)
                    {
                        if(position_meeting(x+(icecheck*60),y+30,asset_get("par_block")) || position_meeting(x+(icecheck*40),y+30,asset_get("par_jumpthrough")))
                        { create_hitbox(AT_NSPECIAL, 2, x+(icecheck*40), y+17);
                        if(icecheck == 0) sound_play(asset_get("sfx_ice_shatter_big"));}
                    }
                }
                destroyed = true;
            }

            if(proj_angle == 0)
            {
                if(spr_dir == 1)
                    proj_angle = 270;
                else
                    proj_angle = 90;
            }
        }

        if(attack == AT_NSPECIAL && hbox_num == 1)
        {
            if(!variable_instance_exists(id, "shootangle"))
            {
                shootangle = player_id.aim_angle/180*-3.14;
                proj_angle = player_id.aim_angle;
                if(player_id.spr_dir == -1)
                    proj_angle += 180;
                hsp = cos(shootangle)*18;
                vsp = sin(shootangle)*18;
            }

            if(!free)
            {
                //create ice
                if(arrowclr == 3)
                {
                    for(icecheck = -1; icecheck < 2; icecheck ++)
                    {
                        if(position_meeting(x+(icecheck*60),y+30,asset_get("par_block")) || position_meeting(x+(icecheck*40),y+30,asset_get("par_jumpthrough")))
                        { create_hitbox(AT_NSPECIAL, 2, x+(icecheck*40), y+17);
                        if(icecheck == 0) sound_play(asset_get("sfx_ice_shatter_big"));}
                    }
                }
                destroyed = true;
            }
        }

        if(hitbox_timer == length-1)
        {   hfx = spawn_hit_fx( x, y, disappearFX ); 
            hfx.draw_angle = proj_angle;}
    }
}