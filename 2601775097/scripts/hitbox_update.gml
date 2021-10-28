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
    if (hbox_num == 4 && hitbox_timer == 29) {
        spawn_hit_fx(x, y, player_id.fx_lightblow1);
        sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
    if (hbox_num == 5 && hitbox_timer == 29) {
        spawn_hit_fx(x, y, player_id.fx_fireblow2);
        sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
}
if (attack == player_id.AT_SKILL0 && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == 19) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
}
if (attack == player_id.AT_SKILL0_AIR && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == 16) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
}

//light dagger/spears spawn explosion for burning fury
if (attack == player_id.AT_SKILL0 && hbox_num == 3 && hitbox_timer == 34) {
    spawn_hit_fx(x, y, player_id.fx_fireblow1);
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
}
if (attack == player_id.AT_SKILL0_AIR && hbox_num == 3 && hitbox_timer == 31) {
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
        if (hitbox_timer == 2) player_id.spawn_earth_shatter = true;
    }
}

if (player_id.theikos) //light daggers dissolve effect but theikos
{
    if (attack == AT_USTRONG && hbox_num == 5 && hitbox_timer == 19) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
    }
    if (attack == player_id.AT_SKILL0 && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == 19) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
    if (attack == player_id.AT_SKILL0_AIR && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == 16) {
    spawn_hit_fx(x, y, player_id.fx_lightblow1);
    sound_play(asset_get("sfx_ori_energyhit_weak"), 0, 0);
    }
}

//theikos D-strong
if (attack == AT_DSTRONG_2)
{
    if (hbox_num == 1)
    {
        if (!free)
        {
            destroyed = true;

            //initial ground hit stuff
            var hit_collision = create_hitbox(AT_DSTRONG_2, 2, x, y);
            hit_collision.fx_particles = 2;
            if (player_id.user_event_1_active) hit_collision.fx_particles = 6;
            
            var fx_collision = spawn_hit_fx(x, y, player_id.fx_fireblow3);
            fx_collision.depth = -7;
            sound_play(asset_get("sfx_forsburn_combust"), 0, 0);
            
            dstrong2_active = true;
        }
        if (dstrong2_active)
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
}

/*
//power smash fire
if (attack == player_id.AT_SKILL6)
{
    if (hbox_num == 4)
    {
        //holy burn apply
        if (get_gameplay_time() % 20 == 0)
        {
            with (oPlayer)
            {
                if (place_meeting(x, y, other) && player != other.player)
                {
                    take_damage(player, other.player, 1);
                    holyburning = other.player // unique burning id to know who burnt the opponent
	                holyburn_counter = 0;
                }
            }
        }
    }
}
*/

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
            sound_play(asset_get("sfx_ori_energyhit_medium"), 0, 0);
            if (player_id.hookshot_speedboost) player_id.vsp -= (player_id.hookshot_chargetime/5+2.5)/4;
        }

        //kinda consistent
        with(pHitBox)
        {
            if(place_meeting(x, y, other) && player != other.player && hit_priority > 0 && proj_break == 0)
            {
                other.player_id.hookshot_skip = true;
                other.destroyed = true;
            }
        }
    }

    //destroy effects
    if (pHitBox.hbox_num == 1 && hitbox_timer == 39)
    {
        spawn_hit_fx(x+32*spr_dir, y, player_id.fx_lightblow2);
        sound_play(asset_get("sfx_ori_energyhit_medium"), 0, 0);
    }
    if (pHitBox.hbox_num == 2 && hitbox_timer == player_id.hookshot_lifetime-1)
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
if (attack == AT_DSTRONG && hbox_num == 5 && hitbox_timer == 43)
{
    spawn_hit_fx(x, y, 301);
}

//light stun hitbox will backfire on bar if he got parried
if (attack == 48 && player_id.lightstun_parried)
{
    can_hit_self = true;
}