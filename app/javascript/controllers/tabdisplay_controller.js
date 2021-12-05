import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['tabproject', 'texttab'];

  connect() {
    // console.log("yo")
    // console.log(this.tabprojectTargets);
  }

  change(){
    let selected = event.currentTarget.getAttribute("href");
    event.currentTarget.classList.add("selectedtab")
    this.texttabTargets.forEach(element => {
      if (element.getAttribute("href") !== selected) {
        element.classList.remove("selectedtab");
      }
    });
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
