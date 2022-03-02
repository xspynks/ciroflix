# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "setup", to: "app/javascript/setup.js", preload: true
pin "jquery.min.js", to: "app/javascript/jquery.min.js", preload: true
pin "owl.carousel.min.js", to: "app/javascript/owl.carousel.min.js", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
