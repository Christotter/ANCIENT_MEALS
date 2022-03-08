import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log(this.buttonTarget)
  }

  alert() {
    alert("alert")

  }
  rateThis(event){
    this.buttonTarget.click()
  }

  goToForm(event){
    // will get data-number="THIS THING"
    const rating = parseInt(event.target.dataset.number)
    const id = `user_rating_vote_${rating}`;
    const elementVote = document.getElementById(id)
    elementVote.click()

  }

  disconnect() {

  }
}
