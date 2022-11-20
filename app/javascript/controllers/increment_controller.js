import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["counter"]

  increment(e) {
    e.preventDefault();
    const currentCount = +this.counterTarget.innerText.split(" ")[0];

    this.counterTarget.innerText = `${currentCount + 1} incremented with js`;
  }
}
