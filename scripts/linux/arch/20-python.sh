#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo pacman -S --needed --noconfirm pre-commit python-cpplint reuse uv

uv tool install cmakelang[YAML]
