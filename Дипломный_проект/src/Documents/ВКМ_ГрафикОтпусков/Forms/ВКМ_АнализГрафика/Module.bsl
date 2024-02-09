
&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	Адрес = ВладелецФормы.ВыгружаемТЧОтпускаСотрудников();
	ВКМ_ОтпускаСотрудников = ПолучитьИзВременногоХранилища(Адрес);
	
    ВКМ_Диаграмма.Очистить();
	ВКМ_Диаграмма.Обновление = Ложь;
	
	Для Каждого СтрокаТЧ Из ВКМ_ОтпускаСотрудников Цикл
		
	Точка = ВКМ_Диаграмма.УстановитьТочку(СтрокаТЧ.ВКМ_Сотрудник);
	Серия = ВКМ_Диаграмма.УстановитьСерию("Отпуск");
	Значение = ВКМ_Диаграмма.ПолучитьЗначение(Точка, Серия);
	
	ПериодДГ = Значение.Добавить();
	ПериодДГ.Начало = СтрокаТЧ.ВКМ_ДатаНачала;
	ПериодДГ.Конец = СтрокаТЧ.ВКМ_ДатаОкончания;
	
	КонецЦикла;
	ВКМ_Диаграмма.Обновление = Истина;
	
	
КонецПроцедуры
