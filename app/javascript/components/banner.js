import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["projets", "applications", "sites web"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
