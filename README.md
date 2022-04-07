# Тестовое задание Oblako Group

В процессе выполнения задания предстоит реализовать полноценное full stack приложение «Мои задачи», включающее в себя back end написанный на Ruby и front end на TypeScript, с использованием фреймворков Ruby on Rails и Angular. В результате приложение будет развернуто на Heroku.

## Ход работы

- [x] Этап 1. Инициализация API
- [x] Этап 2. Создание API для списка задач
- [ ] Этап 3. Инициализация front end приложения
- [ ] Этап 4. Создание front end для списка задач

[Результат](https://mysterious-refuge-53705.herokuapp.com/projects)

## Вернуть все проекты с задачами

### Запрос

`GET /projects`

    curl -i -H 'Accept: application/json' https://mysterious-refuge-53705.herokuapp.com/projects

### Ответ

    [{"id":1,"title":"Разработка","todos":[{"id":1,"text":"Задеплоить приложение на heroku","is_completed":true}]},{"id":2,"title":"Семья","todos":[{"id":2,"text":"Купить молоко","is_completed":false},{"id":3,"text":"Заменить масло в двигателе до 23 апреля","is_completed":false},{"id":4,"text":"Отправить письмо бабушке","is_completed":true},{"id":5,"text":"Заплатить за квартиру","is_completed":false},{"id":6,"text":"Забрать обувь из ремонта","is_completed":false}]},{"id":3,"title":"Работа","todos":[{"id":7,"text":"Позвонить заказчику","is_completed":true},{"id":8,"text":"Отправить документы","is_completed":true},{"id":9,"text":"Заполнить отчет","is_completed":false}]},{"id":4,"title":"Прочее","todos":[{"id":10,"text":"Позвонить другу","is_completed":false},{"id":11,"text":"Подготовиться к поездке","is_completed":false}]}]

## Создать новую задачу

### Запрос

`POST /todos`

    curl -i -H 'Accept: application/json' -d 'text=Начать писать frontend на TS &project_id=1&title=Разработка' https://mysterious-refuge-53705.herokuapp.com/todos

### Ответ

    {"id":12,"text":"Начать писать frontend на TS ","is_completed":false,"project_id":1}

## Обновить задачу

`PATCH /projects/<project_id>/todo/<todo_id>`

    curl -i -H 'Accept: application/json' -X PATCH -d 'is_completed=true' https://mysterious-refuge-53705.herokuapp.com/projects/1/todo/1
    

### Ответ

    {"project_id":1,"is_completed":true,"id":1,"text":"Задеплоить приложение на heroku"}
