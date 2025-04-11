#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo apt install -y pipx cmake-format

pipx install uv

uv tool install pre-commit
uv tool install reuse
uv tool install cpplint
