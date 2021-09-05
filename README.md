
# Readme

  

## Test Koşumu

- tasks.robot dosyası çalıştırılır. VS Code eklentisi olan Robocorp'un Robocorp:Run Robot komutu ile testleri çalıştırıyorum.
- tasks.robot dosyasının içerisinde bulunan ${runType} parametresi testlerin local bilgisayarda mı yoksa docker container üzerinden mi çalışacağını belirler.
- ${runType} parametresi CONTAINER veya LOCAL değerlerini alabilir. 
	- CONTAINER seçilmesi durumunda Test Suite Setup adımında docker-compose.yaml dosyasında bulunan konfigürasyona   göre selenium grid, chrome ve firefox container'ları otomatik olarak ayağa kalkmaktadır.
	- Test koşum esnasında http://localhost:4446/grid/console adresinden selenium grid ve bağlı container'lar görülebilir.
	- LOCAL seçilmesi durumunda ise çalıştırıldığı bilgisayardaki chrome browser üzerinden koşmaktadır. chrome driver Drivers/chromedriver pathi altındadır. chromedriver versiyonu 92 dir.
Çalıştırılmak istenen bilgisayardaki chrome browser versiyonuna göre değiştirilerek, testler çalıştırılabilir.

## Test Data

-	Runtime esnasında TestData/data.json dosyasından okunmaktadır. dataP.py adlı python dosyasındaki method sayesinde senaryolar jsonpath bilgisi kullanarak, istenilen dataları kullanabilmektedir.
-	Data güvenliği için bu python dosyasında password gibi hassas veriler maskeleme algoritmaları ile maskelenebilir.
-	Döngü ile kullanıldığında, testler tüm datalar için çalıştırılarak, tam bir Data Driven Test oluşturulabilir.

## POM
-	Locators /Locators altında bulunmaktadır.
-	Sayfa içerisinde yapılan tüm işlemler /Resources altındaki Page objelerinde bulunmaktadır.
-	Test dosyaları /TestCases klasörü altındadır.
-	/TestCases/baseTest.robot altında, Test Suite Setup/Teardown ve Test Setup,Teardown işlemleri bulunmaktadır. Bunların yanısıra Wait And Click gibi özel cümleler de bu dosya içerisindedir.

## Reports
-	/Reports altındadır son raporlar incelenebilir.