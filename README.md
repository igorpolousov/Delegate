# Delegate
#miniApps Delegate data transfer

App Delegate Data Transfer

  Один из способов передать данные между классами и контроллерами. 

  Состоит из 6 шагов, которые должны быть добавлены к классам между которыми требуется передача данных. 

  В данном примере будет производиться передача строки string type от  SecondViewController к FirstViewController. Так же можно передать любой необходимый тип данных, а так же любую коллекцию типа массив или словарь и так далее. 

1. Добавить протокол, к в котором будет функция описывающая передачу данных. Добавляется в контроллер из которого будет осуществляться передача данных. 

2. В контроллере из которого будет осуществляться передача данных добавить переменную delegate с типом протокола который был создан

3. В коде, где будут получены данные, которые необходимо передавать другому контроллеру, нужно вызвать функцию переменной delegate, чтобы указать что нужно передать

4. Принимающий класс(контроллер) нужно сделать соответствующим созданному протоколу

5. Чтобы полностью соответствовать протоколу нужно добавить функцию протокола и в жатой функции указать переменную которая буде принимать значение из передающего контроллера

6. В переходе к SecondViewController указываем delegate = self


Этапы изготовления примера:

1. Сделали новый проект
2. StoryBoard - сделали 2 view controller
3. На первый View добавили два Label: First view controller, Received data и одну Button: Get data
4. На второй View добавили Label: Second View Controller, Text Field: attributes inspector placeholder: Enter text to be transferred, Button: Send data
5. Сделали два файла Cocoa touch class наследниками класса UIViewController. Первый назвали FirstViewController и  второй SecondViewController. 
6. Делаем outlets для каждого view controller
7. В файл SecondViewController  добавляем: протокол
￼<img width="470" alt=" STEP 1" src="https://user-images.githubusercontent.com/78177975/157416713-1cb1def7-7be9-4a43-894f-017a61bb8318.png">

8. Добавляем переменную Delegate 
￼ <img width="382" alt="var delegate MyDataSendingDelegateProtocol" src="https://user-images.githubusercontent.com/78177975/157416783-1f6972fa-f256-4dbc-9e8d-d54e23a31f72.png">

9.  Добавляем передачу данных в кнопку SendData:
￼ <img width="561" alt="self delegate sendDataToFirstViewController(dataToBeSend  Oops)" src="https://user-images.githubusercontent.com/78177975/157416848-a395cace-8789-480c-a6f5-1a2925b4a452.png">

10. В FirstViewController добавляем соответствие протоколу:
￼ <img width="615" alt="Screenshot 2022-03-09 at 12 37 13" src="https://user-images.githubusercontent.com/78177975/157416951-702d2e7f-4596-40bd-aae9-8214f75629e1.png">

11.  Для соответствия протоколу в FirstViewController добавляем метод:
￼ <img width="446" alt="func sendDataToFirstViewController(_ myData String)" src="https://user-images.githubusercontent.com/78177975/157417002-2dc7f8c6-1b67-4c04-9812-4bd44b6a5848.png">

12.  В переходе на второй view controller указываем: 
￼ <img width="716" alt="Screenshot 2022-03-09 at 12 45 13" src="https://user-images.githubusercontent.com/78177975/157417027-0283cf35-2cb5-467c-8886-3701d00bb706.png">

￼ 
![First view controller](https://user-images.githubusercontent.com/78177975/157417935-061e4e51-7cb1-43cf-aeff-fc857f48230a.png) 
![First view controller](https://user-images.githubusercontent.com/78177975/157418019-17903c8b-240d-4171-a026-28db03a028c7.png)
![First view controller text](https://user-images.githubusercontent.com/78177975/157418119-22ad93d8-6ce8-4500-bca6-03bdfb0b8987.png)



