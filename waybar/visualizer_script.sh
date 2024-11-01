#!/bin/bash

cava | while read -r line; do
    output=""
    # Разделяем строку с числами на массив и создаем "бар" для каждого значения
    for amplitude in ${line//;/ }; do
        # Каждое значение преобразуем в количество символов ◼
        bar=$(printf "%0.s◼" $(seq 1 $((amplitude / 100))))
        output+="$bar "
    done
    # Выводим результат в JSON формате для Waybar
    echo "{\"text\": \"$output\"}"
    sleep 0.1
done
