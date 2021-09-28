/// @description Pressed logic
event_inherited();

if is_pressed = true
{
	if !game_started
	{
		//room_goto_next();
		instance_create_depth(x, y, 0, obj_next_room_fade_in);
		game_started = true;
	}
}