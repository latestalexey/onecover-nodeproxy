Процедура ЗаписатьВJson(ДанныеДляСохранения, ФайлРезультат) Экспорт

	ЗаписьJson = Новый ЗаписьJson();
	ЗаписьJson.ОткрытьФайл(ФайлРезультат);
	ЗаписатьJSON(ЗаписьJson, ДанныеДляСохранения);
	ЗаписьJson.Закрыть();

КонецПроцедуры	

Процедура ПодкотовитьКаталоги(ПутьКФайлу, Разделитель = "\") Экспорт

	ЧастиПутей =  СтрРазделить(ПутьКФайлу, Разделитель);

	ПутьПроверки = ЧастиПутей[0];
	Для Ном = 1 По ЧастиПутей.ВГраница() - 1 Цикл

		ПутьПроверки = ПутьПроверки + Разделитель + ЧастиПутей[Ном];

		Файл  = Новый Файл(ПутьПроверки);

		Если НЕ Файл.Существует() Тогда
			СоздатьКаталог(ПутьПроверки);
		КонецЕсли;

	КонецЦикла;

КонецПроцедуры	