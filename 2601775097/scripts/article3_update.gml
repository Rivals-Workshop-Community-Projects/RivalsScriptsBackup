//article3_update
//power smash article

vsp = 1;

//graphical stuff
if (golden) sprite_index = sprite_get("theikos_fx_powersmash_ground");
else sprite_index = sprite_get("fx_powersmash_ground")

//sound stuff
if (state_timer == 1) sound_play(player_id.sfx_fire, 1);

if (state_timer < 2) image_index = 0;
else if (state_timer < 4) image_index = 1;
else if (state_timer >= 4 && state_timer <= 170) image_index = 2;
else if (state_timer > 170) image_index = 3;
else if (state_timer > 175) image_index = 4;

//fire particles
if (state_timer % 2 == 0)
{
    var randomX = random_func(1, 8,true)*16;
    var fireparticles = instance_create(x - (72*spr_dir) + (randomX*spr_dir), y - 56, "obj_article1");
    fireparticles.spr_dir = spr_dir;
}

//hitbox stuff
/*
if (state_timer == 0) powersmash_chasm = create_hitbox(player_id.AT_SKILL6, 4, x, y-8);
powersmash_chasm.x = x;
powersmash_chasm.y = y-8;
if (state_timer % 10 == 0)
{
    for (var p = 0; p < array_length(powersmash_chasm.can_hit); p++) powersmash_chasm.can_hit[p] = true; 
}
*/
if (get_gameplay_time() % 20 == 0)
{
    with (oPlayer)
    {
        if (place_meeting(x, y, other) && player != other.player)
        {
            holyburning = other.player // unique burning id to know who burnt the opponent
            holyburn_counter = 0;
        }
    }
}

state_timer ++;
if (state_timer >= 180 || free && state_timer > 2 || place_meeting(x, y, asset_get("plasma_field_obj")))
{
    sound_stop(player_id.sfx_fire);
    sound_play(asset_get("sfx_burnend"));
    instance_destroy();
}