//hitbox_update

//light spear slight rotation on whiff, also disable burning fury if it's active and it hit
if (attack == AT_USTRONG)
{
    if (hbox_num == 4 || hbox_num == 5)
    {
        if (!free) destroyed = true;
    } 
}

//destroy light daggers when they hit the ground, and rotate them
if (attack == player_id.AT_SKILL0_AIR)
{
    if (hbox_num == 1 || hbox_num == 2 || hbox_num == 3)
    {
        proj_angle = -45 * spr_dir;

        if (!free) destroyed = true;

        if (was_parried) proj_angle = 45 * spr_dir;
    }
}
//light daggers/spears dissolve effects
if (attack == AT_USTRONG) {
    if (hbox_num == 4 && hitbox_timer == length - 1) {
        spawn_hit_fx(x, y, player_id.fx_lightblow1);
        sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
    if (hbox_num == 5 && hitbox_timer == length - 1) {
        spawn_hit_fx(x, y, player_id.fx_fireblow2);
        sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
}
if (attack == player_id.AT_SKILL0 && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
}
if (attack == player_id.AT_SKILL0_AIR && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
}

//light dagger/spears spawn explosion for burning fury
if (attack == player_id.AT_SKILL0 && hbox_num == 3 && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_fireblow1);
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
}
if (attack == player_id.AT_SKILL0_AIR && hbox_num == 3 && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_fireblow1);
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
}

//preventing chasm burster from spawning projectiles in the air
if (attack == player_id.AT_SKILL5 && (hbox_num == 2 || hbox_num == 4))
{
    if (free && hitbox_timer == 1) //it should also be destroyed if it's inside clairen's field
    {
        destroyed = true;
        player_id.reached_max_bursts = true;
    }
    else if (!free && !player_id.reached_max_bursts)
    {
        if (place_meeting(x, y, asset_get("plasma_field_obj"))) destroyed = true;
        if (hitbox_timer == 2) player_id.spawn_earth_shatter = true;
    }
}

