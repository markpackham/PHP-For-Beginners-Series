<?php

use Core\App;
// Since Core is a namespace a "\" is used
use Core\Database;

// since we are using "use" we don't need to write Core\Database
$db = App::resolve(Database::class);
$notes = $db->query('select * from notes where user_id = 1')->get();

view("notes/index.view.php", [
    'heading' => 'My Notes',
    'notes' => $notes
]);