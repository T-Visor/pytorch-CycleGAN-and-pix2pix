#!/bin/sh

for d in ./inputs/facescrub-actors-lowkey/*/ ; do (python3 test.py --dataroot "$d" --name lowkey_to_original --model test --netG unet_256 --direction AtoB --dataset_mode single --norm batch --results_dir "results/$(basename $d)"); done
