/// @description Check for click
if is_selectable && double_click_prevention = 0
{
	// Select if mouse is above and the player clicks
	if ((position_meeting(mouse_x, mouse_y, self)) && mouse_check_button(mb_left))
	{
		audio_play_sound(snd_button_select, 10, false);

		if is_pressed = true
		{
			is_pressed = false;
			double_click_prevention = 30;
		} else
		{
			is_pressed = true;
			double_click_prevention = 30;
		}
	}
}

if double_click_prevention > 0
{
	double_click_prevention -= 1;
}