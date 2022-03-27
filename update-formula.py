#!/usr/bin/env python3

import argparse
from fileinput import FileInput

FORMULA_PATH = 'Formula/fifty-seventy-two-cli.rb'

parser = argparse.ArgumentParser()
parser.add_argument('--version', type=str, dest='version')
parser.add_argument('--linux-sha', type=str, dest='linux_sha')
parser.add_argument('--macos-sha', type=str, dest='macos_sha')
args = parser.parse_args()

with FileInput(FORMULA_PATH, inplace=True) as file:
    for line in file:
        if "version = " in line:
            print(f"  version = \"{args.version}\"")
        elif "linux_sha = " in line:
            print(f"  linux_sha = \"{args.linux_sha}\"")
        elif "macos_sha = " in line:
            print(f"  macos_sha = \"{args.macos_sha}\"")
        else:
            print(line, end='')
