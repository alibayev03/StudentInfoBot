<?php
// Настройки бота
$botToken = "7654529967:AAFmIqOkoUKJ4mIaPHmKJBjuyyYo69SaSc0";
$apiUrl = "https://api.telegram.org/bot$botToken/";

// Подключение к базе данных
$host = "127.0.0.1";
$dbName = "db_students";  // Укажите имя вашей базы данных
$user = "root";
$password = ""; // укажите пароль

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbName", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Ошибка подключения к базе данных: " . $e->getMessage());
}

// Функция для отправки сообщения
function sendMessage($chatId, $text) {
    global $apiUrl;
    $url = $apiUrl . "sendMessage?chat_id=$chatId&text=" . urlencode($text) . "&parse_mode=Markdown";
    file_get_contents($url);
}

// Функция для получения обновлений
function getUpdates($offset = null) {
    global $apiUrl;
    $url = $apiUrl . "getUpdates?timeout=60"; // Timeout позволяет запросам длиться до 60 секунд
    if ($offset) {
        $url .= "&offset=$offset";
    }
    $response = file_get_contents($url);
    return json_decode($response, true);
}

// Обработка обновлений
$offset = 0; // Инициализация переменной offset
while (true) {
    $updates = getUpdates($offset);
    if (!empty($updates['result'])) {
        foreach ($updates['result'] as $update) {
            $chatId = $update["message"]["chat"]["id"];
            $text = trim($update["message"]["text"]);
            $updateId = $update["update_id"];

            // Обновляем offset для получения только новых сообщений
            $offset = $updateId + 1;

            // Обработка команды /start
            if ($text == '/start') {
                $response = "Добро пожаловать! Пожалуйста, введите свой ID или номер паспорта.\n\nПример:\nID: 2301367\nПаспорт: AC1562468";
                sendMessage($chatId, $response);
                continue; // Переход к следующей итерации, чтобы не продолжать обработку
            }

            // Если текст не пустой, проверяем, является ли это ID или паспортом
            if (!empty($text)) {
                // Проверка, если введено число, то это ID, иначе паспорт
                if (is_numeric($text)) {
                    // Проверяем по ID
                    $stmt = $pdo->prepare("SELECT * FROM students WHERE ID = :id");
                    $stmt->bindParam(':id', $text, PDO::PARAM_INT);
                } else {
                    // Проверяем по паспорту
                    $stmt = $pdo->prepare("SELECT * FROM students WHERE Passport = :passport");
                    $stmt->bindParam(':passport', $text, PDO::PARAM_STR);
                }

                $stmt->execute();

                if ($stmt->rowCount() > 0) {
                    $row = $stmt->fetch(PDO::FETCH_ASSOC);
                    // Формируем ответ
                    $response = "Студент найден:\n";
                    $response .= "ФИО: {$row['FIO']}\n";
                    $response .= "Уровень: {$row['LEVEL']}\n";
                    $response .= "Факультет: {$row['FACULTY']}\n";
                    $response .= "Группа: {$row['GROUP']}\n";

                    // Добавление ссылки на группу из базы данных
                    if (!empty($row['group_link'])) {
                        $response .= "Для дальнейшей информации присоединяйтесь к группе: [Ссылка на группу]({$row['group_link']})";
                    } else {
                        $response .= "Ссылка на группу отсутствует.";
                    }

                    sendMessage($chatId, $response);
                } else {
                    sendMessage($chatId, "Студент с указанным ID или номером паспорта не найден.");
                }
            }
        }
    }

    // Пауза между запросами
    sleep(20); // Интервал между запросами в 1 секунду для предотвращения спама
}
?>
