qi_stack--;
can_air_parry = 1;

if instance_exists(nymph) && nymph.state < 3{
	nymph.state = 4;
	nymph.timer = 0;
}