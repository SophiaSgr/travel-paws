import places from 'places.js';

const initAutocomplete = () => {
  const addressPickUp = document.getElementById('pickup');
  const addressDropOff = document.getElementById('dropoff');
  const marker = document.querySelector('form').firstElementChild
  if (addressPickUp) {
    places({ container: addressPickUp });
    const home = document.querySelector('.home-form')
    if (home) {
      // marker.classList.add("algolia-places-marker-right")
    } else {
      marker.classList.add("algolia-places-marker-left")
    }
  }
  if (addressDropOff) {
    places({ container: addressDropOff });
    marker.classList.add("algolia-places-marker-left")
  }
};
export { initAutocomplete };
