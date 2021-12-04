import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['tabproject'];

  connect() {
    // console.log("yo")
    // console.log(this.tabprojectTargets);
  }

  change(){
    setTimeout(() => {
      this.tabprojectTargets.forEach(element => {
        if (element.classList.contains("active")) {
          element.classList.remove("d-none");
          element.classList.add("show");
        } else if (element.classList.contains("active") == false) {
          element.classList.add("d-none");
          element.classList.remove("show");
        }
      });
    }, 100);
  }
}
