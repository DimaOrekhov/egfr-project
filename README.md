# egfr-project

В папке `notebooks/` находятся все ноутбуки с экспериментами, суффикс `_cv` означает версию с кросс-валидацией:
* original: Воспроизведение результатов [модели из статьи](https://github.com/lehgtrung/egfr-att) с помощью нашего пайплайна обучения
* transformer_baseline: Transformer encoder архитектура с binary classification головой, инициализируется случайно
* transformer_with_descriptor: К представлению из transformer конкатенируем представление, полученное с помощью 3х слойного линейного кодировщика, примененного к вектору молекулярного дескриптора.
* chemberta: Использование [ChemBERTa](https://github.com/seyonechithrananda/bert-loves-chemistry), модели предобученной на большом датасете различных молекул, в качестве transformer encoder. Добавляем binary classification голову.
* chemberta_with_descriptor: Добавляем к ChemBERTa дескриптор.

Между ноутбуками есть сильное пересечение по коду. Понимаем, что это не очень симпатично, но это обусловлено спецификой работы на colab, где со скриптами и репозиториями работать неудобно.

[Проект на wandb](https://wandb.ai/dimaorekhov/egfr-project) с логами всех экспериментов.

В папке `src/` находится единственный скрипт на R, в котором проводится проверка статистических гипотез.
