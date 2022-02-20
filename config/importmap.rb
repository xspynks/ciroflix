# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "home", to: "home.js", preload: false
pin "jquery.min.js", to: "jquery.min.js", preload: false
pin "owl.carousel.min.js", to: "owl.carousel.min.js", preload: false
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
