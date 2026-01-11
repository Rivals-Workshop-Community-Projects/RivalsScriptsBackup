//update
if (!instance_exists(self)) // Holograms will sometimes throw errors when being destroyed; this prevents it
    exit;
// Handle position delay for orb movement
array_insert(position_delay, 0, y + (state == PS_CROUCH ? 30 : 0)); 
array_insert(position_delay, 0, x);
position_delay = array_slice(position_delay, 0, 20);

if (old_ice) // Handle frost orb behavior
{
    if (armor_duration > 0)
    {
        if (soft_armor == 0 && armor_temp > 0)
        {
            soft_armor = armor_temp;
        }
        armor_duration--;
        if (armor_duration = 0)
        {
            soft_armor = 0;
            armor_temp = 0;
        }
        knockback_scaling = 1;
        damage_scaling = 1;
    }
}
else
{
    if (armor_temp > 0)
    {
        soft_armor = armor_temp;
        armor_cooldown = 30;
    }
    else
    {
        knockback_scaling = 1;
        damage_scaling = 1;
        if (armor_cooldown > 0)
            armor_cooldown--;
    }
}
var frost_orbs = 0;
for (var i = 0; i < 3; i++)
{
    if (orb_slots[i] == 2)
        frost_orbs++;
}
knockback_adj = 1.08 - (frost_orbs * 0.08);


if (custom_clone) // Hologram
{
    draw_indicator = false;
    draw_y = -1000000;
    orb_slots[0] = 0;
    orb_slots[1] = 0;
    orb_slots[2] = 0;
    damage_scaling = 0;
    if (jump_to_attack == 1)
    {
        attack = hologram_valid_attack;
        if (state_cat == SC_AIR_NEUTRAL && get_attack_value(hologram_valid_attack, AG_CATEGORY) != 0)
        {
            window = 1;
            window_timer = 0;
            set_state(PS_ATTACK_AIR);
        }
        else if (state_cat == SC_GROUND_NEUTRAL && get_attack_value(hologram_valid_attack, AG_CATEGORY) != 1)
        {
            window = 1;
            window_timer = 0;
            set_state(PS_ATTACK_GROUND);
        }
        jump_to_attack = -1;
    }
    if (jump_to_attack >= 1) jump_to_attack--;
}
else
{
    // Dodge effects
    if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD)
    {
        if (state_timer == 3)
        {
            spawn_hit_fx(x, y - 20, HFX_ELL_STEAM_HIT);
            spawn_hit_fx(x, y - 40, HFX_ELL_STEAM_HIT);
            sound_play(asset_get("sfx_ell_steam_release"), false, noone, 0.4, 1);
            visible = false;
        }
        if (state_timer % 6 == 1 && state_timer < 16)
        {
            spawn_hit_fx(x, y - 30, HFX_ELL_STEAM_HIT);
        }
        if (state_timer > 15)
        {
            visible = true;
        }
    }

}
var time = get_gameplay_time();
with oPlayer // Handle lightning orbs
{
    if (self == other)
        continue;
    if (!variable_instance_exists(self, "defect_orb_tick"))
    {
        defect_orb_zap = 0;
        //                      | kb | angle | flipper | kb scaling | hitstun |
        defect_orb_hitbox_vars = [0,   0,      0,        0,           0];

        defect_orb_owner = noone;

        defect_orb_tick = 0;
    }
    if (defect_orb_tick == time) // Prevent this code from running more than once per frame (i.e. if there are multiple defects)
        continue;
    else
        defect_orb_tick = time;
        
    if (defect_orb_zap == 0)
        continue;
    if (defect_orb_zap < 10)
    {
        
        var xPos = x;
        var yPos = y-20;
        var hb = noone;
        with (defect_orb_owner) {
            hb = create_hitbox(AT_EXTRA_1, 1, xPos, yPos);
            sound_play(sound_get("thunder_orb_evoke"), false, noone, 1, 1);
            try {
                var vfx = spawn_dust_fx(xPos, yPos - 20, sprite_get("electric_zap"), 5);
                vfx.draw_angle = point_direction(x, y - 80, xPos, yPos - 20);
                if (xPos < x)
                vfx.draw_angle -= 180;
            }
            catch (_exception) {}
            //hb.target = other;
            //debug_hb_obj = hb;
        }
        //print_debug("zap!! " + string(hb));
        if (defect_orb_zap == 1)
        {
            hb.kb_value = defect_orb_hitbox_vars[0];
            hb.kb_angle = defect_orb_hitbox_vars[1];
            hb.hit_flipper = defect_orb_hitbox_vars[2];
            hb.kb_scale = defect_orb_hitbox_vars[3];
            hb.hitstun_factor = defect_orb_hitbox_vars[4];
            //hb.effect = 0;
            defect_orb_zap = 0;
        }
        else
            defect_orb_zap += 99;
    }
    else
        defect_orb_zap -= 10;
}
