import { Controller } from "@hotwired/stimulus";


export default class extends Controller {
  static targets = ["nameField", "prepTimeField", "eraField", "countryField", "instructionsField", "imgField", "ingredientInput", "ingredientField", "ingredientQuantityInput", "ingredientQuantityField"]

  connect() {
    // 1. Create new partials for each div(field) that we want to put: name, prep_time, era, country, instructions, ingredients, photo
    // 2. Write the controller so each time a render is called it gets put in the create recipe file (blank page)
    // 3. Put in the HTML the data-action for each div we want to interact
    // 4. ?? Blank field ?? How to insert text in it - swap from empty to the actual div
    // 5. Each time you complete a field, it gets inserted in the other half of the page
  }

  updateName(event) {
    this.nameFieldTarget.innerHTML = event.currentTarget.value
  }

  updatePrepTime(event) {
    const prepTimeHTML = `<h5>Preptime -</h5> ${event.currentTarget.value}`
    this.prepTimeFieldTarget.innerHTML = prepTimeHTML
  }

  updateEra(event) {
    const eraHTML = `<h5>Era -</h5> ${event.currentTarget.value}`
    this.eraFieldTarget.innerHTML = eraHTML
  }

  updateCountry(event) {
    const countryHTML = `${event.currentTarget.value}`
    this.countryFieldTarget.innerHTML = countryHTML
  }

  updateInstructions(event) {
    const instructionsHTML = `<h5>Instructions -</h5>${event.currentTarget.value}`
    this.instructionsFieldTarget.innerHTML = instructionsHTML
  }

  updateIngredients() {
    console.log(this.ingredientInputTargets);
    // Vaciar el HTML donde se display los ingredienten en el show
    this.ingredientFieldTarget.innerHTML = "<h5>Ingredients</h5>"
    // Iteras sobre los ingredientInputs

    this.ingredientInputTargets.forEach((ingredient)=> {
      console.log(ingredient)
      this.ingredientFieldTarget.insertAdjacentHTML("beforeend",`<li class="added-ingredient">${ingredient.selectedOptions[0].innerHTML} | <span data-recipe-form-target="ingredientQuantityField"></span></li>`)

    })

    this.ingredientQuantityInputTargets.forEach((quantity, index) => {
     const field = this.ingredientQuantityFieldTargets[index]
     field.innerHTML = quantity.value

    })
    // y para cada uno, insertar el value en el ingredientField
  }

  readURL(event) {
    const input = event.currentTarget;
    // var input = this.inputTarget

    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = () => {
       this.imgFieldTarget.innerHTML = `<img class="recipe-image-new" src="${reader.result}" alt="Food">`
     }

     reader.readAsDataURL(input.files[0]);
   }
 }


}
