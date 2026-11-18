# SPDX-FileCopyrightText: 2026 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# TODO: Make this better with a file chooser

from kitty.boss import Boss
from kitten.tui.path_completer import get_path


def main(args: list[str]) -> str:
    answer = get_path("Enter path to logo image: ")

    return answer


def handle_result(
    args: list[str], answer: str, target_window_id: int, boss: Boss
) -> None:
    w = boss.window_id_map.get(target_window_id)

    if w is not None:
        boss.call_remote_control(w, ("set-window-logo", "--self", answer))
