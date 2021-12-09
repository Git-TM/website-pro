// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
});







document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    document.querySelector(this.getAttribute('href')).scrollIntoView({
      behavior: 'smooth'
    });
  });
});

const height = (elem) => {

  return elem.getBoundingClientRect().height

}

const distance = (elemA, elemB, prop) => {

  const sizeA = elemA.getBoundingClientRect()[prop]
  const sizeB = elemB.getBoundingClientRect()[prop]

  return sizeB - sizeA

}

const factor = (elemA, elemB, prop) => {

  const sizeA = elemA.getBoundingClientRect()[prop]
  const sizeB = elemB.getBoundingClientRect()[prop]

  return sizeB / sizeA

}

document.querySelectorAll('.card').forEach((elem) => {

  const head = elem.querySelector('.card__head')
  const image = elem.querySelector('.card__image')
  const author = elem.querySelector('.card__author')
  const body = elem.querySelector('.card__body')
  const foot = elem.querySelector('.card__foot')

  elem.onmouseenter = () => {

    elem.classList.add('hover')

    const imageScale = 1 + factor(head, body, 'height')
    image.style.transform = `scale(${imageScale})`

    const bodyDistance = height(foot) * -1
    body.style.transform = `translateY(${bodyDistance}px)`

    const authorDistance = distance(head, author, 'height')
    author.style.transform = `translateY(${authorDistance}px)`

  }

  elem.onmouseleave = () => {

    elem.classList.remove('hover')

    image.style.transform = `none`
    body.style.transform = `none`
    author.style.transform = `none`

  }

})

import "controllers"
