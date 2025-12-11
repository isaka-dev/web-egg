<?php
// Get the PHP version
$phpVersion = phpversion();
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сайт готов</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white min-h-screen flex flex-col">
    <!-- ISAKA WEB HOSTING -->
    <main class="flex-1 flex flex-col items-center justify-center p-4 text-center">
        <div class="space-y-6 max-w-2xl">
            <h1 class="text-4xl md:text-6xl font-bold">
                Веб сервер установлен.
            </h1>
            
            <p class="text-xl md:text-2xl text-gray-300">
                Ваш веб сервер успешно установлен!
            </p>
        </div>
    </main>

    <footer class="p-6 text-center border-t border-gray-800">
        <a href="https://isaka.su" 
           target="_blank" 
           class="text-lg hover:text-blue-400 transition-colors">
            Isaka
        </a>
        <p class="text-gray-500 text-sm mt-2">© 2025</p>
    </footer>
</body>
</html>
