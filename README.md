# Habit Tracker Project

## Локальный запуск
1. Клонируйте репозиторий: `git clone https://github.com/npoblema/23`
2. Убедитесь, что Docker и Docker Compose установлены.
3. Скопируйте `.env_sample` в `.env` и настройте переменные (например, `SECRET_KEY`, `DB_PASSWORD`).
4. Запустите проект: `docker-compose up -d --build`
5. Откройте `http://localhost:8000` в браузере.

## Деплой на сервер
1. Создайте виртуальную машину в Yandex Cloud (Ubuntu 20.04 или новее).
2. Установите Docker и Docker Compose:
