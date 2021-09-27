/// @description Set the proper button name
event_inherited();
button_text = "Quit Game";

// Disable if running in the browser, quitting there does not make any sense
if !(os_browser == browser_not_a_browser)
{
	is_selectable = false;
}