star_lifetime--;

//Bounce
if !free{
    vsp = -5;
    if hsp*spr_dir != walk_spd{
        hsp = walk_spd*spr_dir;
    }
}
else{
    vsp += grav;
    if vsp >= max_fall vsp = max_fall;
}

//Turn Around at Walls
if place_meeting(x+spr_dir, y, asset_get("par_block")){
    hsp *= -1;
    spr_dir *= -1;
}

//Change subimg based on speed
if sign(hsp) == -1 spr_dir = -1;
img_cur = ((sign(vsp))/2)+0.5;

//Explode on contact with player

with(oPlayer){
    if place_meeting(x,y,other){
        take_damage( player, other.player_id.player, -2 );
        other.star_collect = true;
        other.player_collected = player;
    }
}

//Natural Causes

if star_lifetime <= 60{
    opa_cur = ((-sin(star_lifetime))/2)+0.5;
}

if star_lifetime <= 0{
    instance_destroy();
}

//On Collection
if instance_exists(self) && star_collect{
    spawn_hit_fx(x,y, 301);
    sound_play(sound_get("star_collect"));
    instance_destroy();
}