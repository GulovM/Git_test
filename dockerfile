# Используем официальный базовый образ Python
FROM python:3.12.3-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файл requirements.txt и устанавливаем зависимости
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Копируем содержимое текущей директории в контейнер
COPY . .

# Указываем команду для запуска приложения
CMD ["python3", "app.py"]
