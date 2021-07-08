// user event 0
window = 3
window_timer = 0


with asset_get("obj_article_solid"){
    if collision_line(other.x-19,other.y+1,other.x+19,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}
with asset_get("pillar_obj"){
    if collision_line(other.x-19,other.y+1,other.x+19,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}
with asset_get("rock_obj"){
    if collision_line(other.x-19,other.y+1,other.x+19,other.y+1,self,false,false) != noone{
        other.window = 7;
    }
}

