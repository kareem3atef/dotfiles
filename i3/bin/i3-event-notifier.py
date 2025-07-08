#!/usr/bin/env python3
import i3ipc
import subprocess

ipc = i3ipc.Connection()

def workspace_notify(_, event):
    if event.change in ["focus", "init"]:
        name = event.current.name if event.current else "Unknown"
        subprocess.run(["notify-send", "-u", "low", f"Workspace: {name}"])

def window_notify(_, event):
    if event.change == "focus":
        title = event.container.name or "Untitled"
        cls = event.container.window_class or "Unknown"
        subprocess.run([
            "notify-send", 
            "-u", "low", 
            f"Window: {title}", 
            f"Class: {cls}"
        ])

# Bind events
ipc.on("workspace", workspace_notify)
ipc.on("window", window_notify)
ipc.main()



