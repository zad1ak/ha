# ESPHome-LED-Controller-Advanced
Репозиторий для управления адресной светодиодной лентой (WLED-подобные эффекты) через ESPHome.

Структура:
- esphome/main/esphome_main_config.yaml — основной конфиг (без секретов)
- esphome/device_flash_esp8266.yaml — минимальный файл для ESP8266
- esphome/device_flash_esp32.yaml — минимальный файл для ESP32
- esphome/secrets.example.yaml — пример секретов
- lovelace_led_control.yaml — пример Lovelace UI
- .github/workflows/validate_and_build.yml — автоматическая сборка и проверка

Перед прошивкой:
1. Настройте secrets в GitHub: GITHUB_TOKEN (автоматически), ESPHOME_SECRETS (JSON с wifi, api, ota).
2. Сделайте push на GitHub.
3. Workflow соберет бинарники и создаст Release.
4. Прошиваем ESP8266/ESP32 через ESPHome Dashboard или OTA.
