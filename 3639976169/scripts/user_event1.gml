// Event 1 - Evoke orb
// Set orb_evoke_x, orb_evoke_y, orbID
// Called on the orb object

var orb_type = player_id.orb_slots[orbID];
if (override_orb != -1)
    orb_type = override_orb;
orb_evoke_time = 0;
orb_evoked = orb_type % 10;
if (orb_type == 1) 
{
    sound_play(sound_get("thunder_orb_evoke"), false, noone, 1, 1);
    spawn_hit_fx(orb_evoke_x, orb_evoke_y, player_id.vfx_lightning_aura);
    var target = noone;
    var target_dist = 999999;
    with (oPlayer)
    {
        if (self == other.player_id)
            continue;
        var dist = point_distance(x, y, other.orb_evoke_x, other.orb_evoke_y);
        if (dist < target_dist)
        {
            target = self;
            target_dist = dist;
        }
    }
    if (target)
    {
        var orbPosX = x;
        var orbPosY = y;
        var targetPosX = target.x;
        var targetPosY = target.y;
        
        var angl = point_direction(orbPosX, orbPosY, targetPosX, targetPosY);
        var effectPosX = floor(x + cos(angl));
        var effectPosY = floor(y - sin(angl));
        var hb = noone;
        //print(string(dist));
        with (player_id) {
            hb = create_hitbox(AT_EXTRA_1, 1, other.orb_evoke_x, other.orb_evoke_y);
            //hb = create_hitbox(AT_EXTRA_1, 1, x, y - 80);
            try {
                var vfx = spawn_dust_fx(orbPosX, orbPosY, sprite_get("electric_zap_large"), 5);
                vfx.draw_angle = point_direction(orbPosX, orbPosY, targetPosX, targetPosY);
                if (spr_dir == -1)
                    vfx.draw_angle -= 180;
            }
            catch (_exception) {}
        }
        hb.damage = 8;
        hb.angle = 60;
        hb.kb_value = 8;
        hb.kb_scale = 0.6;
        hb.hitstun_factor = 0.88;
        hb.effect = 0;
        hb.image_xscale = 0.8;
        hb.image_yscale = 0.8;
    }
}
else if (orb_type == 2) 
{
    sound_play(asset_get("sfx_ice_dspecial_ground"), false, noone, 1, 1);
    player_id.soft_armor = 10;
    player_id.armor_temp = 10;
    player_id.knockback_scaling = 0.65;
    player_id.damage_scaling = 0.5;
    player_id.armor_cooldown = 30;
}
else if (orb_type % 10 == 3)
{
    sound_play(sound_get("dark_orb_evoke"), false, noone, 1, 1);
    //spawn_hit_fx(x, y - 20, HFX_ABY_EXPLODE_WARN);
    var hb = noone;
    with (player_id)
    {
        for (var i = 0; i <= 360; i += 45)
        {
            //var vfx = spawn_dust_fx(x, y - 20, sprite_get("dark_orb_attack"), 40);
            var vfx = spawn_hit_fx(other.orb_evoke_x, other.orb_evoke_y-20, vfx_dark_orb);
            vfx.draw_angle = i;
        }
        hb = create_hitbox(AT_EXTRA_2, 1, other.orb_evoke_x, other.orb_evoke_y - 20);
        hb.damage = floor(orb_type / 10.0);
        hb.kb_value = hb.damage / 3.1 + 3;
    }
}
else if (orb_type == 4) 
{
    sound_play(sound_get("plasma_orb_evoke"), false, noone, 1, 1);
    /*
    player_id.can_attack = true;
    player_id.can_jump = true;
    player_id.can_strong = true;
    player_id.can_ustrong = true;
    player_id.can_special = true;
    player_id.can_shield = true;
    player_id.can_dash_attack = true;
    player_id.can_dash = true;
    if (player_id.state == PS_PRATFALL)
        player_id.state = PS_IDLE_AIR;
    if (player_id.state == PS_PRATLAND)
        player_id.state = PS_IDLE;*/
    if (player_id.state == PS_PRATFALL)
        player_id.state = PS_IDLE_AIR;
    else if (player_id.state == PS_PRATLAND)
        player_id.state = PS_IDLE;
    else
        player_id.energized = true;
}

