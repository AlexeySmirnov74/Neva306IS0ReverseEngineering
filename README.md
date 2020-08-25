# Neva306 IS0 Reverse Engineering
Электросчетчик НЕВА 306 IS0 Трехфазный. Изменение показаний в микросхеме памяти

# Что нужно
1. Разобрать счетчик (снять пластиковую оболочку и все пломбы)
2. [Программатор CH341Pro](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/ch341a.jpg "Программатор CH341Pro")
3. [Datasheet AT24C02C](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/DOCS/AT24C02C-PUM-Atmel-datasheet.pdf "Datasheet AT24C02C")
3. [AutoIT](https://www.autoitscript.com/site/wp-content/uploads/2013/02/download_autoit_106x51@2x.png "AutoIT") & [SciTE](https://www.autoitscript.com/cgi-bin/getfile.pl?../autoit3/scite/download/SciTE4AutoIt3.exe "SciTE")
4. Паяльник
5. [Провода Dupont соединительные (для Arduino)](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/40PCS-Dupont-wire-jumper-cables-20cm-2.jpg "Провода Dupont соединительные (для Arduino)")

# Сборка
Счетчик не должен быть подсоединен к сети. Питать процессор счетчика и микросхему памяти мы будем от программатора. Начинаем паять по схеме, представленной ниже:


![Схема сборки для считывания данных из чипа электросчетчика НЕВА 306](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/PinOutCh341a-Neva306ISO.fw.png "Схема сборки для считывания данных из чипа электросчетчика НЕВА 306")


Вот как это вышло у меня:

![Схема подключения](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/begin.jpg "Схема подключения")

Результат после прошивки:

![Результат после прошивки](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/result.jpg "Результат после прошивки")

# Что можно было бы сделать дальше
Добавить wi-fi или bluetooth для удаленного управления (заморозка, сброс, увеличение, уменьшение) значениями.

# Какие гипотезы не подтвердились
Изменить количество импульсов (800/1600 и т.д.) в чипе нельзя. Их там просто нет. 
В чипе не хранится разбивка значений по фазам.
Пьезоэлемент от зажигалки визуально может влиять только если корпус вскрыт. Но никакого сбоя при нескольких десятках попытках с пьезо не было. При закрытом корпусе никакого влияния он не оказывает. 
Катушка ![Tesla](https://alexeysmirnov74.github.io/Neva306IS0ReverseEngineering/Images/DC-12-30-ZVS-Tesla-flyback-driver-SGTC-Marx.jpg "Tesla") с длиной дуги до 10 см также не влияет при закрытом корпусе. Дуга не может пройти сквозь корпус и выбить микросхему. Слишком велико расстояние. 

Ребят, я честно пытался разными способами :)

Выводы: В собранном корпусе счетчик надежно защищен от каких-либо электромагнитных воздействий. На это влияет ширина пластика и 3D сборка платы. 
