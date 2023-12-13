//state list
//0 - setup
//1 - idle
//2 - hit/hitbox
//3 - grow (probably not going to use)
//4 - shrink (probably not going to use)
//5 - destroy

//player_id.(player variable) = (value); for variables in player object
//venombubble_ins.(player variable) = (value); for variables in article (use in player object)
//
//player variables:

if (state != 5)
{
  
    if (state = 2)
    {  
    hsp = hsp*0.96;

    //vsp += 0.1;
    //y += kb_grav;
    vsp += kb_grav;
    if (vsp < 1) vsp = vsp*0.9;
    else vsp = vsp*0.9;
    }
    else
    {
    hsp = hsp*0.9;
    
    vsp = vsp*0.9;
    vsp += 0.01;
    }

    if (hit_wall)
    {
        hsp = -prev_hsp*0.3;
        x += hsp;
    }
    if (!free)
    {
        vsp = -prev_vsp*0.3;
        y += vsp;
    }
    prev_hsp = hsp;
    prev_vsp = vsp;

    if (player_id.state == PS_RESPAWN
    || player_id.state == PS_DEAD
    || place_meeting(x, y, asset_get("plasma_field_obj")))
    {
        image_index = 16+level*3;
        frame_update = 0;
        state = 5;   
    }

        if (place_meeting(x, y, pHitBox))
        {
            prevhitbox = hitbox;
    	    hitbox = instance_place(x, y, pHitBox);
            if (hitbox.player_id != player_id || hitbox.player_id = player_id && hitbox.attack != AT_NSPECIAL && (hitbox.no_other_hit = 0 || (player_id.time_since_last_hit > hitbox.no_other_hit && (!hitbox.in_hitpause || hitbox.hitbox_timer > 1))))
            {
	        if (hit_stun <= 1)
                {
                    if ( (hitbox != noone) && (prevhitbox != hitbox) && ((hitbox.hbox_group != prevgroup) || (hitbox.hbox_group == -1) || (prevattack != hitbox.attack) || (prevattack = hitbox.attack && prevgroup = hitbox.hbox_group && !hitbox.player_id.has_hit)))
                    {
	                prevattack = hitbox.attack;
	                prevgroup = hitbox.hbox_group;
                        hitbox.player_id.has_hit = true;
                        //prev_bubbleid = id;
                        if (hitbox.player_id = player_id)
                        { 
                            if (hitbox.attack = AT_USPECIAL && hitbox.hbox_num > 1) 
                            {
                            hitbox.player_id.vsp = -18;
                            hitbox.player_id.hsp = 6*hitbox.player_id.spr_dir;
                            }
                            if (hitbox.attack = AT_DSPECIAL && hitbox.hbox_num = 1 || hitbox.attack = AT_USPECIAL && hitbox.hbox_num = 2 )
                            { 
                                bubble_hitbydspecial++;
                            }
                            else
                            { 
                                bubble_hitbydspecial = 0;
                            }
                            if (hitbox.attack = AT_DAIR && hitbox.hbox_num = 1) hitbox.player_id.vsp = -5;
                            if (hitbox.attack = AT_DAIR && hitbox.hbox_num > 1) hitbox.player_id.vsp = -8;
                            if (hitbox.attack = AT_JAB && hitbox.hbox_num = 3 || hitbox.attack = AT_FSPECIAL && hitbox.hbox_num >= 2 && !hitbox.was_parried || hitbox.attack = AT_FSTRONG)
                            {
                                if (level < 3)
                                {
                                    level++;
                                    bubble_growing++;
                                    grow_frame = 0;
                                    frame_update = 0;
                                }
                            }
                            else
                            {
                                bubble_growing = 0;
                                grow_frame = 0;
                                frame_update = 0;
                            }
                            if (hitbox.attack = AT_DAIR && hitbox.hbox_num > 1)
                            //player_id.has_hit_player = true;
                            bubble_hitbyopponent = 0;
                        }
                        else
                        {
                            if (level > 1)
                            {
                                if (level <= 2) spawn_hit_fx(floor(x), floor(y), bubblepop2);
                                if (level >= 3) spawn_hit_fx(floor(x), floor(y), bubblepop3);
                                //sound_play(asset_get("sfx_ell_uspecial_explode"));
                                level--;
                            }
                            else
                            {
                                image_index = 16+level*3;
                                frame_update = 0;
                                state = 5; 
				player_id.move_cooldown[AT_NSPECIAL] = 180;
                            }
                            bubble_hitbyopponent = 1;
                        }
                        if (hitbox.type = 2 && hitbox.enemies = 0) hitbox.destroyed = true;
                    if (state != 5)
                    {
                        hit_stun = hitbox.hitpause + hitbox.extra_hitpause;
                        sound_play(hitbox.sound_effect);
                        spawn_hit_fx(x + hitbox.hit_effect_x, y + hitbox.hit_effect_y, hitbox.hit_effect);   
                        hit_timer = 0;
                        state = 2;

                        if (bubble_hitbydspecial) hit_adjuster = 3.6;
                        else hit_adjuster = 2.4;
			var _bub_kb_value = min(hitbox.kb_value, 8);

                        if (hitbox.kb_angle = 361)
                        {
                        hsp = lengthdir_x(hit_adjuster*_bub_kb_value, 45)*hitbox.player_id.spr_dir;
                        vsp = lengthdir_y(hit_adjuster*_bub_kb_value, 45)*0.8;
                        }
                    
                        else if (hitbox.attack = AT_DSPECIAL && hitbox.hbox_num = 1)
                        {
                        hsp = lengthdir_x(hit_adjuster*_bub_kb_value, hitbox.kb_angle)*hitbox.player_id.spr_dir;
                        vsp = lengthdir_y(hit_adjuster*_bub_kb_value, hitbox.kb_angle)*0.5;
                        }

                        else
                        {
                        hsp = lengthdir_x(hit_adjuster*_bub_kb_value, hitbox.kb_angle)*hitbox.player_id.spr_dir;
                        vsp = lengthdir_y(hit_adjuster*_bub_kb_value, hitbox.kb_angle)*0.72;
                        }
                        if (bubble_hitbydspecial) kb_grav = (_bub_kb_value/5/hit_adjuster*1.5);
                        else kb_grav = (_bub_kb_value/5/hit_adjuster);
                    }
                }
            }
        }
    }
    hit_stun--;
    hit_timer++;
    if (instance_exists(bubble_hitbox) && bubble_hitbox.was_parried)
    {
        hsp = vsp*0.3;
        vsp = vsp*0.3;
        bubble_has_hit = 0;
        bubble_hitbox_out = 0;
        bubble_hitbox.destroyed = true;
        bubble_hitbox = noone;
        image_index = 16+level*3;
        frame_update = 0;
        state = 5;   
    }
}

