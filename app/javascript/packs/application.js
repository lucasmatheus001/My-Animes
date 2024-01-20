// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "@fortawesome/fontawesome-free/css/all"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "../src/header"
import "../src/search"
import 'bootstrap'
import $ from 'jquery';
import "@hotwired/turbo-rails";
import "controllers";
global.$ = $;
global.jQuery - $;

Rails.start()
Turbolinks.start()
ActiveStorage.start()
