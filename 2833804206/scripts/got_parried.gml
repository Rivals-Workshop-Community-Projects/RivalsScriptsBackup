//got_parried.gml

with obj_article1 if player_id == other.id {
    instance_destroy(id)
}