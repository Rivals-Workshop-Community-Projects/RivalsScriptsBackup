// hitbox_init is a script that is called when one of the character’s hitboxes is created. Always from the prespective of the hitbox.

// Isaac can hurt himself with Grenade

if (attack == AT_USTRONG){
     can_hit_self = true;
}

// Plasma Cutter

if attack == AT_NSPECIAL depth = player_id.depth + 2;

// Detonator Mine

if attack == AT_DSPECIAL{
    can_hit[1] = 0;
    can_hit[2] = 0;
    can_hit[3] = 0;
    can_hit[4] = 0;
    
    arm_timer = 33;
    colbox = noone;
    exploded = 0;
    player_id.detonator = self;
}