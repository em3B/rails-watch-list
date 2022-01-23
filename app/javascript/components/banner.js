import Typed from 'typed.js';



const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ['Drama', 'Action', 'Girl Power', 'Comedy'],
    typeSpeed: 50,
    loop: true,
  });
}

export { loadDynamicBannerText };
