import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output" ]

  connect() {

  }

  alert() {
    alert("alert")
  }


  resize() {
    var popup = document.getElementByClass("img-food");
    popup.classList.toggle("img-food-popup");

  }
}
