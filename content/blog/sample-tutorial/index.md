---
title: "Sample Tutorial: a tiny Godot player controller"
date: 2026-10-10
draft: true
description: "Template tutorial with a code block. Delete or rewrite me."
tags: ["tutorial", "godot"]
---

> Draft template. Preview with `hugo server -D`.

## What we're building

A minimal 2D character that moves with the arrow keys.

## The code

```gdscript
extends CharacterBody2D

const SPEED := 300.0

func _physics_process(_delta: float) -> void:
    var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    velocity = direction * SPEED
    move_and_slide()
```

## How it works

Explain it here.
