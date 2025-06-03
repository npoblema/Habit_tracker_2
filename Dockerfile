FROM python:3.10-slim

# Создаём непривилегированного пользователя
RUN useradd -m -s /bin/bash appuser

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем requirements.txt
COPY requirements.txt .

# Обновляем pip и устанавливаем зависимости
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Копируем остальные файлы проекта
COPY . .

# Меняем владельца рабочей директории
RUN chown -R appuser:appuser /app

# Переключаемся на пользователя appuser
USER appuser

# Запускаем приложение
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
