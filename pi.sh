#!/usr/bin/env bash

# export FN="$1" && echo $(tail -n 1 $FN) >> sum && seq 2 $(cat $FN | wc -l) | xargs -I '{}' sh -c 'echo $(expr $(tail -n 1 sum) + $(tail -n "{}" $FN | head -n 1)) >> sum' && tail -n 1 sum && rm sum
export FN="$1" && echo "scale = 20;$(echo $(tail -n 1 $FN) >> sum && seq 2 $(cat $FN | wc -l) | xargs -I '{}' sh -c 'echo $(expr $(tail -n 1 sum) + $(tail -n "{}" $FN | head -n 1)) >> sum' && tail -n 1 sum && rm sum) / $(cat $FN | wc -l)" | bc