if (player_id.theikos) //light daggers dissolve effect but theikos
{
    if (attack == AT_USTRONG && hbox_num == 5 && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
    if (attack == player_id.AT_SKILL0 && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
    if (attack == player_id.AT_SKILL0_AIR && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == length - 1) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
}

//theikos D-strong
if (attack == AT_DSTRONG_2 && hbox_num == 1)
{
    if (hitbox_timer > 1) grounds = 0; //makes it so it only passes through the first platform

    if (freemd || !free && hitbox_timer > 1 || hitbox_timer == length - 1) //spawn explosion
    {
        destroyed = true;

        //initial ground hit stuff
        var hit_collision = create_hitbox(AT_DSTRONG_2, 2, x, y);
        hit_collision.fx_particles = 2;
        if (player_id.user_event_1_active) hit_collision.fx_particles = 6;
        
        var fx_collision = spawn_hit_fx(x, y, player_id.fx_fireblow3);
        fx_collision.depth = -7;
        sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
        
        if (freemd || !free && hitbox_timer > 1) dstrong2_active = true;
    }
    if (dstrong2_active) //spawn ground fire
    {
        if (!instance_exists(firespread_article) && !in_hitpause)
        {
            for (var count = -player_id.groundfire_count; count <= player_id.groundfire_count; count ++)
            {
                var firespread = instance_create(x + groundfire_offset * count, y, "obj_article2");
                firespread.state = 12;
            }
        }
    }
}

//polaris projectile
if (attack == player_id.AT_SKILL7)
{
    var proj_speed = 0;
    var hit_sound_played = false;

    //hit particles
    fx_particles = 1;
    if (player_id.user_event_1_active) fx_particles = 5;

    //afterimage effect
    if (hitbox_timer % 4 == 0) spawn_hit_fx(x, y, player_id.fx_homing_afterimage);

    //always follow the target
    if (!was_parried) player_id.homing_target_id = player_id.hit_player_obj;
    else player_id.homing_target_id = player_id;
    
    //print("homing_target_id = " + string(player_id.homing_target_id));

    //if bar isn't in certain animations, allow the move to hitstun and knockback
    //if (kb_value == 0 && hitpause == 0 && hitpause_growth == 0)
    //{
    //    if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) || player_id.attack != player_id.AT_SKILL1
    //    && player_id.attack != player_id.AT_SKILL1_AIR && player_id.attack != player_id.AT_SKILL10
    //    && (player_id.attack != AT_DATTACK || player_id.attack == AT_DATTACK && window >= 4) && player_id.attack != AT_JAB)
    //    {
    //        kb_value = 7;
    //        hitpause = 5;
    //        hitpause_growth = 0.4;
    //    }
    //}

    //hit detection
    for(var i = array_length(can_hit); i > -1; i--;)
    {
        if (i != player_id.homing_target_id.player) can_hit[i] = false;
        else can_hit[i] = true;
    }
    
    //homing
    if (player_id.homing_target_id != noone && !was_parried)
    {
        if (hitbox_timer < 30) proj_speed = -10 + hitbox_timer;
        else proj_speed = 20;

	    var angle = point_direction(x, y, player_id.homing_target_id.x, player_id.homing_target_id.y-player_id.homing_target_id.char_height+16);
	    hsp = lengthdir_x(proj_speed, angle);
	    vsp = lengthdir_y(proj_speed, angle);

        if (hitbox_timer == length)
        {
            sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
            spawn_hit_fx(x, y, player_id.fx_lightblow1);
        }

        //if the target is dead kill this hitbox
        if (player_id.homing_target_id.state == PS_RESPAWN || player_id.homing_target_id.state == PS_DEAD) length = 0;
    }

    //if the projectile was parried
    if (was_parried)
    {
        length = 300;
        proj_speed = 10;
        kb_angle = 70;
        kb_value = 8;
        hitpause = 20;

        if (hitbox_timer == 0)
        {
            angle = point_direction(x, y, player_id.x, player_id.char_height+16);
	        hsp = lengthdir_x(proj_speed, angle);
	        vsp = lengthdir_y(proj_speed, angle);
        }
    }
}

//if bar hits an enemy he will pull
if (attack == player_id.AT_SKILL9)
{
    if (hbox_num == 1)
    {
        if (hitbox_timer % 2 == 0)
        {
            var chain = instance_create(x, y, "obj_article1");
            chain.state = 1;
        }
        
        //this just adds more vertical momentum for recovery
        if (destroyed && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && attack == player_id.AT_SKILL9) 
        {
            player_id.hookshot_speedboost = true;
            sound_play(asset_get("sfx_ori_energyhit_medium"));
            if (player_id.hookshot_speedboost) player_id.vsp -= (player_id.hookshot_chargetime/5+2.5)/4;
        }

        //kinda consistent
        //this code will make the light spear get destroyed from melee attacks only
        with(pHitBox)
        {
            if(place_meeting(x, y, other) && player != other.player && hit_priority > 0 && type == 1)
            {
                other.player_id.hookshot_skip = true;
                other.destroyed = true;
                sound_play(asset_get("sfx_ori_energyhit_medium"));
            }
        }
    }

    //destroy effects
    if (pHitBox.hbox_num == 1 && hitbox_timer == length - 1)
    {
        spawn_hit_fx(x+32*spr_dir, y, player_id.fx_lightblow2);
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, 0);
    }
    if (pHitBox.hbox_num == 2 && hitbox_timer == length - 1)
    {
        spawn_hit_fx(x+32*spr_dir, y, player_id.fx_fireblow2);
        sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
}

if (has_rune("G") || player_id.fuck_you_cheapies && player_id.theikos_active) //spear warp
{
    switch (attack)
    {
        case AT_USTRONG:
            proj_x = x;
            proj_y = y;
            player_id.runeG_attack_kb_y = 7;
            break;
        case AT_NTHROW: case AT_NSPECIAL_AIR:
            proj_x = x;
            proj_y = y;
            player_id.runeG_attack_kb_y = 4;
            break;
        case AT_EXTRA_2:
            proj_x = x;
            proj_y = y;
            player_id.runeG_attack_kb_y = 5;
            break;
    }
}

if (has_rune("H")) //U-strong hookshot
{
    if (attack == AT_USTRONG && pHitBox.hbox_num == 4)
    {
        if (hitbox_timer % 2 == 0)
        {
            var chain = instance_create(x, y, "obj_article1");
            chain.state = 1;
            chain.image_angle = player_id.runeH_angle+90;

            if (hitbox_timer > 29)
            {
                with (obj_article1) particletime = 41;
            }
        }
    }
}

//rune I rock vanish effect
if (attack == AT_DSTRONG && hbox_num == 5 && hitbox_timer == length - 1)
{
    spawn_hit_fx(x, y, 301);
}

//light stun hitbox will backfire on bar if he got parried
if (attack == 48 && player_id.lightstun_parried)
{
    can_hit_self = true;
}