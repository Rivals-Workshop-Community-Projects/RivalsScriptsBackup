//update

if !init {
	init = 1;
	}
if host != noone {
    if(!instance_exists(host) || host.state==PS_RESPAWN)
    {
        instance_destroy();
        exit;
    }
}

x=host.x-(30*spr_dir)+host.hsp;	
y=host.y-35+host.vsp;
if (bomb_timer<50&&bomb_timer>25)
{
innerclock--;
if (innerclock==0)
        {
            if(sprite_index == dangerSpr){
                sprite_index = bombSpr;
                innerclock=6;
            }
            else
            if(sprite_index == bombSpr){
                sprite_index = dangerSpr;
                innerclock=6;
            }
        }
}

if (bomb_timer<25)
{
innerclock--;
if (innerclock==0)
        {
            if(sprite_index == dangerSpr){
                sprite_index = bombSpr;
                innerclock=3;
            }
            else
            if(sprite_index == bombSpr){
                sprite_index = dangerSpr;
                innerclock=3;
            }
        }
}
if (bomb_timer>0 && !bomb_timer_disabled){bomb_timer--;}
if (bomb_timer == 0)
{
	hb=create_hitbox( AT_EXTRA_1, 1, floor(x), floor(y) );
	sound_play(asset_get("sfx_ell_strong_attack_explosion"));
	hb.can_hit_self = true;
	with player_id {
		spawn_hit_fx( floor(other.x), floor(other.y), fx_explo );
    }
	instance_destroy();
    exit;
}


if detonate && bomb_timer > 16 {
	bomb_timer = 16;
	bomb_timer_disabled = false;
}