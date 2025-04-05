#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo pacman -S --needed --noconfirm act actionlint golang

go install github.com/boyter/scc/v3@latest
