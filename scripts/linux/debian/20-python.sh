#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo apt install -y cpplint pre-commit pipx reuse

pipx install uv

uv tool install cmakelang[YAML]
