//base

hsp = 0;
vsp = 0;
free = 1;
can_be_grounded = true 
uses_shader = true;
sprite_index = sprite_get("gem")

if player_id.ssnk_tagpal.active_clr == 29 {
      sprite_index = sprite_get("emerald")
    }
mask_index = sprite_get("gem_mask")
image_index = 1;
ignores_walls = false;
grav = 0.4;
lifetime = 150;

state = 0;
state_timer = 0;
exist_timer = 0;

is_hittable = true;
can_be_hit[player] = 999; // avoid self-hits