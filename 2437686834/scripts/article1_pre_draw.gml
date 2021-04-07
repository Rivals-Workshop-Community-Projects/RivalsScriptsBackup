//if place_meeting(x, y, asset_get("oPlayer")) and !place_meeting(x,y,player_id)
var closeplayer = instance_place(x, y, asset_get("oPlayer"));
var closehitbox = instance_place(x, y, asset_get("pHurtBox"));
var ownerbox = instance_place(x, y, player_id);
var get_id = instance_place(x, y, asset_get("oPlayer"));

if place_meeting(x,y,closehitbox)
{
//if get_id != player_id
//draw_sprite(sprite_get("Apple"),1,x,y - 30)
}

//draw_text( x, y, "state: " + string( has_hit_enemy ));