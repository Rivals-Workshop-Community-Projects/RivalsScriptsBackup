//death.gml
if(instance_exists(uspec_web)) {
    uspec_web.state = 2;
    uspec_web.state_timer = 0;
    web_cooldown_current = 0;
}

if(instance_exists(stealth_rock)) {
    stealth_rock.state = 4;
    stealth_rock.state_timer = 0;
}

shell_smash_stage = 0;
dash_speed = speed_table[shell_smash_stage];
knockback_adj = weight_table[shell_smash_stage];
jump_speed = jump_table[shell_smash_stage];
djump_speed = jump_table[shell_smash_stage];

skl_poisoned = false;
skl_poisoner = 0;

with(asset_get("oPlayer")) {
    if(skl_poisoner == other.player) {
        skl_poisoned = false;
        skl_poisoner = 0;
    }
}