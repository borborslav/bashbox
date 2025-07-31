#!/bin/bash

# Функція для виводу підказки
usage() {
    echo "Використання: $0 <контраст (0–100)> <яскравість (0–100)>"
    echo "Приклад: $0 70 80"
    exit 1
}

# Перевірка кількості параметрів
if [ $# -ne 2 ]; then
    usage
fi

CONTRAST=$1
BRIGHTNESS=$2

# Функція перевірки, чи число від 0 до 100
is_valid_percent() {
    [[ "$1" =~ ^[0-9]+$ ]] && [ "$1" -ge 0 ] && [ "$1" -le 100 ]
}

# Перевірка обох параметрів
if ! is_valid_percent "$CONTRAST" || ! is_valid_percent "$BRIGHTNESS"; then
    echo "Помилка: Значення повинні бути цілими числами від 0 до 100."
    usage
fi

# Встановлення значень для кожного монітора
for DISPLAY in 1 2 3; do
    echo "📺 Налаштування монітора --display $DISPLAY:"
    ddcutil --display $DISPLAY setvcp 12 $CONTRAST
    ddcutil --display $DISPLAY setvcp 10 $BRIGHTNESS
done

