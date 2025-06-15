import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.element.setAttribute("open", "");

    setTimeout(() => {
      this.close();
    }, 5000);
  }

  close() {
    this.element.removeAttribute("open");
    this.element.setAttribute("aria-hidden", "true");
    setTimeout(() => {
      this.element.remove();
    }, 300);
  }
}
