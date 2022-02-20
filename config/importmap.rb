# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "home", to: "controllers/home.js", preload: true
pin "jquery.min.js", to: "controllers/jquery.min.js", preload: true
pin "owl.carousel.min.js", to: "controllers/owl.carousel.min.js", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
