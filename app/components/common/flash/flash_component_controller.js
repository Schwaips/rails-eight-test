import { Controller } from "@hotwired/stimulus";
// TODO correct the import of this controller in the importmap and stimulus (index.js)
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
