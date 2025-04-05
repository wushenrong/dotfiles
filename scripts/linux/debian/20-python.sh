#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo apt install -y pipx

pipx install uv

uv tool install pre-commit
uv tool install reuse
uv tool install cpplint
uv tool install cmakelang[YAML]
