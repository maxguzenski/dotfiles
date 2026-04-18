#!/bin/bash
# Script para criar regra udev universal para teclados VIA/Usevia

RULES_FILE="/etc/udev/rules.d/99-via-all.rules"

cat << 'RULESEOF' | sudo tee "$RULES_FILE"
# Regra universal para todos os teclados VIA/Usevia/QMK
# Libera acesso a todos os dispositivos HID para o usuario logado

# Acesso geral a dispositivos hidraw
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", TAG+="uaccess", MODE="0666"

# Acesso geral a interfaces USB HID
SUBSYSTEM=="usb", ATTR{bInterfaceClass}=="03", TAG+="uaccess", MODE="0666"

# Acesso geral a dispositivos USB (cobertura ampla)
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", TAG+="uaccess", MODE="0666"
RULESEOF

echo "Regra criada em: $RULES_FILE"
echo ""
echo "Recarregando udev..."
sudo udevadm control --reload-rules
sudo udevadm trigger

echo ""
echo "✅ Pronto! Reconecte seus teclados e teste no usevia.app"
