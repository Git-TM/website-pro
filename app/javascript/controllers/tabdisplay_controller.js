import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['tabproject', 'texttab'];

  connect() {
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


const tabElements = [
  {
    id: 'profile',
    triggerEl: document.querySelector('#profile-tab-example'),
    targetEl: document.querySelector('#profile-example')
  },
  {
    id: 'dashboard',
    triggerEl: document.querySelector('#dashboard-tab-example'),
    targetEl: document.querySelector('#dashboard-example')
  },
  {
    id: 'settings',
    triggerEl: document.querySelector('#settings-tab-example'),
    targetEl: document.querySelector('#settings-example')
  },
  {
    id: 'contacts',
    triggerEl: document.querySelector('#contacts-tab-example'),
    targetEl: document.querySelector('#contacts-example')
  }
];
