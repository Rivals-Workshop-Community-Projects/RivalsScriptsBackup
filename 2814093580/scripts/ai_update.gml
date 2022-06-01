//ai update
// I don't know how to code AI lmao





// Samson will deonate the jar if whoever he is targeting is close by.
if "jar" in self {
if jar_is_out == true and point_distance(jar.x,jar.y,ai_target.x,ai_target.y) < 70
{
    if ai_going_into_attack and move_cooldown[AT_NSPECIAL] == 0
    {set_attack( AT_NSPECIAL );}
}


print(string( point_distance(jar.x,jar.y,ai_target.x,ai_target.y)));
}