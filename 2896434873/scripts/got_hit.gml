var should_cause_behavior;
should_cause_behavior = state_cat == SC_HITSTUN;

if !(should_cause_behavior) exit;

steady_anim = false;
reticule_show_steady_aim = false;
if instance_exists(uspecial_proj) and !uspecial_proj.let_go
{
    uspecial_proj.let_go = true;
}