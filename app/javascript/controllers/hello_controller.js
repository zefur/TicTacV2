import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    super.connect();
    this.element.textContent = "Hello World!";
  }
}
