```bash
#!/bin/bash

# Скрипт установки Python 3.12 на Debian
# Автор - Чуян А.А. 24.04
# Установка 10-15 минут

# Обновление пакетов
sudo apt update

# Установка необходимых пакетов для компиляции Python
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git

# Установка pyenv
curl https://pyenv.run | bash

# Добавление переменных окружения в .bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

# Загрузка новых переменных окружения
source ~/.bashrc

# Установка Python 3.12.0 с помощью pyenv
pyenv install 3.12.0

# Установка Python 3.12.0 как глобальной версии
pyenv global 3.12.0

# Проверка успешной установки Python
if python3 --version | grep -q '3.12.0'; then
    echo "Python 3.12.0 успешно установлен"
else
    echo "Установка Python 3.12.0 не удалась"
fi
```