import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "popup" ]

  connect() {
    console.log('connected')
  }

  alert() {
    alert("alert")
  }


  resize() {
    this.popupTarget.classList.toggle("d-none");

  }
}
