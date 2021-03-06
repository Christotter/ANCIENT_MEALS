import { Controller } from "@hotwired/stimulus"
import $ from "jquery";


export default class extends Controller {
  static targets = ["list", "input"]

  connect() {
    console.log(this.listTarget)
    console.log(this.formTarget)
    this.select2Input = $(this.inputTarget)
    // Add jquery event listener to select2 input to call search recipes on change event

    $(this.select2Input).on("change", () => {
      this.searchRecipes();
    });
  }

  searchRecipes() {
    // this.select2Input.val() => [1, 2, 4]
    const searchValues = this.select2Input.val().map((value) => {
      return ["ingredients[]", value]
    })
    const searchQueryString = new URLSearchParams(searchValues).toString();

    fetch(`/recipes?${searchQueryString}`, {
      headers: { "Accept": "application/json" } })
        .then((response) => response.json())
        .then(data => {
          this.listTarget.outerHTML = data.recipes_list_html;
        })

    // recipes?ingredients[]=3&ingredients[]=5
    // Make fetch reques to get list of recipes

  }
}
