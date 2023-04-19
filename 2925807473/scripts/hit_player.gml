//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2 )
if voiceon == 2{
    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0){
     sound_play(sound_get("hz_houtenjin"))
     }
     if (snd_rng == 1){
     sound_play(sound_get("hz_houtenjin2"))
     }
     if (snd_rng == 2){
     sound_play(sound_get("hz_houtenjin3"))
     }
     if (snd_rng == 3){
     sound_play(sound_get("hz_houtenjin4"))
     }
      if (snd_rng == 4){
     sound_play(sound_get("hz_houtenjin5"))
     }
}
else if voiceon == 1{
    snd_rng = random_func(0, 5, true);
    if (snd_rng == 0){
     sound_play(sound_get("hz_houtenjin6"))
     }
     if (snd_rng == 1){
     sound_play(sound_get("hz_houtenjin7"))
     }
     if (snd_rng == 2){
     sound_play(sound_get("hz_houtenjin8"))
     }
     if (snd_rng == 3){
     sound_play(sound_get("hz_houtenjin9"))
     }
      if (snd_rng == 4){
     sound_play(sound_get("hz_houtenjin10"))
     }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
chainstocks = 2
chaintimer = 0
my_hitboxID.hsp = 0
my_hitboxID.vsp = 0
chainx = my_hitboxID.x
chainy = my_hitboxID.y
chainhit = true
chaintarget = hit_player
}
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && has_rune("E")){
take_damage(player, -1, -5)
}

{
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
     set_grab_id(); }//special function you can see below that sets the hit player to be grabbed
     else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
my_hitboxID.hsp = 0
my_hitboxID.vsp = 0
uspechit = true
chainx = my_hitboxID.x
chainy = my_hitboxID.y
chaintarget = hit_player
}
#define set_grab_id
{
    if (my_grab_id == noone && !hit_player_obj.clone && hit_player_obj.state_cat == SC_HITSTUN && !hit_player_obj.bubbled) my_grab_id = hit_player_obj;}





