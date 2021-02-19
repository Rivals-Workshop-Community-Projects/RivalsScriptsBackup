//article2_update

// update

switch (state)
{
	case 0: // appear
    if (image_index == 5) // if finish spawning anim
    {
        state = 1;
        state_timer = 0;
    }
	break;
	case 1: // idle
    vsp = (abs(vsp)>0.01?vsp*0.85:0);
    hsp = (abs(hsp)>0.01?hsp*0.85:0);
    with (asset_get("pHitBox"))
	{
	    if (place_meeting(x,y,other.id)
		&& other.player_id == player_id
		&& orig_player == player)
		{
            if (attack == AT_DAIR or attack == AT_DSPECIAL) // dair jump OR end of dspecial
            {
                other.state = 2;
                other.state_timer = 0;

                other.player_id.hitpause = true;
                other.player_id.hitstop = 5;
                other.player_id.hitstop_full = 5;
                other.player_id.old_hsp = 0;
                other.player_id.old_vsp = attack == AT_DAIR ? -13 : -9;
	    		sound_play(sound_effect);
				var fx = spawn_hit_fx(other.x+(hit_effect_x*spr_dir)+x-other.x,other.y+hit_effect_y+y-other.y,hit_effect);
				fx.draw_angle = kb_angle;
				fx.spr_dir = spr_dir;
            }
	    }
	}
    if (player_id.fspec_article != self || player_id.wisps[2] != -1)
    {
        state = 2;
        state_timer = 0;
        
        if (isRed)
        {
            spawn_hit_fx(x,y+16,player_id.nspec_effect_red);
            create_hitbox(AT_NSPECIAL, 3, x, y);
        }
        else
        {
            spawn_hit_fx(x,y+16,player_id.nspec_effect);
            create_hitbox(AT_NSPECIAL, 2, x, y);
        }
    }
	break;
	case 2: // disppear
    vsp = 0;
    hsp = 0;
    if (image_index == 6) // if finish disappear anim
    {
        if (player_id.fspec_article == self)
            player_id.fspec_article = noone;
        instance_destroy();
        exit;
    }
	break;
}


// render

var new_sprite;
var animrate;
if (isRed)
{
    new_sprite = sprite_get("red_willo");
    animrate = 3;
}
else
{
    switch(state)
    {
        case 0:
            new_sprite = sprite_get("willo_appear");
            animrate = 3;
            break;
        case 1:
    		new_sprite = sprite_get("willo_idle");
            animrate = 5;
            break;
        case 2:
            new_sprite = sprite_get("willo_disappear");
            animrate = 3;
            break;
    }
}

if (state_timer mod animrate == 0)
    image_index++;

if (sprite_index != new_sprite)
{
    sprite_index = new_sprite;
    image_index = 0;
}

++state_timer;