switch (state)
{
    //spawn
    case 0:
        if (frame_update >= 5 && image_index != 2)
        {
            image_index++;
            frame_update = 0;
        }
        else if (frame_update >= 5 && image_index = 2)
        {
            image_index++;
            frame_update = 0;
            state = 1;
            idle_frame = 0;
        }
        else frame_update++;
    break;

    //idle
    case 1:
        //image_index = idle_frame-3+level*6;
        //if (frame_update >= 11 && idle_frame != 3)
        //{
        //    idle_frame++;
        //    frame_update = 0;
        //}
        //else if (frame_update >= 11 && idle_frame = 3)
        //{
        //    idle_frame = 0;
        //    frame_update = 0;
        //    state = 1;
        //}
        //else frame_update++;
    break;

    //hit
    case 2:
    if (hit_timer >= 16 || hsp <= 5 && hsp >= -5 && vsp <= 5 && vsp >= -5)
    {
        bubble_has_hit = 0;
        bubble_hitbox_out = 0;
        if (bubble_hitbydspecial = 1)
        {
            hsp = prev_hsp*0.4;
            x += hsp;
            vsp = prev_vsp*0.4;
            y += vsp;
            image_index = 16+level*3;
            frame_update = 0;
            state = 5;  
            if (player_id.move_cooldown[AT_NSPECIAL] < 180) player_id.move_cooldown[AT_NSPECIAL] = 180;
        }
        else
        {
            state = 1;
        }
        bubble_hitbydspecial = 0;
        bubble_hitbyopponent = 0;
        if (instance_exists(bubble_hitbox))
        {
        bubble_hitbox.destroyed = true;
        bubble_hitbox = noone;
        }
    }
    else 
    {   
        if (!hitpause && bubble_has_hit = 0 && bubble_hitbyopponent = 0 && bubble_hitbox_out = 0)
        {
            if (bubble_hitbox_out <= 0)
            {
                bubble_hitbox = create_hitbox(AT_NSPECIAL, round(level), floor(x)+floor(hsp), floor(y)+floor(vsp)); 
                //if (level = 1 && bubble_hitbydspecial) bubble_hitbox = create_hitbox(AT_NSPECIAL, floor(3), floor(x)+floor(hsp), floor(y)+floor(vsp)); 
                bubble_hitbox.spr_dir = hsp>0?1:-1;   
                bubble_hitbox_out = 1;
            }
        }
        if (bubble_hitbox_out > 0 && instance_exists(bubble_hitbox))
        {
            bubble_hitbox.x = x+hsp;
            bubble_hitbox.y = y+vsp;
        }
        if (bubble_has_hit = 1)
        {
            if (!bubble_hitbydspecial)
            {
                if (bubble_hitbox.was_parried) player_id.was_parried = true;
                hsp = -prev_hsp*0.6;
                x += hsp;
                vsp = -prev_vsp*0.6;
                y += vsp;
                state = 1;
            }
            else if (level > 0)
            {
                //if (bubble_hitbox.was_parried) player_id.was_parried = true;
                hsp = prev_hsp*0.6;
                x += hsp;
                vsp = prev_vsp*0.6;
                y += vsp;
                image_index = 16+level*3;
                frame_update = 0;  
                state = 5;
                bubble_hitbydspecial = 0;
                create_hitbox(AT_NSPECIAL, floor(level+3), floor(x)+floor(hsp), floor(y)+floor(vsp));
                if (level = 1) spawn_hit_fx(floor(x)+floor(hsp), floor(y)+floor(vsp), bubble_explosion1);
                if (level = 2) spawn_hit_fx(floor(x)+floor(hsp), floor(y)+floor(vsp), bubble_explosion2);
                if (level = 3) spawn_hit_fx(floor(x)+floor(hsp), floor(y)+floor(vsp), bubble_explosion3);
            }
            bubble_has_hit = 0;
            bubble_hitbox_out = 0;
            bubble_hitbydspecial = 0;
            if (instance_exists(bubble_hitbox))
            {
            bubble_hitbox.destroyed = true;
            bubble_hitbox = noone;
            }
        }
    }
    break;

    //destroy
    case 5:
    //if ((image_index = 19 || image_index = 22 || image_index = 25) && frame_update >= 5)
    //{
//	player_id.move_cooldown[AT_NSPECIAL] = 180;
    //}
        if (frame_update >= 5)
        {
            if (image_index = 21 || image_index = 24 || image_index = 27)
            {
		instance_destroy();
                exit;
            }
            else
            {
                image_index++;
                frame_update = 0;
            }
        }
        else frame_update++;
    break;
}

//animations
if (state != 0 && state != 5)
{
    //idle
        if (bubble_growing = 0)
        {
            image_index = idle_frame-3+level*6;
            if (frame_update >= 11 && idle_frame != 3)
            {
                idle_frame++;
                frame_update = 0;
            }
            else if (frame_update >= 11 && idle_frame = 3)
            {
                idle_frame = 0;
                frame_update = 0;
            }
            else frame_update++;
        }
    //growing
        else if (bubble_growing > 0)
        {
            image_index = grow_frame-5+level*6;
            if (frame_update >= 4 && grow_frame != 1)
            {
                grow_frame++;
                frame_update = 0;
            }
            else if (frame_update >= 4 && grow_frame = 1)
            {
                grow_frame = 0;
                frame_update = 0;
                bubble_growing = 0;
            }   
            else frame_update++;
        }

        //make lighter if hit by dspecial
        if (bubble_hitbydspecial = 1)
        {
            sprite_index = sprite_get("bubble_dspecial");
        }
        else
        {
            sprite_index = sprite_get("bubble");
        }

}
