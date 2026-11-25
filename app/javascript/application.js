// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "jquery";
import "script";
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"

document.getElementById('room_selected_id').addEventListener('change', function() {
    alert("test");
});