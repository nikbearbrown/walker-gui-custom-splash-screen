extends SceneTree

var failures := 0
func _initialize() -> void:
	call_deferred("run")
func check(ok: bool, label: String) -> void:
	print("PASS " if ok else "FAIL ", label)
	if not ok:
		failures += 1
func run() -> void:
	check(not ProjectSettings.get_setting("application/boot_splash/show_image"), "engine splash image disabled")
	check(ProjectSettings.get_setting("application/boot_splash/bg_color") == Color.BLACK, "boot background black")
	change_scene_to_file("res://splash.tscn")
	await process_frame
	await process_frame
	var splash: Node = current_scene
	check(splash.name == "Splash", "splash scene starts")
	check(splash.get_node("AnimationPlayer").current_animation == "splash", "animation autoplays")
	await create_timer(1.2).timeout
	check(current_scene == splash, "splash remains during hold")
	check(splash.get_node("FadeOverlay").color.a < 0.01, "hold overlay transparent")
	await create_timer(3.2).timeout
	check(current_scene.name == "Main", "animation completion transitions to main")
	check(not is_instance_valid(splash), "prior splash scene freed")
	await create_timer(1.2).timeout
	check(current_scene.get_node("FadeOverlay").color.a < 0.01, "main fade completes")
	check(current_scene.get_node("FadeOverlay").mouse_filter == Control.MOUSE_FILTER_IGNORE, "main overlay does not block input")
	check(current_scene.get_node("VBoxContainer/Restart").pressed.is_connected(current_scene._on_restart_pressed), "restart signal connected; process restart not invoked")
	print("HEADLESS REAL-TIME STATE ONLY; no rendered splash, input-driven restart or films verified. failures=", failures)
	quit(1 if failures else 0)
