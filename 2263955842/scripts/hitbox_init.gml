//hitbox_init

switch(attack)
{
    case AT_TAUNT_2:
    // apple projectile behind player
        depth = player_id.depth + 1;
        vsp_mem = 0;
    break;
    case AT_FSTRONG:
        through_platforms = 400;
       
        with(player_id)
        {
            var ang = get_hitbox_value(AT_DSPECIAL, other.hbox_num, HG_ANGLE)
            var spd = 4 + strong_charge / 20;	
        }
        proj_angle = ang;
        
        mem_spd = spd;
        mem_angle = ang
        
        kb_angle = 60;
        
        hsp = lengthdir_x(spd,ang);
        vsp = lengthdir_y(spd,ang);
    break;
    case AT_DSPECIAL:
        through_platforms = 400;
        
        with(player_id)
        {
            var ang = get_hitbox_value(AT_DSPECIAL, other.hbox_num, HG_ANGLE)
            var spd = get_hitbox_value(AT_DSPECIAL, other.hbox_num, HG_PROJECTILE_HSPEED)
        }
        proj_angle = ang;
        
        mem_spd = spd;
        mem_angle = ang
        
        kb_angle = 60;
        
        hsp = lengthdir_x(spd,ang);
        vsp = lengthdir_y(spd,ang);
    break;
    case AT_DSPECIAL_2:
        through_platforms = 400;
        
        with (player_id)
        {
            var spd = get_hitbox_value(other.attack, 1, HG_PROJECTILE_HSPEED)
        }
        var angle = random_func(6, 360,true);
        
        
        proj_angle = angle 
      
      
        hsp = lengthdir_x(spd,angle);
        vsp = lengthdir_y(spd,angle);
    break;
    case AT_NSPECIAL_2:
        spr_dir = 1;
    break;
    case AT_NSPECIAL:
    	/*
        if (player_id.is_reimu_a)
        {
           // can_hit_self = true;
        }
        
        // finding the yinyang linked to this hitbox
        var my_player_id = player_id;
        var my_yy = noone;
        with (obj_article2)
        {
            if (player_id == my_player_id)
            {
                if (my_hitbox == other)
                {
                    var my_yy = self;
                }
            }
        }
        if (my_yy != noone)
        {
            my_yinyang = my_yy;
        }
        else
        {
            destroyed = true;
        }*/
    break;
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
    case AT_FSPECIAL_AIR:
    
        through_platforms = 400;
       
        if (attack == AT_FSPECIAL_2)
        {
            var shot_angle_dif = 26;
            
                //airborn offset
                x -= player_id.free * 7 * player_id.spr_dir;
                y += player_id.free * 16;
        }
        else
        {
             var shot_angle_dif = 5;// the angle difference between shots
             
              //airborn offset
                x -= player_id.free * 7 * player_id.spr_dir;
                y += player_id.free * 16;
        }
        
        var shot_nbr = floor(player_id.grazeMeter) + 1 - player_id.fspe_is_charged ; // the number of total shot
        var shot_id = shot_nbr - player_id.fspe_extra_to_shot - 1 ;
        
        
        if (shot_id != shot_nbr - 1)
        {
            sound_play(sound_get("shot2"));
        }
        else
        {
            sound_play(sound_get("shot3"));
        }
        
        if true//(!player_id.fspe_is_charged)
        {
            
            if (shot_nbr % 2 == 0)
            {
                var angle = ((shot_nbr - 1) * shot_angle_dif) / 2 - shot_id * shot_angle_dif - player_id.free * 29 - 1 ;
            }
            else
            {
                var angle = floor(shot_nbr / 2) * shot_angle_dif - shot_id * shot_angle_dif - player_id.free * 29 - 1 ;
            }
            
            angle += random_func( 3, 2, false) - 1;
            
            if (attack == AT_FSPECIAL_2)
            {
                angle += 20;
            }
        }
        else
        {
            var ang_max = 50;
            var angle = random_func( shot_id, ang_max , true ) - ang_max / 2 - player_id.free * 30;
        }
        
        if (spr_dir == -1)
        {
            angle = 180 - angle 
        }
        
        with (player_id)
        {
            var spd = get_hitbox_value(other.attack, 1, HG_PROJECTILE_HSPEED) - !fspe_is_charged * 3
        }
        
        proj_angle = angle 
      
        hsp = lengthdir_x(spd,angle);
        vsp = lengthdir_y(spd,angle);
    break;
}
 

vsp_mem = 0
hsp_mem = 0

// g&w no absorb

if (attack == AT_NSPECIAL){
	 no_absorb = 1 ;
}
