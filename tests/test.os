 #Использовать ".."

Парсер = Новый parserV8i;
Парсер.УстановитьФайл("tests/ibases.v8i");
СписокБаз = Парсер.ПолучитьСписокБаз();

Для каждого Стр Из СписокБаз Цикл
    База = Стр.Значение;
    Сообщить(База.Name);
КонецЦикла;

Сообщить("-----------------");
Парсер.УстановитьФайл();
СписокБаз = Парсер.ПолучитьСписокБаз();

Для каждого Стр Из СписокБаз Цикл
    База = Стр.Значение;
    Сообщить(База.Name);
КонецЦикла;

Чистильщик = Новый CashCleaner();
Чистильщик.УстановитьПарсер(Парсер);
// Чистильщик.ОчиститьВесьКеш();
Прм = Новый Структура;
Прм.Вставить("Путь",Чистильщик.ПутьСоСлешем("""" +"C:\work\db\hfl\fin-old"+ """"));
Результат = Чистильщик.ОчиститьКешБазы(Прм);
Если Результат = Истина Тогда
    Сообщить("Очищен кеш: " + Прм.Путь);
Иначе
    Сообщить("Возникли проблемы при очистке кеша: " + Прм.Путь);
КонецЕсли;