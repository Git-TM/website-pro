import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['lewagon', 'misterauto'];

  connect() {
 }

  change(){
    let selected = event.currentTarget.id;
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
console.log(event.currentTarget.id)
// options with default values
const options = {
  defaultTabId: 'settings',
  activeClasses: 'text-blue-600 hover:text-blue-600 dark:text-blue-500 dark:hover:text-blue-400 border-blue-600 dark:border-blue-500',
  inactiveClasses: 'text-gray-500 hover:text-gray-600 dark:text-gray-400 border-gray-100 hover:border-gray-300 dark:border-gray-700 dark:hover:text-gray-300',
  onShow: () => {
    console.log('tab is shown');
  }
};
const tabElements = [
  {
    id: 'misterauto',
    triggerEl: document.querySelector('#misterauto-tab-example'),
    targetEl: document.querySelector('#misterauto-example')
  },
  {
    id: 'lewagon',
    triggerEl: document.querySelector('#lewagon-tab-example'),
    targetEl: document.querySelector('#lewagon-example')
  }
];
const tabs = new Tabs(tabElements, options);
tabs.show('misterauto');
