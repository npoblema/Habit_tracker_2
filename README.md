# Habit Tracker

Приложение для отслеживания привычек с возможностью отправки напоминаний через Telegram.

## Стек технологий
- Python 3.11
- Django 4.2
- PostgreSQL 15
- Redis 7
- Celery 5.3
- Nginx 1.25
- Docker 24
- Docker Compose 2.20
- GitHub Actions

## Локальный запуск проекта

### Предварительные требования
- Docker 24.0+ и Docker Compose 2.20+
- Python 3.11+ (для разработки)

### 1. Клонирование репозитория
```bash
git clone https://github.com/npoblema/Habit_tracker_2.git
cd Habit_tracker_2
```

2. Настройка окружения
Создайте файл .env на основе .env_sample:

```bash
cp .env_sample .env
```


```bash
SECRET_KEY=ваш-secret-key
DEBUG=True
ALLOWED_HOSTS=localhost,127.0.0.1

DB_ENGINE=django.db.backends.postgresql
DB_NAME=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
DB_HOST=db
DB_PORT=5432

CELERY_BROKER_URL=redis://redis:6379/0

TELEGRAM_BOT_TOKEN=ваш-telegram-токен
TELEGRAM_CHAT_ID=ваш-chat-id
```


```bash
docker-compose up --build
```


```bash
docker-compose exec web python manage.py createsuperuser
```
Деплой на сервер
Требования к серверу
Ubuntu 22.04 LTS

Docker 24.0+

Docker Compose 2.20+

Открытые порты: 80 (HTTP), 22 (SSH)

Настройка сервера
Подключитесь к серверу по SSH

Установите Docker и Docker Compose:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install docker.io docker-compose -y
sudo usermod -aG docker $USER
newgrp docker
```


```bash
git clone https://github.com/npoblema/Habit_tracker_2.git
cd Habit_tracker_2
```


```bash
docker-compose up --build -d
```

CI/CD Pipeline
Процесс автоматической сборки и деплоя настроен через GitHub Actions и включает:

Тестирование:

Запуск unit-тестов Django

Проверка миграций

Линтинг:

Проверка кода с помощью flake8

Сборка:

Проверка сборки Docker-образов

Деплой (при пуше в main):

Подключение к серверу по SSH

Обновление кода

Перезапуск контейнеров

Настройка Secrets в GitHub
Для работы CI/CD необходимо добавить в Secrets репозитория:

SSH_PRIVATE_KEY - приватный SSH-ключ для доступа к серверу

SERVER_IP - IP-адрес сервера

USERNAME - имя пользователя на сервере (обычно ubuntu)

TELEGRAM_BOT_TOKEN - токен Telegram бота

TELEGRAM_CHAT_ID - ID чата для уведомлений

Адрес сервера
Проект развернут по адресу: http://ваш-ip-адрес
```bash
Habit_tracker_2/
├── .github/workflows/  # GitHub Actions workflows
├── habits/             # Приложение привычек
├── users/              # Приложение пользователей
├── habit_tracker/      # Основной проект Django
├── Dockerfile          # Конфигурация Docker для Django
├── docker-compose.yml  # Конфигурация всех сервисов
├── nginx.conf          # Конфигурация Nginx
├── requirements.txt    # Зависимости Python
└── .env_sample         # Шаблон файла окружения
```


```bash
docker-compose down
```


```bash
docker-compose logs -f
```


```bash
docker-compose up --build -d
```


Важные замечания
Не коммитьте файл .env в репозиторий

Для работы Telegram бота необходимо указать корректные TELEGRAM_BOT_TOKEN и TELEGRAM_CHAT_ID

После завершения работы не забудьте остановить сервер в Yandex Cloud
