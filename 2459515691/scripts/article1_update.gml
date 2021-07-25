//state list
//0 - setup
//1 - idle
//2 - usage
//3 - break
//4 - boom boom

//player_id.(player variable) = (value); for variables in player object
//fueltank_ins.(player variable) = (value); for variables in article (use in player object)
//variables: state, image_index, frame_update, health2, field_index, field_frame_update, field_size,
//prevhitbox, prevattack, prevgroup, hit_stun, prevx, prevy, recoil_timer, health_alpha
//player variables: articleout, articlestate, infield

player_id.articleout = state < 3;

if (recoil_timer == 0)
{ 
    x = prevx;
    y = prevy;
}
else
    recoil_timer--;


switch (state)
{
    // spawn
    case 0:
        if (frame_update == 4 && image_index != 4)
        {
            image_index++;
            frame_update = 0;
        }
        else if (frame_update == 4 && image_index = 4)
        {
            image_index++;
            frame_update = 0;
            field_frame_update = 0;
            state = 1;
        }
        else
        {
            frame_update++;
        }

        if (field_index = -1 && field_frame_update == 11)
        {
                field_index++;
                field_frame_update = 0;
        }
        else if (field_frame_update == 3 && field_index != 3 && field_index != -1)
        {
            field_index++;
            field_frame_update = 0;
        }
        else
        {
            field_frame_update++;
        }

        if (image_index > 1)
        {
            health_alpha += 0.0625;
        }
        break;
    
    // idle
    case 1:
        image_index = 8 - health2;
        if (field_frame_update == 6 && field_index != 27)
        {
            field_index++;
            field_frame_update = 0;
        }
        else if (field_frame_update == 6 && field_index == 27)
        {
            field_index = 4;
            field_frame_update = 0;
        }
        else
        {
            field_frame_update++;
        }
        if (place_meeting(x, y, pHitBox))
        {
            prevhitbox = hitbox;
    	    hitbox = instance_place(x, y, pHitBox);
	        if (hit_stun <= 1)
            {
	            if ((hitbox.player_id != player_id) && (hitbox != noone) && (prevhitbox != hitbox) && ((hitbox.hbox_group != prevgroup) || (hitbox.hbox_group == -1) || (prevattack != hitbox.attack) || (prevattack = hitbox.attack && prevgroup = hitbox.hbox_group && !hitbox.player_id.has_hit)))
                {
	                prevattack = hitbox.attack;
	                prevgroup = hitbox.hbox_group;
                        hitbox.player_id.has_hit = true;
                    hit_stun = 8 + hitbox.hitpause + hitbox.extra_hitpause;
                    sound_play(hitbox.sound_effect);
                    spawn_hit_fx(x + hitbox.hit_effect_x, y + hitbox.hit_effect_y, hitbox.hit_effect);
                    health2--;
                    if (health2 > 0)
                    {
                        x += floor(lengthdir_x(5, hitbox.kb_angle)); //gets set to prevx when hit_stun is at 0
                        y += floor(lengthdir_y(5, hitbox.kb_angle)); //gets set to prevy when hit_stun is at 0
                        recoil_timer = 4;
                        spawn_hit_fx(x, y, HealthEffect());
                    }
                    else
                    {
                        state = 3;
                        sound_play(asset_get("sfx_shovel_hit_heavy2"));
                    }  
                }
            }
        }
        hit_stun--;
        break;
    
    // refuel
    case 2:
        //if (image_index < 12)
        //{
        //    image_index = 12;
        //}
        if (field_index != 32 && player_id.articlestate = 1)
        {
            field_index = 32;
            frame_update = 0;
        }

        if (frame_update == 0 && field_index = 32)
        {
            health2--;
        }

        if (health2 > 0) image_index = 8 - health2;
        else image_index = 7;

        if (frame_update == 4 && field_index != 35)
        {
            field_index++;
            frame_update = 0;
            if (field_index = 33) sound_play(asset_get("sfx_ori_glide_start"));
        }
        else if (frame_update == 4 && field_index = 35)
        {
            if (health2 <= 0)
            {
                state = 3;
                frame_update = 0;
                image_index = 8;
                field_index = 28;
                sound_play(asset_get("sfx_shovel_hit_heavy2"));
            }
            else
            {
                state = 1;
                frame_update = 0;
                field_index = 4;
            }
        }
        else
        {
            frame_update++;
        }

        //if (health_alpha != 0)
        //{
        //    health_alpha += -0.125;
        //}
        break;

    // break
    case 3:
        if (image_index < 8)
        {
            image_index = 8;
        }
        if (field_index < 28)
        {
            field_index = 28;
        }
        if (frame_update == 4 && field_index != 31)
        {
            image_index++;
            field_index++;
            frame_update = 0;
        }
        else if (frame_update == 4 && field_index == 31)
        {
            instance_destroy();
            exit;
        }
        else
        {
            frame_update++;
        }

        if (health_alpha != 0)
        {
            health_alpha += -0.125;
        }
        break;
    
    // boom boom
    case 4:
        if (image_index < 7)
        {
            image_index = 7;
        }
        if (frame_update == floor(1+(image_index/10 + 0.2))*2 && field_index != 31)
        {
            if (field_index < 28) field_index = 28;
            else field_index++;
            image_index++;
            frame_update = 0;
            if (image_index == 8){
            spawn_hit_fx(x, y, tank_explosion);
            sound_play(asset_get("sfx_ell_uspecial_explode"));
            create_hitbox(AT_DSPECIAL, 1, x, y);
            }
        }
        else if (frame_update == 4 && field_index == 31)
        {
            instance_destroy();
            exit;
        }
        else
        {
            frame_update++;
        }

        if (health_alpha != 0)
        {
            health_alpha += -0.125;
        }
        break;
}

if (player_id.state == PS_RESPAWN
|| player_id.state == PS_DEAD
|| place_meeting(x, y, asset_get("plasma_field_obj")))
{
    state = 3;
}

if (player_id.articlestate == 1)  
{
    state = 2;
    field_index = 32;
    frame_update = 0;
}

if (player_id.articlestate == 2 && state != 3)  
{
    state = 4;
    field_index = 28;
    image_index = 7;
    frame_update = 0;
}

#define HealthEffect()
{
    if (health2 == 1)
        return player_id.tankbreak2;
    return player_id.tankbreak1;
}