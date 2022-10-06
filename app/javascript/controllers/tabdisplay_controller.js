import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['tabproject', 'texttab'];

  connect() {
 }

  change(){
    console.log("That's it");
  }
}


// const tabElements = [
//   {
//     id: 'profile',
//     triggerEl: document.querySelector('#profile-tab-example'),
//     targetEl: document.querySelector('#profile-example')
//   },
//   {
//     id: 'dashboard',
//     triggerEl: document.querySelector('#dashboard-tab-example'),
//     targetEl: document.querySelector('#dashboard-example')
//   },
//   {
//     id: 'settings',
//     triggerEl: document.querySelector('#settings-tab-example'),
//     targetEl: document.querySelector('#settings-example')
//   },
//   {
//     id: 'contacts',
//     triggerEl: document.querySelector('#contacts-tab-example'),
//     targetEl: document.querySelector('#contacts-example')
//   }
// ];
