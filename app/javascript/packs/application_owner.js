// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
// import * as ActiveStorage from "@rails/activestorage"
// import "channels"

// Rails.start()
// Turbolinks.start()
// ActiveStorage.start()


require("@popperjs/core")
import Cookies from 'js-cookie'

window.Cookies = Cookies;

import "bootstrap"
import "@fortawesome/fontawesome-free/css/all"

import { Tooltip, Popover } from "bootstrap"

// require("../stylesheets/application.scss")

document.addEventListener("turbolinks:load", () => {
    // Both of these are from the Bootstrap 5 docs
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
        return new Tooltip(tooltipTriggerEl)
    })

    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {
        return new Popover(popoverTriggerEl)
    })
})

// CSS
require('/vendor/assets/css/argon.css')
require('/vendor/assets/vendor/nucleo/css/nucleo.css')
require('/vendor/assets/vendor/@fortawesome/fontawesome-free/css/fontawesome.min.css')


// JS
require('/vendor/assets/vendor/jquery/dist/jquery.min.js')
require('/vendor/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')
require('/vendor/assets/vendor/js-cookie/js.cookie.js')
require('/vendor/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js')
require('/vendor/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js')
require('/vendor/assets/js/argon.js')
require('/vendor/assets/js/demo.min.js')
// require('/vendor/assets/vendor/chart.js/dist/Chart.min.js')
// require('/vendor/assets/vendor/chart.js/dist/Chart.extension.js')
