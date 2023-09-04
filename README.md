
[Документация Swift](https://docs.swift.org/swift-book/LanguageGuide/)

# Задачи

**Требование!** Создайте исполняемый пакет и реализуйте решения в нём. Для его создания необходимо вызвать команду swift package init --type executable --name Day00 внутри директории src. Более подробное описание о создании проектов можно прочитать в [документации](https://www.swift.org/getting-started/).

### Задание 0. Новый проект
В Xcode выбираем New Project: 
- Выберите вкладку MacOS
- Выберите Command Line Tool


### Задание 1. Круги на полях
Разработайте математический модуль, который определяет, пересекаются ли окружности.

- Две окружности на координатной плоскости: первая с центром в точке (x1, y1) с радиусом r1, вторая с центром в точке (x2, y2) с радиусом r2.
- Программа считывает координаты и радиус по очереди при помощи командной строки. 
- Программа работает с вещественными числами.
- Программа определяет, пересекаются ли окружности, и выводит это в качестве результата. В случае нахождения одного круга внутри другого она выводит "One circle is inside another". Смотрите пример ниже.
- Программа не завершается с ошибкой при некорректных входных данных. Она выводит "Couldn't parse a number. Please, try again" и повторяет попытку ввода параметра.

| Входные данные | Выходные данные |
| ------ | ------ |
| 0<br/>  0 <br/> 3 <br/> 4 <br/> 4 <br/> 3 <br/> | The circles intersect |

### Задание 2. Простые числа
Разработайте модуль для генерации чисел из заданного по следующим правилам:
- Первое число эквивалентно единицам
- Второе число создается из единиц и количества десятков
- Третье число - из единиц, десятков и сотен
- И так далее. Например, 4835 создаст следующее множество чисел: 5, 53, 538 and 5384.  
Затем программа производит действия, описанные выше, с числом:
- Начиная с наивысшего порядка lower (4, 48, 483, 4835)
- Начиная с наинизшего порядка higher (5, 53, 538, 5384)
- Выбор порядка реализовать при помощи аргумента программы (lower, higher; lower - по умолчанию)

Программа работает с целочисленными значениями integer и прекращает работу при неправильных входных переменных. Она должна бросить любую ошибку для остановки программа, например `throw Exception("message")`.

| Входные данные | Выходные данные |
| ------ | ------ |
| lower<br/> 352 | 3 <br/> 35 <br/> 352 |


### Задание 3. Термометр 
Наиболее комфортная температура для человека варьируется в зависимости от сезона: от 22 до 25°C летом и от 20 до 22°C зимой. Напишите программу, которая, учитывая текущий сезон, определяет и выводит комфортную температуру и разницу с текущей.
- Температурный сенсор работает со шкалой Цельсия. Входные данные представляют собой вещественные числа.
- Программа может выводить результаты в трех шкалах: Цельсий, Кельвин и Фаренгейт. Шкала по умолчанию — Цельсий, но входные данные должны быть указаны только в градусах Цельсия.
- Программа не должна завершаться с ошибкой при некорректных данных. Вместо этого она должна вывести сообщение об ошибке и предложить повторно ввести данные. Например - "Incorrect input. Enter a temperature:".
- Дополнительно, программа предлагает регулировать температуру, если она не удовлетворяет комфортным значениям.
- Порядок ввода данных:
  1. шкала измерения температуры, которую будет использовать программа для выходных значений;
  2. время года (S - лето, W - зима);
  3. текущая температура в градусах цельсия.

| Входные данные | Выходные данные |
| ------ | ------ |
| Celsis<br/>  W <br/> 17 <br/>  | The temperature is 17 ˚C <br/> The comfortable temperature is from 22 to 25 ˚C. <br/>Please, make it warmer by 5 degrees.|



### Задание 4. Слишком мокро
Комфортная влажность для человека составляет от 30% до 60% летом и от 30% до 45% зимой. В задаче 4 необходимо добавить параметры комфортной влажности для обоих сезонов. После указания температуры необходимо ввести значение влажности и определить, является ли оно комфортным. Если влажность не удовлетворяет требованиям, то посоветуйте уменьшить или увеличить ее на определенный процент.

| Входные данные | Выходные данные |
| ------ | ------ |
| Celsis<br/>  W <br/> 17 <br/> 35 <br/>  | The temperature is 17 ˚C <br/> The comfortable temperature is from 22 to 25 ˚C. <br/>Please, make it warmer by 5 degrees. <br/> The comfortable humidity is from 30% to 45% <br/>The humidity is comfortable|



### Бонусное задание 5. Круги на полях - 2
В задаче 2, если окружности соприкасаются или пересекаются, выведите координаты точек касания и пересечения.

### Бонусное задание 6. Речевой модуль
**Требование!** Не используйте сторонние библиотеки для преобразования числовых значений в словесно-строковые.

В детстве многие, кто любит фантастику и механизмы, мечтали об устройстве, которое могло бы понимать слова, принимать голосовые команды и выполнять соответствующие действия. Теперь голосовое управление стало привычным форматом общения с компьютером, облегчая нашу жизнь и делая это общение более естественным. Нашему умному калькулятору непременно нужен модуль-посредник, переводящий распознанную речь на язык, понятный компьютеру.

Разработать речевой модуль, который считывает целые числа в цифровом формате и переводит их в числа словами.
- Модуль должен принимать числа до миллиона включительно (положительные и отрицательные)
- Модуль получает целое число в цифровом формате и печатает его словами на английском. Это означает, что набор слов, разделенных пробелом, составляет число. Пример: one-hundred two
- Процесс ввода-вывода числа повторяется до тех пор, пока пользователь не напечатает «exit».
- При запуске, перед вводом, модуль печатает "The program is running. Enter a number or type "exit" to stop:"
- На втором числе и далее, перед вводом, модуль выводит "Enter a number:"
- Каждую 5-ю итерацию, перед вводом, модуль печатает "Enter a number or type "exit" to stop:"
- Если введены неверные данные (слово, символ или неподдерживаемое число), модуль выводит "Incorrect format, try again.\nEnter a number:" или "The number is out of bounds, try again.\nEnter a number:" и ожидает другого ввода

_Пример_
```
The program is running. Enter a number or type "exit" to stop:
yes
Incorrect format, try again

Enter a number:
34
thirty-four

Enter a number:
exit

Bye!
```
