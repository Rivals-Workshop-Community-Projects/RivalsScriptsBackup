//hitbox_init.gml
//hitbox_init works similarly to init.gml, we put all our hitbox variables in here, the ones that we will later use in hitbox_update.gml
//run the multihit_init function for projectiles with multihit enabled.

//MULTIHIT PROJECTILE
proj_hit_count = 0; //counts up the hits
proj_gap_timer = 0; //timer that counts down when hits should connect
hitbox_hitstop = 0; //hitbox is affected by hitpause
proj_multihit_final = false; //if true, it will stop the multihit code and remove the projectile
multihit_hit_player = noone; //records hit player
multihit_escape_time = 0; //when it reaches 5, the multihit_hit_player will stop being affected by the projectile
additional_radius = 16; //exta threshhold for the multihit projectile's collision

//hitbox grid stuff
multihit_amount = 0; //sets amount of hits
multihit_gap = 0; //sets time between hits
multihit_damage = 0;
multihit_vfx = 0; //sets the hit effect for when a multihit hits
multihit_sfx = 0;

//Reflection
reflect_timer = 0; //How many times this projectile was reflected.
reflect_player_prev = player;

//stores hitbox grid varuables
with (player_id)
{
    other.multihit_amount = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MULTIHIT);
    other.multihit_gap = get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_HITRATE);
    other.multihit_damage = get_hitbox_value(other.attack, other.hbox_num, HG_MULTIHIT_DAMAGE);
    other.multihit_vfx = get_hitbox_value(other.attack, other.hbox_num, HG_MULTIHIT_VFX);
    other.multihit_sfx = get_hitbox_value(other.attack, other.hbox_num, HG_MULTIHIT_SFX);
}

if (multihit_amount > 0) //only works if the hitbox grid actually has multihits active
{
    //stores the values that need to be reset back into for the final hit
    //you can add as many values as you'd like here, it uses the pHitBox variables
    //pHitBox varibales can be see here: https://rivalsofaether.com/hitbox-grid-indexes/
    multproj_saved_values = [
        kb_value,
        kb_scale,
        hitpause,
        hitpause_growth,
        hit_effect,
        sound_effect,
        kb_angle,
        damage,
        can_tech,
        force_flinch,
        enemies,
        hitstun_factor
    ];

    //for the first frame of the projectile existing, set the values to the multihit values
    //these values should have the exact order as the array above
    kb_value = 4;
    kb_scale = 0;
    hitpause = 2;
    hitpause_growth = 0;
    hit_effect = multihit_vfx;
    sound_effect = multihit_sfx;
    kb_angle = point_direction(x, y, x + hsp * spr_dir, y - 16 + vsp);
    damage = multihit_damage;
    can_tech = 1;
    force_flinch = 2;
    enemies = 1;
    hitstun_factor = 1;
    
    //what this chunk of code does is record the size of the hitbox
    old_xscale = image_xscale;
    old_yscale = image_yscale;

}