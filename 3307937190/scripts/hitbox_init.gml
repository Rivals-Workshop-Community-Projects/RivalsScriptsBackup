//hitbox_init.gml

if (destroy_fx == 0) destroy_fx = hit_effect;

//pastelle
if ("ink_hold" not in self) 
{
    ink_apply = false;
    ink_hold = 0;
}

hbox_state = 0;
anim_timer = 0;

ink_hitsound = sound_get("inkhit_med");