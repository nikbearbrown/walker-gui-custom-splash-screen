# Verification and friction — 2026-09-26 19:06 UTC heartbeat

Read entire README, project, both scripts and both scenes. No source GUI
AGENTS.md found. Confirmed destination absent and no active Godot/render worker.
Independent copy changes title only and adds diagnostic test; source untouched.
Original assets, attribution, MIT license and import settings retained.

Godot 4.7.2 import exits 0. test_splash.gd runs the actual splash scene through
its normal four-second animation and scene transition, without seeking or
changing animation speed. splash-20260926.log records 11 passing assertions:
boot image disabled/black background, splash start/autoplay, hold state and
transparent overlay, automatic main transition and old scene freed, completed
main fade, overlay ignores input, and restart signal connected. Test lasts
approximately six seconds. These are state checks, not rendered evidence.

Ordinary headless 360-frame runtime exits 0 without observed script errors.
Restart was deliberately not activated because it starts another process;
its signal connection is checked, but actual input-driven restart is unverified.
Particle appearance, boot-to-scene visual continuity and resize layout remain
unverified. No film or human approval claimed.

Both film tasks remain pending the existing visible-capture constraint after
user recording-window closure; no visible window reopened. Proceed next feasible
item without retiring either film. Required film skills and real adjacent
code/result capture still apply when production resumes.
