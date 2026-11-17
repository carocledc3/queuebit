import { Application } from "@hotwired/stimulus"
import Cocooned from '@notus.sh/cocooned'
const application = Application.start()
Cocooned.start()
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
