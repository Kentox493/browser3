#!/bin/bash
# ============================================
# HARMLESS PROOF-OF-CONCEPT - Security Research
# File ini TIDAK berbahaya. Hanya menampilkan
# dialog dan mencatat log sebagai bukti eksekusi.
# ============================================

# Catat waktu eksekusi ke file log
LOG_FILE="$HOME/Desktop/POC_EXECUTED.txt"

echo "========================================" >> "$LOG_FILE"
echo "POC EXECUTED - PROOF OF AUTO-EXECUTION" >> "$LOG_FILE"
echo "Waktu: $(date)" >> "$LOG_FILE"
echo "User: $(whoami)" >> "$LOG_FILE"
echo "File: $0" >> "$LOG_FILE"
echo "Browser Download Dir: ~/Downloads" >> "$LOG_FILE"
echo "Quarantine Attr: $(xattr -l "$0" 2>/dev/null || echo 'none')" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"

# Tampilkan dialog macOS sebagai bukti visual
osascript -e 'display dialog "⚠️ BUG CONFIRMED!\n\nFile ini tereksekusi otomatis setelah didownload.\nIni membuktikan adanya vulnerability.\n\nWaktu: '"$(date)"'" with title "Security PoC - Auto Execution" buttons {"OK"} default button "OK" with icon caution'

# Buka file log di TextEdit sebagai bukti tambahan
open -a TextEdit "$LOG_FILE"
