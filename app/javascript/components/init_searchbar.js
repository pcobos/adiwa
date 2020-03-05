const initSearchbar = () => {
  const wrapper = document.querySelector('.search-dropdown-wrapper')

  if (wrapper) {
    const input = wrapper.querySelector('.search-input')
    const menu = wrapper.querySelector('.search-dropdown-menu')

    input.addEventListener("focus", ()  => {
      menu.classList.add("active")
    })

    input.addEventListener("blur", ()  => {
      menu.classList.remove("active")
    })
  }

}

export { initSearchbar }
