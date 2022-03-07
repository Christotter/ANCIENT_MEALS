import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  connect() {

  }

  alert() {
    alert("alert")
    this.disabled=true;
    console.log(this)
  }


  disconnect() {

  }
}
