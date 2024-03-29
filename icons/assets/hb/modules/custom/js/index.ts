interface icon {
    name: string,
    vendor: string,
    url: string,
}

(() => {
    let icons: Array<icon> = [];

    let timer = 0

    fetch('/icons.json')
        .then((resp) => resp.json())
        .then((data) => {
            icons = data
        })
        .then(() => {
            search()
        })

    const input = document.querySelector("#icon-search") as HTMLInputElement
    input?.addEventListener("keyup", () => {
        // remove the delay search action if user is still typing.
        clearInterval(timer)
        // create a delay search action when typing.
        timer = setInterval(() => {
            search()
        }, 300)
    })

    const vendor = document.querySelector("#icon-vendor") as HTMLSelectElement
    vendor?.addEventListener("change", () => {
        search()
    })

    let lock = false
    const container = document.querySelector('.hugo-mod-icons')
    const counter = document.querySelector('.icon-count') as HTMLElement
    const search = () => {
        clearInterval(timer)

        if (!container || lock) {
            return
        }
        lock = true

        const q = input.value.trim()
        const v = vendor.value.trim()

        const items = icons.filter((icon) => icon.name.indexOf(q) >= 0 && icon.vendor.indexOf(v) === 0)
        let s = ''
        for (let i = 0; i < Math.min(items.length, 512); i++) {
            const icon = items[i]
            s += `<li class="icon col mb-4">
  <div class="icon-img-container bg-body-secondary d-flex align-items-center justify-content-center px-1 px-md-2 py-3 py-md-4">
    <img class="icon-img" src="${icon.url}" loading="lazy" alt="${icon.name}">
  </div>
  <div class="text-muted text-center mt-2 user-select-all text-break fw-bold">${icon.vendor}</div>
  <div class="text-muted text-center mt-1 user-select-all text-break">${icon.name}</div>
</li>`
        }
        container.innerHTML = s
        counter.innerHTML = items.length + ''
        lock = false
    }
})()
