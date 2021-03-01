image_index += article_anim_speed;

//Mcducky's code that may need some tweaking to work. currently some projectiles interacting with this crash game.
//with(asset_get("pHitBox")) {             //Find a hitbox
    //if (player_id != other.player_id) {  //Its not yours dude.
        //if (place_meeting(x,y,other)) {  //we held hands so we must be married :plead:
            //if(type == 2)                //Its a projectile.
            //{
                //hit_flipper = 8
                //sound_play(asset_get("sfx_absa_cloud_crackle"))
                //player = other.player;   //Set ID to yours.
                //hitbox_timer = 0;        //Reset to hit them back.
                //hsp = -hsp*2;          //Speed em up in the other way.
                //damage = damage*3;       //More damage.
            //}
        //}
    //}  
//}


if (state == 0) // idle lol
{
    create_hitbox(AT_DSPECIAL, 1, x+10, y);
    if (state_timer > 200)
    {
        sound_play(asset_get("sfx_ice_shatter_big"));
        instance_destroy(self);
        exit;
    }
    else
    {
        with (asset_get("pHitBox"))
        {
            if (attack == AT_NSPECIAL && hbox_num == 1 && player_id == other.player_id && place_meeting(x,y,other))
            {
                with (other) SetState(1);
                destroyed = true;
            }
        }
    }
}
else if (state == 1) // nspec hit
{
    sound_play(asset_get("sfx_ice_shatter_big"));
    create_hitbox(AT_NSPECIAL, 2, x+40, y+40); // idk you make the hitbox. I'm lazy. Go to nspecial.gml hahahahaah
    instance_destroy(self);
    exit;
}

++state_timer;

#define SetState(_state)
{
    state = _state;
    state_timer = 0;
}