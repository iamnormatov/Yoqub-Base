import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimul.us development experience
application.debug = false
window.Stimulus   = application

export { application }
