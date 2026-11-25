# SPDX-FileCopyrightText: 2026 Samuel Wu
#
# SPDX-License-Identifier: 0BSD


from pathlib import Path
from random import sample

from kittens.tui.handler import result_handler
from kitty.boss import Boss

SUPPORTED_IMAGE_FORMATS = {".png", ".jpg", ".jpeg", ".webp", ".gif", ".tiff", ".bmp"}


def main(args: list[str]) -> str:
    pass


@result_handler(no_ui=True)
def handle_result(
    args: list[str],
    _answer: str,
    _target_window_id: int,
    boss: Boss,
) -> None:
    image_paths = Path(args[1]).glob("**/*")

    available_images = [
        p for p in image_paths if p.suffix.lower() in SUPPORTED_IMAGE_FORMATS
    ]

    images = []

    for w in boss.all_windows:
        if not images:
            images = sample(available_images, len(available_images))

        boss.call_remote_control(
            w,
            ("set-window-logo", "--self", str(images.pop())),
        )
