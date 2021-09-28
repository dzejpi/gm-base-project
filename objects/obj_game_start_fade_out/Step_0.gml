/// @description Handle the transition
if current_tick < transition_speed
{
	alpha = current_tick/transition_speed;
	current_tick += 1;
} else
{
	alpha = 1;
	instance_destroy();
}