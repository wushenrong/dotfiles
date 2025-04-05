#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo dnf install -y pre-commit reuse uv

uv tools install cpplint
uv tools install cmakelang[YAML]
