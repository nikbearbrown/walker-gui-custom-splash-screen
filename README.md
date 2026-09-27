# Walker — Custom Splash Screen

**What this is.** A title-only copy of Godot's `gui/custom_splash_screen` demo.
It hides the engine's built-in boot image, plays a four-second animated splash
(Godot logo over drifting particles), then switches to a simple main screen
with a Restart button. It is a tech demo, not a game.

**Why it is in Walker.** It is one of the upstream Godot demos Walker has copied
and checked headless; two native-4K Liam films are pending for it. Its exact
purpose inside Walker (film subject, or a boot pattern for Walker games) has not
been written down yet (see `design/decisions.md`, Q-01).

**What was found and verified.** Import and 11 headless real-time state checks
pass. Splash pixels, particle appearance, resolution behavior, actual process
restart and both native-4K Liam films remain pending.

## How to run

Open `godot/project.godot` in Godot 4.7 (the logs record 4.7.2) and run the
project. The main scene is `splash.tscn`; it hands off to `main.tscn`
automatically after four seconds.

Controls: none during the splash (it cannot be skipped). On the main screen,
the **Restart** button quits and relaunches the whole application process.

## Design

- [`GDD.md`](GDD.md) — the recovered game design document (identical copy of
  `design/GDD.md`). It was reverse-engineered from the code by Walker's Zelda GDD
  skill in silent mode on 2026-09-27. It describes what exists; it is **not an
  approved design**, and no design gate is signed.
- [`design/DECK.html`](design/DECK.html) — slide version for review.
- [`design/IMPLEMENTATION-MAP.md`](design/IMPLEMENTATION-MAP.md) — every feature
  mapped to its real scenes, scripts and line numbers.
- [`design/decisions.md`](design/decisions.md) — open questions (purpose,
  skippable splash, Walker splash art, Restart in films, visual QA).

## Source & license

Independent title-only copy of Godot `gui/custom_splash_screen`, commit
`a3b5c113112f77291d5f3d1360f33a882fdc52f7`. Original Godot branding, particle
asset, scripts, scenes, UIDs and README retained; upstream MIT license copied
to LICENSE.md. No implication that the retained Godot logo is Walker branding.

## Status

- Import and 11 headless real-time state checks pass.
- Splash pixels, particle appearance, resolution behavior, actual process
  restart and both native-4K Liam films remain pending.

See FRICTIONAL.md.

Repository: https://github.com/nikbearbrown/walker-gui-custom-splash-screen
