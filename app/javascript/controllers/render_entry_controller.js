import { Controller } from "@hotwired/stimulus"

export default class RenderEntry extends Controller {
  static targets = ["select", "target"]
    
  connect() {
    this.element.textContent = "Hello World!"
  }
}