#!/bin/bash

PROGRAM=$1   # heapsort ou python
LANG=$2      # c ou py
N=(5000 20000 80000 150000)

if [ "$LANG" == "c" ]; then
    RUN="./$PROGRAM"
else
    RUN="python $PROGRAM.py"
fi

for size in "${N[@]}"; do
    echo "Rodando tamanho $size..."
    for i in {1..25}; do
        $RUN $size >> resultado_${LANG}_${size}.txt
    done
done
